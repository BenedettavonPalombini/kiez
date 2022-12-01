class MessagesController < ApplicationController
  def show
    @conversation = Conversation.find(params[:id])
    @message = Message.new
  end

  def create
    @conversation = Conversation.find(params[:conversation_id])
    @message = Message.new(message_params)
    @message.conversation = @conversation
    @message.user = current_user
    if @message.save
      redirect_to conversation_path(@conversation)
    else
      render "conversations/show", status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
