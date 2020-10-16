# Preview all emails at http://localhost:3000/rails/mailers/host_application_mailer
class HostApplicationMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/host_application_mailer/application
  def application
    application = HostApplication.last
    HostApplicationMailer.application(application)
  end

end
