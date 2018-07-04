#!/usr/bin/env ruby
# Média Ponderada

a = gets.chomp.to_f
b = gets.chomp.to_f
c = gets.chomp.to_f

average = ((a * 2) + (b * 3) + (c * 5)) / 10

puts "MEDIA = #{sprintf('%.1f', average)}\n"
