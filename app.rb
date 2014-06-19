require 'sinatra'
require 'json'

get '/' do
  "the time where this server lives is #{Time.now}
<br /><br />check out your <a href=\"/agent\">user_agent</a>"
end

get '/agent' do
  "you're using #{request.user_agent}"
end

get '/example.json' do 
  content_type :json
  { key1 => 'value1', key2 => 'value2' }.to_json
end 

  
