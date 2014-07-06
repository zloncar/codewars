class Sentence
  def self.make(parts)
    s = parts.join(' ')
    s.gsub!(/ ,/, ',')
    s.gsub!(/ \./, '.')
    s.gsub!(/\.*$/,'.')
    s.squeeze('.')
  end
end

# codewars
# parts.join(' ').gsub(' ,', ',').sub(/(\s\.)*$/, '.');
