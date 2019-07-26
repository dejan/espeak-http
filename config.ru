# frozen_string_literal: true

require 'rubygems'
require 'bundler'

Bundler.require

require './lib/espeak-http'

run EspeakHttp.freeze.app
