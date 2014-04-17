#! /home/sugryo/.rbenv/versions/2.1.1/bin/ruby
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

def ten?(num)
  if num == 10
    true
  else
    false
  end
end

option(option)

class Calculations  #計算
  def initialize(car_numbers)
    @car_numbers = car_numbers
  end
  
  def select(figures)
    if ten?(figures)
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
    figures = 0
    for i in @car_numbers
      figures -= i
    end
    select(figures)
  end

  def multiplication  #掛け算
    figures = 1
    for i in @car_numbers
      figures *= i
    end
    select(figures)
  end

  def division  #割り算
    figures = 1
    begin
      for i in @car_numbers
        figures /= i
      end
      select(figures)
    rescue ZeroDivisionError
      puts "答えは0です。"
    rescue
      puts "エラーが発生しました。"
    end
  end
end

