class SubscriptionsController < ApplicationController

  def new
    @subscription = Subscription.new
  end

  def create
    @subscription = Subscription.new(subscription_attrs)

    if @subscription.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def subscription_attrs
    params.require(:subscription).permit(:email)
  end

end
