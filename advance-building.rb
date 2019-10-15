def bubble_sort array
  sorted_array = []
  while (array.length != 0)
    array.each_index do |index|
      if (index != array.length-1 && array[index] > array[index+1])
        array[index], array[index+1] = array[index+1], array[index]
      end
    end
    sorted_array.insert(0, array.pop)
  end
  sorted_array
end

def bubble_sort_by array
  n = array.length
  sorted_array = []
  while (n != 0)
    (n-1).times do |i|
      diff = yield(array[i],array[i+1])
      if (diff > 0)
        array[i], array[i+1] = array[i+1], array[i]
      end
    end
    sorted_array.insert(0, array.pop)
  end
  sorted_array
end