class CalculatorController < ApplicationController
  def index
    @int1 = params[:int1]
    @int2 = params[:int2]
    @operator = params[:operator]
    @display = params[:display]
  end
  
  # could just post back to action to append to instance variable (switched based on @operator value)
  def build
    @int1 = params[:int1]
    @int2 = params[:int2]
    @operator = params[:operator]
    case @operator
    when "+", "-"
      @int2 = @int2 ? @int2 += params[:t
        emp].to_s : params[:temp].to_s
      @display = @int2
    else
      @int1 = @int1 ? @int1 += params[:temp].to_s : params[:temp].to_s
      @display = @int1
    end
    
    redirect_to action: 'index', int1: @int1, int2: @int2, operator: @operator, display: @display
  end

  def operate
    @int1 = params[:int1]
    @int2 = params[:int2]
    @operator = params[:op]
    @operator = @int1 && @int2.nil? ? params[:op] : @operator
    @display = params[:display]

    redirect_to action: 'index', int1: @int1, int2: @int2, operator: @operator, display: @display
  end

  def calculate
    @int1 = params[:int1]
    @int2 = params[:int2]
    @operator = params[:operator]
    result = @int1 ? @int1.to_i : 0
    int2 = @int2 ? @int2.to_i : 0
    case @operator
    when "+"
      result += int2
    when "-"
      result -= int2
    end

    redirect_to action: 'index', int1: nil, int2: nil, operator: nil, display: result
  end
end
