#!/usr/bin/env ruby

class Hanoi
  attr_accessor :total_disks, :origin_pin, :target_pin, :base_pin

  def initialize(**args)
    args.each { |key, value| send("#{key}=", value) }
    @pins = {}
    @pins[origin_pin] = (1..total_disks).to_a.reverse
    @pins[target_pin] = []
    @pins[base_pin] = []
  end

  def exec
    log
    hanoi @total_disks, @origin_pin, @target_pin, @base_pin
    log
  end

  def hanoi(disks, origin_pin, target_pin, base_pin)
    if disks == 1
      move(origin_pin, target_pin)
    else
      hanoi(disks - 1, origin_pin, base_pin, target_pin)
      move(origin_pin, target_pin)
      hanoi(disks - 1, base_pin, target_pin, origin_pin)
    end
  end

  def log
    puts "Pin #{origin_pin}: #{@pins[origin_pin]}"
    puts "Pin #{target_pin}: #{@pins[target_pin]}"
    puts "Pin #{base_pin}: #{@pins[base_pin]}"
  end

  def move(origin_pin, target_pin)
    disk = @pins[origin_pin].pop
    @pins[target_pin].push disk
    puts "Move disco #{disk} de #{origin_pin} para #{target_pin}"
  end
end

hanoi = Hanoi.new total_disks: 3, origin_pin: 'A', target_pin: 'B', base_pin: 'C'
hanoi.exec



# def hanoi(disks, origin_pin, target_pin, base_pin)
#   if disks == 1
#     puts "Move disco #{disks} de #{origin_pin} para #{target_pin}"
#   else
#     hanoi(disks - 1, origin_pin, base_pin, target_pin)
#     puts "Move disco #{disks} de #{origin_pin} para #{target_pin}"
#     hanoi(disks - 1, base_pin, target_pin, origin_pin)
#   end
# end
#
# hanoi(3, 'A', 'B', 'C')
