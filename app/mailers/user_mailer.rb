class UserMailer < Devise::Mailer
  def confirmation_instructions(record, token, opts={})
    headers["Custom-header"] = "Bar"
    opts[:subject] = 'devise2@domain.com'
    opts[:from] = 'devise2@domain.com'
    opts[:reply_to] = 'devise2@domain.com'
    super
  end
end
