fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh',
  'fsh', 'fiiiissshhhhhh']

def sluggish(fishes)
  ret = ""
  (0...fishes.count - 1).each do |i|
    (1...fishes.count).each do |j|
      fishes[i].length > fishes[j].length ? ret = fishes[i] : ret = fishes[j]
    end
  end
  ret
end

puts sluggish(fishes)

puts "====================="

def dominant(fishes)
  sorted_arr = merge_sort(fishes)
  sorted_arr.last
end

def merge_sort(fishes)
  return nil if fishes.empty?
  return [fishes[0]] if fishes.count == 1
  mid_idx = fishes.count / 2

  left = merge_sort(fishes[0...mid_idx])
  right = merge_sort(fishes[mid_idx...fishes.count])

  ret = merger(left, right)
end

def merger(left, right)
  ret = []
  left_idx = 0
  right_idx = 0

  while left_idx < left.length && right_idx < right.length
    if left[left_idx].length <= right[right_idx].length
     ret << left[left_idx]
     left_idx += 1
    else
     ret << right[right_idx]
     right_idx += 1
    end
  end

  if left_idx < left.length
   ret += left[left_idx...left.length]
  else
   ret += right[right_idx...left.length]
  end
  ret
end

puts dominant(fishes)

puts "====================="

def clever(fishes)
  ret = fishes[0]
  fishes.each { |fish| ret = fish if fish.length > ret.length } 
  ret
end

puts clever(fishes)
