class DecisionsController < ApplicationController
  def index
    @decisions = Decision.all
    @weekdays = Weekday.all
  end

  def new
    @recipe = Recipe.find(params[:recipe_id])
    @decision = Decision.new
  end

  def create
    @decision = Decision.new(decision_params)
    @recipe = Recipe.find(params[:recipe_id])
    @decision.recipe = @recipe
    if @decision.save
      redirect_to recipe_decisions_path
    else
      render :new
    end
  end

  private

  def decision_params
    params.require(:decision).permit(:comment, :weekday_id)
  end
end
