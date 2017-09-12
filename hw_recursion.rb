

  def sum_to(num)
    return 1 if num == 1
    num + sum_to(num-1)
  end

  def add_numbers(arr)
    return arr[0] if arr.length==1
    arr[0]+add_numbers(arr[1..-1])
  end

  def gamma_fnc(num)
    return 1 if num==1
    return nil if num == 0

    (num-1)*gamma_fnc(num-1)
  end

  def ice_cream_shop(arr,str)
    return true if arr[0]==str
    return false if arr.length == 0
    ice_cream_shop(arr[1..-1],str)
  end

  def reverse(str)
    return str[0] if str.length <= 1
    str[-1]+reverse(str[0..-2])
  end
