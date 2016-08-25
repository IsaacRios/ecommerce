$(document).on "ajax:beforeSend", "#emails-form", ()->
	$("#email-info").html "¡Tu correo ha sido procesado!"
$(document).on "ajax:success", "#emails-form", (e,data,xhr)->
	$(this).slideUp
	$("email-info").html "Correo registrado exitosamente"
$(document).on "ajax:error", "#emails-form", (e,data, xhr)->
	$("#email-info").html data.responseJSON.email[0]