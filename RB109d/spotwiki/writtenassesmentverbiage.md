## Verbiage for Written Assessment 109d

> **Number and Letters**

````ruby
integer = 1
````

Local variable `integer` is initialized and set to reference the integer object `1`.

------

```ruby
float = 1.0
```

Local variable `float` is initialized and set to reference the float object `1.0`

------

```ruby
a = "string"
```

Local variable `a` is initialized and set to reference the string object `"string"`

------

> **String Manipulation** 

```ruby
a = "string"
b = "#{a}!" # Explain this line
```

Local variable `b` is initialized and set to reference the string object `"#{a}!"`. Inside the string object we are using string interpolation to reference the value of variable `a`, which is the string object `"string"`. 

------

```ruby
b = "#{a}!"
b += "!" #Explain this line
```

Local variable `b` is being reassigned to the value of `b`, which is the string object `"string!"` plus the string object `"!"`.  `b` now points to a new string object with the value of `"string!!"`. The `+=` is non-mutating concatenation.

------

```ruby
b = "string!!"
b << "!" #Explain this line
```

The object that local variable `b` is referencing is being mutated since the shovel operator/method `#<<` is being called on it and concatenating the string object `"!"` unto it, which is being passed as an argument. `b` is still pointing to the same object but it has been mutated to the string object `"string!!!"` 

------

> **Boolean and Logic Values**

```ruby
boolean = true
```

Local variable Boolean is being initialized and set to reference Boolean object `true`. 

------

```ruby
if Integer
   	puts "string"
end
```

The conditional `if Integer` evaluates to `true` because it's checking if `Integer` is `truthy`. Everything in Ruby is `truthy` except `false` and `nil`. This is not the same/This is not to say that `Integer` is `true` in a Boolean context. 

------

```ruby
nil == false
```

`nil == false` is a comparison expression that is evaluating whether the value of `nil` is equal to the value of the Boolean `false`. It returns `false`  because `nil` is not equal to `false`. `nil` does evaluate to `falsy`, which is not the same as saying `nil` is `false`. 

------

> **Collections**

```ruby
array = ["element1", "element2"]
```

Local variable `array` is initialized and set to reference array object `["element1", "element2"]`, which contains two elements. Both of these elements are string objects - "`element1`" and "`element2`"

------

```ruby
array[0]
```

The `#[]` method is being called on the local variable `array` and passed the argument of `0`. Since array objects are 0-indexed based, we are calling the first element of the array, thus returning the object at position `0` which is `"element1`".

------

```ruby
array[0] = "element0"
```

The `#[]=` method is being called on the local variable `array`. This method is being passed 2 arguments. The Integer object `0` and the string object `"element0"`. This method is reassigning the value at position `0` with the string object `"element0"`. It returns the second argument passed which is `"element0"`

------

```ruby
hash = { key1: "value1", :key2 => "value2"}
```

Local variable `hash` is initialized and set to reference hash object `{ key1: "value1", :key2 => "value2"}`

------

```ruby
hash[:key1]
```

`#[]` method is being called on the local variable `hash`. It is being passed 1 argument which is a symbol object `:key1`. This returns the value associated with that `key` in the hash which in this case is string object `"value1"`. This is because hashes work on a `key => value` pair system.

------

```ruby
 hash[:key1] = "value2"
```

`#[]=` method is being called on the local variable `hash`. It is being passed 2 arguments. It reassigns the value at `:key1` with the string object `"value2"`. It returns the second argument, in this case, string object `"value2"`.

---

> **Common Methods**

```ruby
array = [1, 2, 3]
array.size
```

The `#size` method is called on the local variable `array`. It returns the number of elements in the array. In this case it returns the Integer object `3`. *See #length*

---

```ruby
array = [1, 2, 3]
array.push("element3")
```

The mutating `#push` method is being called on array with an argument of string object `"element3"`. This appends the argument to the original array as an element. It returns the array with the element added to it.

---

```ruby
array << "element3"
```

The mutating `#<<` method (shovel operator) is called on the array with the string object "element3" passed as an argument. This appends `"element3"` to the array as an element. It returns the array with the element added to it.

