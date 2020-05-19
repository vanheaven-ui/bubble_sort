def bubble_sort(arr)
  count = 0..arr.length - 2
  swap = false
  until swap
    swap = true
    count.each do |i|
      next unless arr[i] > arr[i + 1]

      arr[i], arr[i + 1] = arr[i + 1], arr[i]
      swap = false
      break
    end
  end
  p arr
end
bubble_sort([4, 78, 2, 0, 2])

def bubble_sort_by(array)
  count = 0..array.length - 2
  swap = false
  until swap
    swap = true
    count.each do |i|
      x = array[i]
      y = array[i + 1]
      if yield(x, y).positive?
        array[i], array[i + 1] = array[i + 1], array[i]
        swap = false
      end
    end
  end
  p array
end
bubble_sort_by(%w[hi mambo hello hey]) do |left, right|
  left.length - right.length
end
