# Assignment

nama = "endy"; # Assign nilai endy ke variabel nama


# Arithmetic

num1 = 5;
num2 = 3;

puts "num1 + num2 = #{num1 + num2}";
puts "num1 - num2 = #{num1 - num2}";
puts "num1 * num2 = #{num1 * num2}";
puts "num1 ** num2 = #{num1 ** num2}";
puts "num1 / num2 = #{num1 / num2}";
puts "num1 / num2 = #{Float(num1) / Float(num2)}";
puts "num1 % num2 = #{num1 % num2}";

# Assignment + Arithmetic

num3 = 5;
puts "num3 : #{num3}";
puts "num3+=5 : #{num3+=5}";
puts "num3-=2 : #{num3-=2}";


# Comparison 
puts "num1 == num2 : #{num1 == num2}"
puts "num1 < num2 : #{num1 < num2}"
puts "num1 > num2 : #{num1 > num2}"
puts "num1 <= num2 : #{num1 <= num2}"
puts "num1 >= num2 : #{num1 >= num2}"

# Logical
pria = true;
dewasa = false;


# And, dua-duanya true => true, sisanya false
puts "Pria dewasa : #{pria && dewasa}";
puts "Bukan pria dewasa : #{!(pria && dewasa)}";
puts "Bukan pria, dewasa : #{!pria && dewasa}";
puts "Pria tidak dewasa : #{pria && !dewasa}";

# Or, salah satu true => true, false bila 2-2nya false
#

# Ternary

puts "Jenis kelamin : #{pria ? 'pria' : 'wanita'}";

# Range

satusampailima = 1..5;
puts "Satu sampai lima #{satusampailima}"

# defined?

puts "variabel num1 : #{defined? num1}"
puts "variabel wanita : #{defined? wanita}"
