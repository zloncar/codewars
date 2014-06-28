class Match
  def self.solution(full_text, search_text)
    # full_text[search_text]
    # full_text.count search_text
    full_text.scan(search_text).count
  end
end
