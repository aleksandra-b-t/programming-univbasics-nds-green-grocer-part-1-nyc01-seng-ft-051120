def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  # Consult README for inputs and outputs
   collection_index = 0

  while collection_index < collection.size do
    current_item = collection[collection_index]
    if ( current_item[:item] == name )
      return current_item
    end
    collection_index += 1
  end
  nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
  updated_cart = []
  cart_index = 0
  while cart_index < cart.size do
    current_item = cart[cart_index]
    if ( find_item_by_name_in_collection(current_item[:item], updated_cart) == nil)
      current_item[:count] = 1
      updated_cart.push(current_item)
    else
      current_item[:count] += 1
      updated_cart.push(current_item)
      
    end
    cart_index += 1
  end
  updated_cart
end 


  