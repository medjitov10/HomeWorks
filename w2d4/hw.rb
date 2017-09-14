def n_power2_fush(arr)
  arr.each_with_index do |el, i|
    arr.each_with_index do |el2 , j|
      el.length > el2.length ? arr[j]=el : arr[j]=el2
    end
  end
  arr.first
end
p n_power2_fush(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])


def fast_fish(arr)
  max = ''
  arr.each do |el|
    max = el if max.length < el.length
  end
  max
end


p fast_fish(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])



def slow_dance(position, arr)
  arr.each_with_index do |el, index|
  position = index if el == position
  end
  position
end

def constan_dance(position, arr)
  arr.each_with_index do |el, index|
  return index if el == position
  end
end
p slow_dance("right-down",["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ])
