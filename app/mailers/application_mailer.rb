class ApplicationMailer < ActionMailer::Base
  default to: "info@movies.com",from: 'info@movies.com'
  layout 'mailer'
end
