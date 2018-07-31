class BidsController < ApplicationController
  before_action :check_ownership, only: []
  
  def create
    input_cost = params[:cost].to_i
    @concert = Concert.find(params[:concert_id])
    if (input_cost%500) > 0 
      render(
        html: "<script>alert('500원 단위로 입력해주세요! 페이지를 새로고침 해주세요.')</script>".html_safe,
        layout: 'application'
      )
    elsif !@concert.bids.blank? # 이미 있어 비교할 대상.
      if (input_cost < @concert.bids.maximum("cost"))
        render(
          html: "<script>alert('최고 금액 이상을 입력해주세요! 페이지를 새로고침 해주세요.')</script>".html_safe,
          layout: 'application' 
        )
      else
        new_bid = Bid.new(cost: params[:cost],
                                  concert_id: params[:concert_id],
                                  user_id: current_user.id)
        new_bid.save
        redirect_to :back
      end
    else
      new_bid = Bid.new(cost: params[:cost],
                                  concert_id: params[:concert_id],
                                  user_id: current_user.id)
      new_bid.save
      redirect_to :back
    end
  end
  
  
end