require 'pubnub'
require 'byebug'

pubnub = Pubnub.new(
  subscribe_key: 'sub-c-283f45ac-27fb-11e6-9327-02ee2ddab7fe',
  publish_key: 'pub-c-5f64e0ec-ba09-4b2f-a964-82cd206f6794',
  connect_callback: lambda {|msg| pubnub.publish(channel: 'Channel-b7mb3jsgl', message: 'Hello from PubNub Ruby SDK!!', http_sync: true)}
)

pubnub.publish(channel: 'Channel-b7mb3jsgl', message: 'Hello from PubNub Ruby SDK!') do |envelope|
  puts envelope.parsed_response
end


pubnub.publish(channel: 'Channel-b7mb3jsgl', message: 'Hello from PubNub Ruby SDK!') do |envelope|
  puts envelope.parsed_response
end
