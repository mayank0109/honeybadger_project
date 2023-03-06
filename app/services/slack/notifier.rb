class Slack::Notifier
  attr_reader :client, :payload

  def initialize(payload)
    @client = Slack::Web::Client.new(token: Rails.application.credentials[:SLACK_API_TOKEN])
    @payload = payload
  end

  def notify
    client.chat_postMessage(channel: Rails.application.credentials[:SLACK_SPAM_CHANNEL_NAME], text: alert_message, as_user: true)
  end

  private

  def alert_message
    payload[:Email] + " just sent a spam message"
  end
end


