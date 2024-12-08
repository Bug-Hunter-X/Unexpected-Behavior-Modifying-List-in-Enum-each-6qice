```elixir
list = [1, 2, 3, 4, 5]

# Using Enum.filter to create a new list without the element 3
new_list = Enum.filter(list, fn x -> x != 3 end)

IO.inspect(new_list)

#Using Enum.reduce
new_list2 = Enum.reduce(list, [], fn x, acc ->
  if x != 3 do
    [x | acc]
  else
    acc
  end
end)
IO.inspect(new_list2)
```