def pet_shop_name (pet_shop)
  return pet_shop[:name]
end

def total_cash (pet_shop_total_cash)
  return pet_shop_total_cash[:admin][:total_cash]
end

def add_or_remove_cash (current_cash, additional_cash)
  return current_cash[:admin][:total_cash]+= additional_cash
end

def pets_sold (number_of_pets_sold)
  return number_of_pets_sold[:admin][:pets_sold]
end

def increase_pets_sold(new_total_pets_sold, new_pets_sold)
  return new_total_pets_sold[:admin][:pets_sold]+=new_pets_sold
end

def stock_count(amount_of_stock)
  return amount_of_stock[:pets].count()
end

def pets_by_breed(pet_shop, breed_to_find)
  pets_found = []
  for pet in pet_shop[:pets]
    if pet[:breed] == breed_to_find
      pets_found << pet
    end
  end
  return pets_found
end

def find_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name (pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      pet_shop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock (pet_shop, new_pet)
  pet_shop[:pets] << new_pet
end

def customer_cash (customers)
    return customers[:cash]
end

def remove_customer_cash (customer, cash)
  customer[:cash] -= cash
end

def customer_pet_count (customers)
  return customers[:pets].count
end

def add_pet_to_customer (customer, new_pet)
  customer[:pets] << new_pet
end
