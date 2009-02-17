require 'rubygems'
require 'sinatra'
require 'espeak-ruby'

include ESpeak

get '/tts' do
  text = params.delete("t")
  
  [200, {'Content-type' => 'audio/mpeg'}, File.read(espeak(text, params))]
end