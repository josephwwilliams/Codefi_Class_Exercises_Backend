def valid(s)
  clear = true
  valids = ["()", "[]", "{}"]
  check = s.split("")
  if check.length.even?
    check.each_with_index do |char, index|
      if index.odd?
        if valids.include? "#{check[index - 1 ] + check[index]}"
          clear = true
        else
          clear = false
        end
      end
    end
  else 
    clear = false
  end
  puts clear
end

valid("()[]")