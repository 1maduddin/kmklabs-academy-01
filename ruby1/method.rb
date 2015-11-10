# Definisi function
def tambah(num1, num2)
  return num1+num2
end

# Cara memanggil function
puts "2 + 3 = #{tambah(2,3)}"

# Syntactic sugar #1
def kurang(a,b)
  a-b
end
puts "5 - 2 = #{kurang(5,2)}"

# Syntactic Sugar #2
c = kurang 5,3
puts "5 -3 = #{c}"

# Nama function boleh menggunakan karakter khusus selain angka dan huruf
class Kalkulator
  def +(a,b)
    a + b
  end

  def negative?(a)
    a < 0
  end

  def jumlahkan(num1, *sisanya)
    puts "Jumlahkan num1 : #{num1}"
    puts "Jumlahkan sisanya : #{sisanya}"
    sisanya
  end
end

k = Kalkulator.new
x = k.+(7,8)
puts "7 + 8 = #{x}"
y = k.+7,8
puts "8+9 = #{y}"

puts "Apakah 4 negatif? #{k.negative? 4}"
puts "Jumlahkan 3,4,5,6,7 = #{k.jumlahkan 3,4,5,6,7}"
