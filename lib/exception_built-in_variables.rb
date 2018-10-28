begin
  1 / 0
rescue => exception
  puts "#{exception.class} #{exception.message}"
  puts exception.backtrace
end

puts

begin
  1 / 0
rescue
  puts "#{$!.class} #{$!.message}"
  puts $@
end
