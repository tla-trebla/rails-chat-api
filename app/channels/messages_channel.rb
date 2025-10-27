class MessagesChannel < ApplicationCable::Channel
  def subscribed
    stream_from "MessagesChannel"
  end

  def receive(data)
    message = Message.create!(sender_id: data["sender_id"], content: data["content"])

    ActionCable.server.broadcast("MessagesChannel", {
      id: message.id,
      sender_id: message.sender_id,
      content: message.content,
      created_at: message.created_at.strftime("%Y-%m-%d %H:%M:%S")
    })
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
