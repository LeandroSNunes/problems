#!/usr/bin/env ruby

number = gets.chomp.to_i
worked_hours = gets.chomp.to_i
time_value = gets.chomp.to_f

salary = time_value * worked_hours
puts "NUMBER = #{number}\n"
puts "SALARY = U$ #{sprintf('%.2f', salary)}\n"
