class SubscriptionsController < ApplicationController
    
    def index
        @subscriptions = Subscription.all
        render json: @subscriptions
    end

    def show
        @subscription
    end

end
