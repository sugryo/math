# -*- coding: utf-8 -*-
class Calculations  #計算
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

