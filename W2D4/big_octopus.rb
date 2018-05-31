fish_arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# => fiiiissshhhhhh
def sluggish(arr)
  max = nil
  (1...arr.length-1).each do |idx1|
    (idx1+1...arr.length).each do |idx2|
      if arr[idx1].length > arr[idx2].length
        max = arr[idx1]
      elsif arr[idx1].length < arr[idx2].length
        max = arr[idx2]
      end
    end
  end

  max
end

p sluggish(fish_arr)

def dominant(arr)
  dominant_quicksort(arr).last
end

def dominant_quicksort(arr)
  return arr if arr.length <= 1

  pivot = arr.first
  left, right = arr.drop(1).partition{|el| el.length < pivot.length}

  dominant_quicksort(left) + [pivot] + dominant_quicksort(right)
end

p dominant(fish_arr)

def clever(arr)
  max = ""
  arr.each {|el| max = el if el.length > max.length}
  max
end

p clever(fish_arr)

#======================================================================
tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(direction, tiles_array)
  tiles_array.each_with_index do |tile, index|
    return index if tile == direction
  end
end

p slow_dance("up", tiles_array)
p slow_dance("right-down", tiles_array)


new_tiles = tiles_array.zip((0...8).to_a).to_h

def constant_dance(direction, new_tiles)
  new_tiles[direction]
end

p constant_dance("up", new_tiles)
p constant_dance("right-down", new_tiles)