---

```ruby
array.concat(["element4"], ["element5", "element6"])
```

The mutating method `#concat` method is being called on the variable `array` with 2 arguments. These 2 arguments are 2 other arrays. The first one with one element, the second with 2 elements. The `#concat` method adds these arguments to the original array object as elements un-nested. It returns the array variable with the original and added elements.

---

```ruby
array = [1, 2, 3]
array.unshift("element-1") #Explain this line
```

The mutating method `#unshift` is being called on array with string object `"element-1"` passed to it. This prepends the given argument to the array. In returns the array with the element added to it. In this case. `rray = ["element-1", 1, 2, 3]`

---

```ruby
array = [1, 2, 3]
array.pop #Explain this line
```

The mutating method `#pop` is being called on the variable `array` that is pointing to the array object `[1, 2, 3]`. This method removes the last element of the array. It returns the deleted element. In this case the array now contains only 2 elements: `array = [1, 2]`.

---

```ruby
array = [1, 2, 3]
array.shift
```

The mutating method `#shift` is being called on the variable `array` that is pointing to the array object `[1, 2, 3]`. This method deletes the first element of the array. It returns the removed element. The array now contains only 2 elements: `array = [2, 3]`. 

---

```ruby
array = [1, 2, "jonai", 3]
array.delete("jonai")
```

The mutating method `#delete` is being called with string object `"jonai"` as an argument on the variable array that is pointing to the array object `[1, 2, "jonai", 3]`. This method deletes the element `"jonai"` and returns it. The array now contains 3 elements: `array = [1, 2, 3]`.

---

```ruby
array = [1, 2, 3, ["one", "two", "three"]]
array.flatten
```

The `#flatten` method is called on the local variable `array` that is pointing to the array object `[1, 2, 3, ["one", "two", "three"]]` which is a nested array. This method with no argument replaces each nested array with its individual elements. It returns the value of array which is `[1, 2, 3, "one", "two", "three"]`. Non-mutating

---

```ruby
array = [1, 2, "jonai", 3]
array.join
```

The `#join` method is being called without an argument on the variable `array` that is pointing to array object `[1, 2, "jonai", 3]`. This method returns all the elements joined into a single string: `"12jonai3"`.

---

```ruby
array = [1, 3, 2, 8, 16]
array.sort
```

The `#sort` method is being called on the local variable `array` which is pointing to the array object `[1, 3, 2, 8, 16]`. This method returns a new array object with the elements in array sorted from least to most. It uses the spaceship operator `<=>` to make the comparison. Our new array is `[1, 2, 3, 8, 16]`. 

---

```ruby
array = [1, 2, 3, "jonai"]
array.include?("jonai")
```

The `#include?` method is called on the local variable `array` and passed the string object `"jonai"` as an argument. This method finds the passed argument within the array, in others words it returns a Boolean if any element in the array is equal to the argument, in our example `"jonai"`. If it finds it, it returns the Boolean `true`, if it doesn't, it returns the Boolean `false`. In our case it finds the string object `"jonai"` as an element within our array and returns `true`. 

---

````ruby
array = [1, 2, 3]
array.count(3)
````

The `"#count"` method is called on the local variable `array` with the `Integer` object 3 passed as an argument. This method, passed with an argument, returns the count of elements equal to the passed argument. In our example it returns the integer 1 since 3 only appears in our array 1 time. 

---

> **Operators**

```ruby
3 + 2
```

The `+` operator is used to return the result of `3` plus `2`, which is `5`

---

```ruby
3 -2
```

The `-` operator is used to return the result of `3` minus `2`, which is `1`

---

```ruby
x = 5
result = x > 3 ? "x is greater than 3" : "x is not greater than 3"
```

The ternary operator is used to evaluate the condition `x > 3`. If it's truthy, it returns `"x is greater than 3"`. If it's falsy, it returns `"x is not greater than 3"`.

---

> **Logical Operators & Short-Circuit Evaluation**

**&&**

```ruby
true && false
```

The `&&` operator returns `false` when performing a logical AND operation between `true` and `false`

