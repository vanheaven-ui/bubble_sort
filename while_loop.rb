def bubble_sort(arr)
  swap = false
  until swap
    swap = true
    (0..arr.length - 2).each do |i|
      next if arr[i] <= arr[i + 1]

      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swap = false
        break
      end
    end
  end
  p arr
end
bubble_sort([4, 78, 2, 0, 2])

def bubble_sort_by(array)
  swap = false
  until swap
    swap = true
    (0..array.length-2).each do |i|
      x = array[i]
      y = array[i + 1]
      if yield(x, y).positive? 
        array[i], array[i + 1] = array[i + 1], array[i]
        swap = false
      end
    end
    p array
  end
end



bubble_sort_by(["hi","mambo", "hello","hey"]) do |left, right|
  left.length - right.length
end



