array = [[1,2,3],[[[4,5,6]]]]

for a in array
  for i in a
    if i.is_a?(Array)
      for c in i
        puts c
      end
    else
      puts i
    end
  end
end