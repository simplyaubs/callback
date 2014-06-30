require 'twilio-ruby'

class TwilioController < ApplicationController
  include Webhookable

  after_filter :set_header

  skip_before_action :verify_authenticity_token

  def voice
    questions = ['Why do you want to work at this company?', 'What is your biggest weakness?']
    response = Twilio::TwiML::Response.new do |r|
      r.Say 'Welcome to Callback!', voice: 'alice'
      questions.each do |question|
        r.Say question, voice: 'alice'
        r.Pause length="2"
      end

      r.Play 'http://linode.rabasa.com/cantina.mp3'
    end

    render_twiml response
  end
end