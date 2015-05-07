class FortunesController < ApplicationController
  def lucky
    @first_number = rand(100)
    @second_number = rand(100)
    @third_number = rand(100)
    @fourth_number = rand(100)
    @fifth_number = rand(100)
  end

  def unlucky
    @numbers = [rand(100...1000), rand(100...1000), rand(100...1000), rand(100...1000), rand(100...1000)]
  end

  def number_game
    @num_1 = params["no_1"].to_i
    @num_2 = params[:no_2].to_i
    @number_1 = [rand(@num_1..@num_2)]
  end
end
