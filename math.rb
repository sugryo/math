# -*- coding: utf-8 -*-

option = ARGV
case option
when "-v"
  puts "math 0.0.1 [2014-03-29]"
when "-l"
  puts "math 0.0.1 is Copyright (c) 2014 math developers"
  puts "It is free software under the terms of a BSD 3-Clause License."
else
  puts "Error"
end

class Calculations  #計算

  attr_accessor :name

  def initialize(car_numbers)
    @car_numbers = car_numbers
  end
  
  def select(figures)
    if figures == 10
      puts "10になりました!"
    else
      puts "10になりませんでした。戻り値は#{figures}です。"
    end
  end
  
  private :select

  def addition #足し算
    figures = 0
    for i in @car_numbers
      figures += i
    end
    select(figures)
  end

  def subtraction  #引き算
    figures = @car_numbers[0] - @car_numbers[1] - @car_numbers[2] - @car_numbers[3]
    select(figures)
  end

  def multiplication  #掛け算
    figures = 1
    for i in @car_numbers
      tmp = figures
      figures = tmp * i
    end
    select(figures)
  end

  def division  #割り算
    figures = @car_numbers[0] / @car_numbers[1] / @car_numbers[2] / @car_numbers[3]
    select(figures)
  end
end

