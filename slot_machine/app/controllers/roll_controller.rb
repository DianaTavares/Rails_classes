class RollController < ApplicationController
  def index
    @rolls = []
    p "s"*50


    3.times { @rolls << Roll.create }

  @win = "WINNER!!" if @rolls.map! { |roll| roll.value }.uniq.count == 1

  end

  def rolls
    @rolls = []

    if params[:value]
      3.times { @rolls << Roll.create({ value: value }) }
    else
      3.times { @rolls << Roll.create }
    end

    @win = "WINNER!!" if @rolls.map! { |roll| roll.value }.uniq.count == 1

    
  end

end
