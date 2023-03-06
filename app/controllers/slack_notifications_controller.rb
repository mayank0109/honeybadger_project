class SlackNotificationsController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def create
    if params[:Type] == "SpamNotification"
      Slack::Notifier.new(params).notify
      render json: { notice: "slack notification successfully" }, status: :ok
    else
      render json: { message: "not a spam" }, status: :ok
    end
  rescue StandardError => ex
    render json: { errors: ex.message }, status: :unprocessable_entity
  end
end
