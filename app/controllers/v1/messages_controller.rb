class V1::MessagesController < ApplicationController
  def index
    @message = Message.find(Random.rand(1..5))
    render json: @message
  end
end
