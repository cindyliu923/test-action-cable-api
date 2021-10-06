class TestChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'test_channel'
  end

  def unsubscribed
    stop_all_streams
  end
end
