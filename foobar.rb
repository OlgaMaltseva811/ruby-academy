def foobar(num1, num2)
  if num1 == 20 || num2 == 20
    return num2
  else
    return num1 + num2
  end
end

# Примеры использования
puts foobar(20, 5)  # Вывод: 5
puts foobar(10, 15) # Вывод: 25
puts foobar(5, 20)  # Вывод: 20
puts foobar(10, 30) # Вывод: 40
