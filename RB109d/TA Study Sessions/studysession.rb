a = [1, 2, 3]

def mutate(array)
  array.pop
end

p "before mutated method #{a}"

mutate(a)

p "after mutate method #{a}