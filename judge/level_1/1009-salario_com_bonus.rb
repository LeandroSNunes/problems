#!/usr/bin/env ruby

name = gets.chomp
salary = gets.chomp.to_f
sales = gets.chomp.to_f

bonus_salary = salary + sales * 0.15
puts "TOTAL = R$ #{sprintf('%.2f', bonus_salary)}\n"
