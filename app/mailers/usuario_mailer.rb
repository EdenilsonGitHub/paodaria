class UsuarioMailer < ApplicationMailer
    default from: 'suportepaodaria@gmail.com'
 
    def welcome_email
        @usuario = params[:usuario]
        @url  = 'http://example.com/login'
        mail(to: 'edenilson@etica-ti.com.br', subject: 'Bem vindo ao pãodaria!')
    end
end
