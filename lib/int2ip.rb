def int32_to_ip(int32)
  a = []
  (1..4).each do
    a << (int32%256)
    int32 /= 256
  end
  a.reverse.join('.')
end

puts int32_to_ip(2154959208) # => 128.114.17.104

#clever
# def int32_to_ip(int32)
#   [24, 16, 8, 0].collect {|b| (int32 >> b) & 255}.join('.')
# end

# def int32_to_ip(int32)
#   [int32].pack('N').unpack('C*') * '.'
# end
