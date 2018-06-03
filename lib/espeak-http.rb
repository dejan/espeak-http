%w(rubygems
   sinatra
   espeak
   digest/sha1).each { |l| require l }

include ESpeak

get '/tts' do
  filename = "tmp/#{Digest::SHA1.hexdigest(params.to_s)}.mp3"
  ESpeak::Speech.new(params.delete('text'), params).save(filename)
  [200, {'Content-type' => 'audio/mpeg'}, File.read(filename)]
end