*Short-Circuit*

If the left operand is `false`, the right operand is not evaluated

---

**| |**

```ruby
true || false
```

The `||` operator returns `true` when performing a logical OR operation between `true` and `false`

*Short-Circuit*

If the left operand is `true`, the right operand is not evaluated.

---

> **Operator Precedence**

```ruby
 PEUMACAOTA
**P**eter, **E**very **U**nicorn **M**ust **A**lways **C**rave **A**pples **O**r **T**aste **A**pricots.
10. Parentheses `()` - Highest Precedence 
9. Exponentiation `**`  
8. Unary plus `+` and minus `-` (also used for negation)  
7. Multiplication `*`, Division `/`, and Modulus `%`  
6. Addition `+` and Subtraction `-`  
5. Comparison operators: `<`, `>`, `<=`, `>=`, `==`, `!=`  
4. Logical AND `&&`  
3. Logical OR `||`  
2. Ternary operator `? :`  
1. Assignment operators: `=`, `+=`, `-=`, `*=`, `/=`, `%=`, etc. - Lowest Precedence
```

---

> **Type Conversion**

```ruby
number = 42
number.to_s
```

The `#to_s` method is called on the local variable `number` which is referencing the Integer object `42`. This returns the object converted to a string object. In this example it returns the string object `"42"`

---

```ruby
string_number = "42"
string_number.to_i
```

The `#to_i` method is called on the local variable `number` which is referencing the string object `"42"`. This returns the object converted to an `Integer` object. In this example it returns the Integer object `42`.

---

```ruby
string_float = "3.14"
string_float.to_f
```

The `#to_f` method is called on the local variable `string_float` which is referencing the string object `"3.14"`. This returns the object converted to a `float` object. In this example it returns the float object `3.14`

---

> **Reassignment**

```ruby
a = 1
a = 2
```

The local variable `a` is initialized and assigned the Integer object `1`. on `line 2` local variable `a` is reassigned to Integer object `2`

---

> **Method Scope**

```ruby
var = 0

def method
	var = 1
end

method
puts var
```

On `line 1` the local variable `var` is initialized and set to reference the Integer object `0`.  On `line 2` the `method` method is defined with no parameters. On `line 3` the local variable `var` is initialized and set to reference the Integer object 1. The `method` method is invoked on `line 5` and returns the Integer object `1`. On `line 6` the method `puts` is called with the local variable `var` passed as an argument. It outputs the Integer object `0` and returns `nil`. This is demonstrating local variable scope, specifically how methods have a self-contained scope and do not have access to variables initialized in the main scope. 

---

> **Block Scope**

```ruby
var = 0

loop do
	var = 1
	break
end

puts var
```

On `line 1` local variable `var` is initialized and assigned the Integer object `0`. On `line 2` the method `loop` is called with a block as an argument, delimited by the `do..end`. Within the block we reassign the local variable `var` to the Integer object `1`. On `line 4` We call the keyword `break` to break out of the loop after one iteration. On `line 6` we call the method `puts` and pass it the local variable `var` as an argument. This outputs the Integer object `1` and returns `nil`. This demonstrates the scoping rules for a block. Specifically that variables initialized outside of the block scope are accessible within the block. That's why on `line 6` var outputs `1` instead of `0` 

---

> **Conditionals and Loops**

```ruby
i = 10

loop do
	i -= 1
	break if i == 0
end
```

On `line 1` local variable `i` is initialized and is set to reference the Integer object `10`. On `line 2` the `loop` method is called with a block as an argument, delimited by the do..end. In `line 3` local variable `i` is reassigned  to local variable `i` minus `1` meaning for the first iteration of the loop, local variable `i` is reassigned to Intger object `9`. Since this is in a loop this will keep happening until local variable `i` is referencing integer object `0`. In `line 4` we call the keyword `break`, which breaks out of the loop. We call the keyword `break` with a condition that if local variable `i` is equal to Intger object `0`, we break out of the loop. This code is demonstrating that blocks passed as arguments to a method are able to access local variables that were initialized outside of the block scope. 









