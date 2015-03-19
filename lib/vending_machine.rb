def vendingmachine(vara: , kronor:)
  if vara == 1
    if kronor == 10
      value = "Choklad"
    elsif kronor < 10
      value = "För lite pengar"
    else
      value = "Choklad" " tack tack"
    end
  elsif vara == 2
    if kronor == 8
      value = "Festis"
    elsif kronor < 8
      value = "För lite pengar"
  else
    value = "Festis" " tack tack"
    end
  end
  p value
  return value
end
vendingmachine(vara:2 , kronor:8)
