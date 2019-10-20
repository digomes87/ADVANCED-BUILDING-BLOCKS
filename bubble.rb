# frozen_string_literal: true
def bubble_sort(arr)
    elem = arr.length
    loop do
      sorted = true
  
      (elem - 1).times do |x|
        if arr[x] > arr[x + 1]
          arr[x], arr[x + 1] = arr[x + 1], arr[x]
          sorted = false
        end
      end
      break if sorted == true
    end
    arr
  end
    
  def bubble_sort_by(arr)
    elem = arr.length
    loop do
      sorted = true
      (elem - 1).times do |x|
        if yield(arr[x], arr[x + 1]).positive?
          arr[x], arr[x + 1] = arr[x + 1], arr[x]
          sorted = false
        end
      end
      break if sorted == true
    end
    arr
  end