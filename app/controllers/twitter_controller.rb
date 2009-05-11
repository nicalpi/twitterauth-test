class TwitterController < ApplicationController
    before_filter :login_required
    #Retreive the friend timeline
    def index
      @tweets = current_user.twitter.get('/statuses/friends_timeline')
      logger.info @tweets
    end

end

