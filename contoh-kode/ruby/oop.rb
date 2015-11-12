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

class Pembayaran
    attr_accessor :nilai

    def bayar
        puts "Pilih metode pembayaran, tunai atau kartu"
    end
end

class Tunai < Pembayaran
    attr_accessor :dibayar

    def kembalian
        @dibayar - @nilai
    end

    def bayar
        super
        puts "Metode pembayaran : tunai"
        puts "Nilai transaksi : #{@nilai}"
        puts "Dibayar : #{@dibayar}"
        puts "Kembalian : #{kembalian}"
    end
end

class Kartu < Pembayaran
    attr_accessor :bank, :no_kartu, :kode_otorisasi

    def bayar
        puts "Metode pembayaran : kartu"
        puts "Nilai transaksi : #{@nilai}"
        puts "Bank : #{@bank}"
        puts "No Kartu : #{@no_kartu}"

        validasi_kartu

        puts "Otorisasi : #{@kode_otorisasi}"
    end

    private

    def validasi_kartu
        puts "Menghubungi bank #{@bank} untuk mengecek keabsahan kartu #{@no_kartu}"
        @kode_otorisasi = 10.times.map{ 20 + Random.rand(11) }.join 
    end

end

class Penjualan
    attr_accessor :daftar_belanja, :waktu, :kasir 
    attr_reader :pembayaran

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

    def pembayaran=(p)
        @pembayaran = p
        p.nilai = total
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

    cash = Tunai.new
    cash.dibayar = 50000
    p.pembayaran = cash
    puts cash.bayar

    flazz = Kartu.new
    flazz.bank = "BCA"
    flazz.no_kartu = "1234567890"
    p.pembayaran = flazz
    # flazz.validasi_kartu # private method tidak bisa dipanggil dari luar
    flazz.bayar

end

demo

