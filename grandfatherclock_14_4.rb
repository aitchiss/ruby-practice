def grandfather_clock (&block)
    hour = Time.new.hour
    hour.times do |x|
        block.call
        end
end

grandfather_clock do
    puts "DONG!"
end
