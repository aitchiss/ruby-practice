def log (description, &block)
    puts "Beginning block: #{description}"
    result = block.call
    puts "Block: #{description} executed, returning:"
    puts result
end

log "overall block" do
    log "first sub block" do
    25*2
    end
    log "second sub block" do
        "EIP".reverse
    end
end
