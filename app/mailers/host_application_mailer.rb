class HostApplicationMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.host_application_mailer.application.subject
  #
  def application(application)
    @host_application = application
    @user = @host_application.user

    mail to: @user.email,
         subject: "#{@user.first_name}'s Host application for Outxplore"
  end
end
