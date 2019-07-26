# frozen_string_literal: true

require 'roda'
require 'espeak'

class EspeakHttp < Roda
  include ESpeak

  plugin :default_headers, 'Content-Type'=>'audio/mpeg'

  route do |r|
    r.get 'tts' do
      ESpeak::Speech.new(r.params['text'], r.params).bytes
    end
  end
end
