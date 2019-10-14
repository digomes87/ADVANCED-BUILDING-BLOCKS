def bubble_sort_by(arr)
  if block_given?
      swap = -1
      #bubble sort functionality
      while swap != 0
          swap = 0
          for i in 0..(arr.length - 2) do
  
              if (yield(arr[i], arr[i+1]) > 0)
                  arr[i], arr[i+1] = arr[i+1], arr[i]
                  swap += 1
              end
  
          end
      end

  else
      arr.sort
  end

  output = arr.join(", ")
  puts "[#{output}]"
end

#given test
bubble_sort_by(["hello", "hey", "hi"]) {|left, right| left.length - right.length
}

bubble_sort_by(["diego","jair","microverse","course Ruby","javascript","php"]) do |first, second|
  first_name_split = first.split(/ /)
  second_name_split = second.split(/ /)

  first_name_split[-1].downcase <=> second_name_split[-1].downcase
end