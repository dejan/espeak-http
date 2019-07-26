# espeak-http

espeak-http is a micro web app for Text-To-Speech conversion via HTTP powered by Ruby, Roda, lame, espeak and espeak-ruby.

## Run

    docker run -it -p 9292:9292 desimic/espeak-http
    
And then use: http://localhost:9292/tts?text=hello%20world&pitch=90&speed=100

## Development

    docker-compose up --build

## License

espeak-http is released under the [MIT License](/MIT-LICENSE).
