# frozen_string_literal: true

# Parent class for mailer classes
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
