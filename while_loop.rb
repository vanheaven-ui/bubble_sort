def booble_sort(arr)
    arr.each do
    j=0
    while j < arr.length-1
        arr[j],arr[j+1]=arr[j+1],arr[j] if arr[j]>arr[j+1]
        j+=1
    end
end
p arr
end
 booble_sort([3,4,7,5,9,1,2]) 