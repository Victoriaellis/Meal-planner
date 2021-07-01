class DecisionsController < ApplicationController
  def index
    @decisions = Decision.all
    @weekdays = Weekday.all
  end

  def new
    @weekday = Weekday.find(params[:weekday_id])
    @decision = Decision.new
  end

  def create
    @decision = Decision.new(decision_params)
    @weekday = Weekday.find(params[:weekday_id])
    @decision.weekday = @weekday
    if @decision.save
      redirect_to weekday_decisions_path
    else
      render :new
    end
  end

  private

  def decision_params
    params.require(:decision).permit(:comment, :recipe_id)
  end
end
