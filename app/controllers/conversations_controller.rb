class ConversationsController < ApplicationController
  def index
    @conversations = Conversation.all
  end

  def show
    @conversation = Conversation.find(params[:id])
    @message = Message.new
  end

  def create
    @conversation = Conversation.create
    @other_user = User.find(params[:user])
    x =UserConversation.create(conversation: @conversation, user: @other_user)
    y = UserConversation.create(conversation: @conversation, user: current_user)
    redirect_to conversation_path(@conversation)
  end
end
