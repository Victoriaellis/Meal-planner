class WeekdaysController < ApplicationController
  def index
    @weekdays = Weekday.all
  end
end
