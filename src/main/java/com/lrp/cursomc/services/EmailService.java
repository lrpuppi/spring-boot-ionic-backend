package com.lrp.cursomc.services;

import org.springframework.mail.SimpleMailMessage;

import com.lrp.cursomc.domain.Cliente;
import com.lrp.cursomc.domain.Pedido;

public interface EmailService {

	void sendOrderConfirmationEmail(Pedido obj);

	void sendEmail(SimpleMailMessage msg);

	void sendNewPasswordEmail(Cliente cliente, String newPass);
	
}
