string = 'Random String'

# puts strin #=> rb:3:in `<main>': undefined local variable or method `strin' for main:Object Did you mean?  string

def area(width = 2, height = 7)
  width * height
end

# puts area('2', '6') #=> rb:6:in `*': no implicit conversion of String into Integer