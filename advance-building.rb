def bubble_Sort(array)
  n = array.length
  swapped = true

  while swapped do
    swapped = false
    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
      swapped = true
      end
    end
  end
  print array 
end

bubble_Sort([89,45,2,5,12,90])


# bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]