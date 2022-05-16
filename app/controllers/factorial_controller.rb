class FactorialController < ApplicationController
  def index
  end

  def fact_no
    @f = 1
    # num = params[:num].to_i
    for i in 1..5 do
      @f = @f*i
    end
    return @f
  end
end
