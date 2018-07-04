package kr.co.bitbook.login.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bitbook.common.db.MyAppSqlConfig;
import kr.co.bitbook.domain.Member;
import kr.co.bitbook.mapper.LoginMapper;

@WebServlet("/bitbook/code")
public class FindEmailCode extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		email(request, response);
	}

	public int Number(int num) {
		String numStr = "1";
		String plusNumStr = "1";

		for (int i = 0; i < num; i++) {
			numStr += "0";

			if (i != num - 1) {
				plusNumStr += "0";
			}
		}

		Random random = new Random();
		int result = random.nextInt(Integer.parseInt(numStr)) + Integer.parseInt(plusNumStr);

		if (result > Integer.parseInt(numStr)) {
			result = result - Integer.parseInt(plusNumStr);
		}

		return result;

	}

	public void email(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LoginMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(LoginMapper.class);
		String host = "smtp.naver.com";
		final String user = "bitbook";
		final String password = "admin1234";
		String number = "";
		String to = request.getParameter("email");
		Member m = mapper.selectMemberCode(to);
		System.out.println(to);
		if (m.getMemEmail().equals(to) == false || m.getMemEmail() == null ) {
			System.out.println("올바르지 않아요");
			return;
		} else if(m.getMemEmail().equals(to)){
			// Get the session object
			Properties props = new Properties();
			props.put("mail.smtp.host", host);
			props.put("mail.smtp.auth", "true");

			Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(user, password);
				}
			});

			// Compose the message
			try {
				MimeMessage message = new MimeMessage(session);
				message.setFrom(new InternetAddress(user));
				message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

				// Subject
				message.setSubject("이메일 인증코드입니다.");

				int num = Number(6);
				number = String.valueOf(num);
				// Text
				message.setText(number);

				// send the message
				Transport.send(message);
				System.out.println("message sent successfully...");
				PrintWriter out = response.getWriter();
				out.write(number);
				out.close();

			} catch (MessagingException e) {
				e.printStackTrace();
			}

		}
	}
}