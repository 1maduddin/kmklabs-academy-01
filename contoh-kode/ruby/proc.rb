# Closure : 
# * function di dalam function
# * memiliki akses ke variabel di function yang luar (outer)

# Closure menunjukkan functional programming
# * function first-class citizen : bisa disimpan menjadi variabel
# * function bisa menjadi argumen dari function lain


def halo(nama)
    yield 10
    puts "Halo #{nama}"
    yield nama
end

halo "endy" do | x |
    puts "Ini closure"
    puts "Argumen : #{x}"
end

# Deklarasi closure : do .. end
# Menjalankan closure : yield
# Menerima argumen, menggunakan | arg |

def coba(nama)
    puts "Function coba, dengan argumen #{nama}"
end

coba("endy") { }


# Contoh penggunaan block
[2,3,4].each do |x|
    puts "Element : #{x}"
end


# Procs
class Coba
    def lihat_block(blok)
        puts "Class dari blok : #{blok.class}"
        #yield 10
        blok.call(10)
    end

    def gunakan_proc
        puts "Ada block ? #{block_given?}"
    end
end

c = Coba.new
#c.lihat_block do |n|
#    puts "ini blok"
#end

c.gunakan_proc

c.gunakan_proc do 
    puts "ada block"
end

# Block bisa dijadikan object, supaya bisa dikirim dalam method param
waktu = Proc.new do
    puts "Waktu : #{Date.new}"
end

waktu.call

# Mengirim Proc sebagai method param
c.lihat_block(waktu)

# Bila ingin digunakan sebagai block, harus dikonversi dulu dengan &
c.gunakan_proc(&waktu)

# Proc waktu bisa direuse di method lain
halo("endy",&waktu)

# Berbagai cara untuk membuat Proc

waktu1 = Proc.new{ puts "Waktu 1 : #{Date.new.to_s} "}
waktu2 = proc{ puts "Waktu 2 : #{Date.new.to_s} "}
waktu3 = ->() { puts "Waktu 3 : #{Date.new.to_s} "}


halo("endy",&waktu1)
halo("endy",&waktu2)
#halo("endy",&waktu3)


