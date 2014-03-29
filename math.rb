# -*- coding: utf-8 -*-

option = ARGV[0]

def option(option)
  unless option == nil
    case option
    when "-v"
      puts "math 0.0.1 (2014-03-30)"
    when "-l"
      puts "math is the terms of a BSD 3-Clause License."
    end
  end
end

option(option)

class Calculations  #計算
  def initialize(car_numbers)
    @car_numbers = car_numbers
  end
  
  def ten?(figures)
    if figures == 10
      puts "10になりました!"
    else
      puts "10になりませんでした。戻り値は#{figures}です。"
    end
  end
  
  private :ten?

  def addition #足し算
    figures = 0
    for i in @car_numbers
      figures += i
    end
    ten?(figures)
  end

  def subtraction  #引き算
    figures = @car_numbers[0] - @car_numbers[1] - @car_numbers[2] - @car_numbers[3]
    ten?(figures)
  end

  def multiplication  #掛け算
    figures = 1
    for i in @car_numbers
      tmp = figures
      figures = tmp * i
    end
    ten?(figures)
  end

  def division  #割り算
    figures = @car_numbers[0] / @car_numbers[1] / @car_numbers[2] / @car_numbers[3]
    ten?(figures)
  end
end

