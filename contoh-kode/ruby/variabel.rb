nama = "endy";
puts(nama);

# syntactic sugar = cara penulisan yang lebih nyaman
# nyaman != mudah dipahami (bagi programmer baru)
# tanda kurung dalam pemanggilan function boleh dihilangkan

puts nama;

# string replacement, memproses yang di dalam tanda kurung
# kemudian menghasilkan string

puts "Halo #{nama}";
puts "2 + 1 = #{2+1}";

# beberapa tipe data di Ruby

# String : lihat contoh variabel nama di atas

# Boolean

pria = true;

puts "Apakah dia pria? #{pria}";
puts "Apakah dia bukan pria? #{!pria}";

dewasa = false;

puts "Apakah dia pria dewasa? #{pria && dewasa}";

# Number

umur = 20;
puts "Umur #{nama} #{umur} tahun";
puts "5 tahun lagi, umur #{nama} menjadi #{umur + 5} tahun";

nama_belakang = "muhardin";
puts "Nama lengkap : #{nama + nama_belakang}";

# Array

emails = ['endy.muhardin@gmail.com','endy@artivisi.com'];
puts "Alamat email : #{emails}";
puts "Jumlah alamat email : #{emails.size}";
puts "Email utama : #{emails[0]}";


# Hash

konfigurasi = {"username" => "endy", "password" => "rahasia"};
puts "Konfigurasi : #{konfigurasi}";
puts "Username : #{konfigurasi["username"]}";

# Symbol : string yang immutable (sekali diset tidak bisa diubah)
# biasanya digunakan sebagai key dalam hash

data_user = {:username => "endy", :email => 'endy.muhardin@gmail.com'};
puts "Email #{data_user[:username]} adalah #{data_user[:email]}";




