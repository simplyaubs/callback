require 'twilio-ruby'

class TwilioController < ApplicationController
  include Webhookable

  after_filter :set_header

  skip_before_action :verify_authenticity_token

  def voice
  questions = Question.all
    response = Twilio::TwiML::Response.new do |r|
      r.Say 'Welcome to Callback! A service to help you with phone interviews.', voice: 'alice'
      questions.each do |question|
        r.Say question, voice: 'alice'
        r.Pause length="2"
      end

      r.Play 'http://linode.rabasa.com/cantina.mp3'
    end

    render_twiml response
  end
end