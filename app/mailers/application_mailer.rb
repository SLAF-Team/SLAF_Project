# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'contact@syndicatdelutteantifranglais.club'
  layout 'mailer'
end
