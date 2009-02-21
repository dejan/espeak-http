%w(rubygems 
   sinatra 
   espeak-ruby
   digest/sha1).each { |l| require l }

include ESpeak

get '/tts' do
  filename = "tmp/#{Digest::SHA1.hexdigest(params.to_s)}.mp3"
  espeak(filename, params) # unless filename exists
  [200, {'Content-type' => 'audio/mpeg'}, File.read(filename)]
end