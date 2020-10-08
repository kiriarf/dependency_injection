class SayHello
  def initialize(client = EmailClient.new)
    @client = client
  end

  def run
    @client.message.send(
      "friend@example.com",
      "HELLO!"
    )
  end
end

class EmailClient
  attr_reader :message

  def initialize(message = Message.new)
    @message = message
  end
end

class Message
  def send(to, body)
    message = "TO: #{to}\nBODY: #{body}"
  end
end


