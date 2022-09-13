require 'pry-byebug'
def bubble_sort(array)
  new_arr = Array.new(array)
  sorted = array.sort
  until new_arr == sorted do
    new_arr.each_with_index do |val, i|
      temp = val
      if i < new_arr.length - 1 && val > new_arr[i + 1]
        new_arr[i] = new_arr[i + 1]
        new_arr[i + 1] = temp
      end
    end
  end
  new_arr
end

print(bubble_sort([4,3,78,2,0,2]).join(", ") + "\n")
print(bubble_sort([39,324645,34646,456,5354,4,3,643]).join(", "))