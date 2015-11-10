nama = "rasyid"
puts(nama)

# sytactic sugar = cara penulisan yang lebih nyaman
# nyaman != mudah dipahami (bagi programmer baru)
# tanda kurung dalam pemanggilan function boleh dihilangkan

puts nama

# string replacement, memproses yang di dalam tanda kurung
# kemudian menghasilkan string

puts "Halo #{nama}"
puts "2 + 1 = #{2+1}"

# beberapa tipe data di Ruby
#
# Boolean


pria = true

puts "Apakah dia pria? #{pria}"
puts "Apakah dia bukan pria? #{!pria}"

dewasa = true

puts "Apakah dia pria dewasa? #{pria && dewasa}"

#Number

umur = 20
puts "Umur #{nama} #{umur} tahun"
puts "5 tahun lagi, umur #{nama} menjadi #{umur+5} tahun"

nama_belakang = "fahroni"
puts "Nama lengkap : #{nama + nama_belakang}"

# Array

emails = ['rasyid@rasyidfahroni.com', 'ochid.ghuroba@gmail.com']
puts "Alamat email : #{emails}"

