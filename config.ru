#!/usr/bin/env rackup
# encoding: utf-8

# This file can be used to start Padrino,
# just execute it from the command line.

require File.expand_path("../config/boot.rb", __FILE__)
require 'rack/websocket'

use Rack::Mongoid::Middleware::IdentityMap

class WsApp < Rack::WebSocket::Application
  def on_open env
    puts "Client connected"
  end
  def on_close env
    puts "Client disconnected"
  end
  def on_message env, msg
    puts "message: " + msg
    send_data msg
  end
  def on_error env, err
    puts "error: " + err.message
  end
end

map '/' do
  run Padrino.application
end

map '/ws' do
  run WsApp.new
end
