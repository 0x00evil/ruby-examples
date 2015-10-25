require 'net/smtp'

msgstr = <<END_OF_MESSAGE
From: Tony <from@address.com>
To: lala <to@address.com>
Subject: text message

This is a test message.
END_OF_MESSAGE

Net::SMTP.start('smtp.server.com',25,'mail.domain.com','from_email_address','password',:login) do |smtp|
  smtp.send_message msgstr,'from_email_address','to_email_address'
end
