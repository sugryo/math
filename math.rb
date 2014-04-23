#! /home/sugryo/.rbenv/versions/2.1.1/bin/ruby
# -*- coding: utf-8 -*-

option = ARGV[0]

module MathOptions
  def version
    puts "math 0.0.2 (2014-04-22)"
  end

  def license
    puts "math is the terms of a BSD 3-Clause License."
  end

  def copyright
    puts "math - Copyright (c) 2014 Ryo Sugimoto"
  end

  def help
    puts "usage: math.rb [-v] [-c] [-h] [--version] [--license] [--copyright] [--help]"
    puts "-v    --version    see the math version"
    puts "      --license    see the math license"
    puts "-c    --copyright  see the math copyright"
    puts "-h    --help       see the math help"
  end
end
  
def ten?(num)
  if num == 10
    true
  else
    false
  end
end

def zero_division_error
  puts "答えは、0です。"
end

def error
  puts "エラーが発生しました。"
end

class Calculations   #計算
  def initialize(car_numbers)
    begin
      @car_numbers = car_numbers
    rescue
      error
    end
  end
  
  def select(figures)
    begin
      if ten?(figures)
        puts "10になりました!"
      else
        puts "10になりませんでした。戻り値は#{figures}です。"
      end
    rescue
      error
    end
  end
  
  private :select

  def addition #足し算
    begin
      figures = 0
      @car_numbers.each {|i| figures += i}
      select(figures)
    rescue
      error
    end
  end

  def subtraction  #引き算
    begin
      figures = 0
      @car_numbers.each {|i| figures -= i}
      select(figures)
    rescue
      error
    end
  end

  def multiplication  #掛け算
    begin
      figures = 1
      @car_numbers.each {|i| figures *= i}
      select(figures)
    rescue
      error
    end
  end

  def division  #割り算
    begin
      figures = 1
      @car_numbers.each {|i| figures /= i}
      select(figures)
    rescue ZeroDivisionError
      zero_division_error
    rescue
      error
    end
  end
end

def option(option)
  include MathOptions
  unless option == nil
    case option
    when "-v", "--version"
      version
    when "-c","--copyright"
      copyright
    when "--license"
      license
    when "-h","--help"
      help
    else
      error = Errors.new
      error.error
      help
    end
  end
end

option(option)
