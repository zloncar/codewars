def int32_to_ip(int32)
  int32 = int32.to_i
  q4 = int32%256
  int32 /= 256
  q3 = int32%256
  int32 /= 256
  q2 = int32%256
  int32 /= 256
  q1 = int32%256
  "#{q1}.#{q2}.#{q3}.#{q4}"
end

puts int32_to_ip(2154959208)
