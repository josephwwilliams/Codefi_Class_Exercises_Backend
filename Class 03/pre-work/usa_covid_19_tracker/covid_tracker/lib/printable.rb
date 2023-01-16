module Printable
  module Format
    def text_to_int(text)
      text.gsub(/[\s,]/, "").to_i
    end
  end
end