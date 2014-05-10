class CalculationController < ApplicationController
  def home

  end

  def square_root

    @the_number = params[:number].to_f
    @answer = Math.sqrt(@the_number)
  end

  def pmt

    @interest_rate = params[:interest_rate].to_f
    @interest_rate_perc = @interest_rate/"12".to_f/"100".to_f
    @number_of_payments = params[:number_of_payments].to_f
    @present_value = params[:present_value].to_f
    @payment = (@present_value*(@interest_rate_perc*("1".to_f+@interest_rate_perc)**@number_of_payments)/(("1".to_f+@interest_rate_perc)**@number_of_payments -"1".to_f)).round(2)


  end
end
