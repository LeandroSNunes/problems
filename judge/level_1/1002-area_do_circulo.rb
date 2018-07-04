#!/usr/bin/env ruby

radius = gets.chomp.to_f
area = 3.14159 * radius**2

puts "A=#{sprintf('%.4f', area)}\n"
