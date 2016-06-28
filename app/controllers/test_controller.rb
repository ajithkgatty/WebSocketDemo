class TestController < WebsocketRails::BaseController
	def hello
		Rails.logger.info "5"*100
    Counter.increment_counter(:count,1)
    @count = Counter.first.count
    WebsocketRails[:updates].trigger(:update, @count)
  end

  def goodbye
  	Rails.logger.info "3"*100
    Counter.decrement_counter(:count,1)
    @count = Counter.first.count
    WebsocketRails[:updates].trigger(:update, @count)
  end
end
