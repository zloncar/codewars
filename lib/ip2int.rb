class String
  def convert_base(from, to)
    self.to_i(from).to_s(to)
  end
end

def ip_to_int32(ip)
  s = ''
  ip.split('.').each do |n|
    s += "%08d" % n.convert_base(10, 2)
  end
  s.convert_base(2, 10).to_i
end

puts ip_to_int32('128.114.17.104')
