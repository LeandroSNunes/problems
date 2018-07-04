#!/usr/bin/env ruby
# Média Ponderada

a = gets.chomp.to_f
b = gets.chomp.to_f

average = ((a * 3.5) + (b * 7.5)) / 11

puts "MEDIA = #{sprintf('%.5f', average)}\n"
