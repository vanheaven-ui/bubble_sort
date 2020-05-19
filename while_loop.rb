# def booble_sort(arr)
#     arr.each do
#     j=0
#     while j < arr.length-1
#         arr[j],arr[j+1]=arr[j+1],arr[j] if arr[j]>arr[j+1]
#         j+=1
#     end
#     p arr
# end

# end
#  booble_sort([3,4,7,5,9,1,2])

def bubble_sort(arr)
  swap = false
  until swap
    swap = true
    (0..arr.length-2).each do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swap = false
        break
      end
    end
  end
  p arr
end

bubble_sort([3,4,7,5,9,1,2,8,6])

