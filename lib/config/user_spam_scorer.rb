# The DEFAULT_* values defined in lib/user_spam_scorer.rb will still apply
# unless you override their key in this optional file.
#
# Unfortunately at this time you can't override the regular expressions defined
# for DEFAULT_SPAM_NAME_FORMAT or DEFAULT_SPAM_ABOUT_ME_FORMAT.

user_spam_scorer:
  currency_symbols:
    - £
    - $
    - €
    - ¥
    - ¢
  suspicious_domains:
    - mail.ru
    - temp-mail.de
    - tempmail.de
    - shitmail.de
    - yopmail.com
    - yandex.com
  spam_domains:
    - 7x.cz
    - allemaling.com
    - bk.ru
    - brmailing.com
    - businessmailsystem.com
    - checknowmail.com
    - colde-mail.com
    - consimail.com
    - continumail.com
    - contumail.com
    - emailber.com
    - grow-mail.com
    - inbox.ru
    - inemaling.com
    - inmailing.com
    - itemailing.com
    - itmailing.com
    - kod-emailing.com
    - kod-maling.com
    - kodemailing.com
    - kodmailing.com
    - left-mail.com
    - list.ru
    - mabermail.com
    - mailphar.com
    - out-email.com
    - semi-mile.com
    - sin-mailing.com
    - sinemailing.com
    - sinmailing.com
    - takmailing.com
    - themailemail.com
    - visitinbox.com
    - webgarden.com
    - webgarden.cz
    - wgz.cz
    - wowmailing.com
  suspicious_user_agents:
    - curl
  suspicious_ip_ranges:
    - 127.0.0.0/8
  spam_name_formats:
    - !ruby/regexp '/\A.*bitcoin.*\z/i'
    - !ruby/regexp '/\A.*currency.*\z/i'
    - !ruby/regexp '/\A.*support.*\z/i'
    - !ruby/regexp '/\A.*customer.*service.*\z/i'
    - !ruby/regexp '/\A.*customer.*care.*\z/i'
    - !ruby/regexp '/\A.*buy.*online.*\z/i'
    - !ruby/regexp '/\A.*real.*estate.*\z/i'
    - !ruby/regexp '/\A.*web.*design.*\z/i'
    - !ruby/regexp '/\A.*Mac\sDesktop.*\z/i'
    - !ruby/regexp '/\A.*Inc\z/'
    - !ruby/regexp '/\A.*LLC\z/'
    - !ruby/regexp '/\A.*spyware.*\z/i'
    - !ruby/regexp '/\A.*malware.*\z/i'
    - !ruby/regexp '/\A.*CRM.*\z/'
    - !ruby/regexp '/.*(http|https):\/\/.*/i'
