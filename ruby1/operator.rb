# Assigment

nama = "rasyid" #Assign nila rasyid ke variabel nama

# Arithmetic

num1 = 5
num2 = 3

puts "num1 + num2 = #{num1+num2}"
puts "num1 - num2 = #{num1-num2}"
puts "num1 + num2 = #{num1*num2}"
puts "num1 / num2 = #{Float(num1)/Float(num2)}"
puts "num1 % num2 = #{num1%num2}"
puts "num1 ** num2 = #{num1**num2}"

# Assignment + Arithmetic

num3 = 5
puts "num3: #{num3}"
puts "num3+=5 : #{num3+=5}"
puts "num3-=2 : #{num3-=2}"

# Comparison

puts "num1 == num2 = #{num1==num2}"
puts "num1 < num2 = #{num1<num2}"
puts "num1 > num2 = #{num1>num2}"
puts "num1 <= num2 = #{num1<=num2}"
puts "num1 >= num2 = #{num1>=num2}"

# Logical

pria = true
dewasa = false

puts "Pria dewasa : #{pria && dewasa}"
puts "Bukan pria dewasa : #{!(pria && dewasa)}"
puts "Bukan pria, dewasa : #{!pria && dewasa}"
puts "Pria, bukan dewasa : #{pria && !dewasa}"

# Ternary
x = 10
puts "#{x == 10}" ? "x is ten" : "x is not ten"

# Range

a = (1..10).to_a
b = (1...10).to_a
puts "#{a}"
puts "#{b}"

# defined ?

foo = 42
puts defined? foo
