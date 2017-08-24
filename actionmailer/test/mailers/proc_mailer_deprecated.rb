# frozen_string_literal: true

class ProcMailerDeprecated < ActionMailer::Base
  default to: ->(arg) { compute_address },
          cc: ->(arg) { arg.compute_address }

  def welcome
    mail
  end

  def compute_address
    "complex@computed.com"
  end
end
