class Produk
    def halo
        puts "Ini class produk"
    end

    def method_missing(method_sym, *arguments, &block)
        puts "Menjalankan method #{method_sym}"
    end
    def respond_to?(method_sym, include_private = false)
       true 
    end
end

p = Produk.new
p.halo
p.coba

puts "Bisa menjalankan method test? #{p.respond_to? 'blablabla'}"
p.blablbal
