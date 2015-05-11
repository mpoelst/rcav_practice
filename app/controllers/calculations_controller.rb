class CalculationsController < ApplicationController
  def instructions
  end

  def square_number
    @number = params[:number].to_f
    @square = @number ** 2
  end

  def squareroot
    @number = params[:number].to_f
    @sqrt = Math.sqrt(@number)
  end

  def pmt
    @rate = params[:interest_rate].to_f
    @payments = params[:number_of_payments].to_f
    @value = params[:principal_value].to_f

    #rate = @rate / 100 / 12
    #nper = @payments * 12

    @monthly_payment = ((@rate) * @value)/(1 - (1 + (@rate)** - (@payments)))
  end
end



