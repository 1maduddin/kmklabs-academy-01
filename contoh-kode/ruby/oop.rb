class Kasir

    attr_writer :nip
    attr_reader :nama

    def initialize(nip="123",nama="Kasir")
        puts "Membuat object Kasir dengan NIP : #{nip} dan Nama : #{nama}"

        @nip = nip
        @nama = nama
    end

    def nip
        @nip
    end

    def nama=(n)
        @nama = n
    end

    def to_s
        "Kasir #{@nip} - #{@nama}"
    end
end

class Produk
    attr_accessor :kode, :nama, :harga

    @@jumlah_produk = 0

    def initialize(k="", n="", h=0.0)
        @@jumlah_produk += 1
        @kode,@nama,@harga = k,n,h
    end

    def to_s
        "Produk #{@kode} - #{@nama} : Rp. #{@harga} | Jumlah Produk : #{@@jumlah_produk}"
    end
end

class PenjualanDetail

    attr_accessor :produk, :jumlah

    def subtotal
        @produk.harga * @jumlah
    end

end

class Penjualan
    attr_accessor :daftar_belanja, :waktu, :kasir

    def initialize
        @daftar_belanja = Array.new
    end

    def total
        total_belanja = 0.0
        @daftar_belanja.each do |b|
            total_belanja += b.subtotal
        end
        total_belanja
    end
end

def demo
    puts "Menjalankan demo OOP"

    endy = Kasir.new("101", "Endy")

    puts endy
    puts "NIP endy : #{endy.nip}"
    endy.nip = "999"
    puts "NIP endy : #{endy.nip}"


    endy.nama = "Endy Muhardin"
    puts "Nama kasir : #{endy.nama}"


    nasi = Produk.new
    nasi.kode = "N-001"
    nasi.nama = "Nasi Putih"
    nasi.harga = 10000.00

    puts nasi

    ayam = Produk.new
    ayam.kode = "A-001"
    ayam.nama = "Ayam Gulai"
    ayam.harga = 12000.00

    puts ayam
    puts nasi

    pd1 = PenjualanDetail.new
    pd1.produk = nasi
    pd1.jumlah = 1

    pd2 = PenjualanDetail.new
    pd2.produk = ayam
    pd2.jumlah = 2

    p = Penjualan.new
    p.daftar_belanja << pd1
    p.daftar_belanja << pd2
    puts p.total


end

demo

