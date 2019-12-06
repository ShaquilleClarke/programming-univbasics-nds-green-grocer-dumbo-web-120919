def find_item_by_name_in_collection(name, collection)
  i = 0
  while i < collection.length do
    return collection[i] if name === collection[i][:item]
    i += 1
  end
  nil
end

def consolidate_cart(cart)
  i = 0
  result = []
  while i < cart.count do
    item_name = cart[i][:item]
    looking_for = find_item_by_name_in_collection(item_name, result)
    if looking_for
      looking_for[:count] += 1
    else
      cart[i][:count] = 1
      result << cart[i]
  end
  i += 1
end
 result
end

def apply_coupons(cart, coupons)
  i = 0
  while i < coupons.count do
    oupon = coupons[i]
    item_with_coupon = find_item_by_name_in_collection(coupon[:item], cart)
    item_is_in_basket = !!item_with_coupon
    count_is_big_enough_to_apply = item_is_in_basket && item_with_coupon[:count] >= coupon[:num]

    if item_is_in_basket and count_is_big_enough_to_apply
      apply_coupon_to_cart(item_with_coupon, coupon, cart)
    end
    i += 1
  end

  cart
end

end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
