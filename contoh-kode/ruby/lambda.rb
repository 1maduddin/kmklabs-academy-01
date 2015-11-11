def halo(nama, kodeprogram)
    puts "Halo #{nama}"
    #hasil = kodeprogram.call(nama)
    hasil = kodeprogram.call
    puts "Hasil : #{hasil}"
end

kapital = Proc.new do |x|
    puts "Proc menerima input #{x}"
    x.capitalize
end

hurufbesar = lambda do |x|
    puts "Lambda menerima input #{x}"
    return x.upcase
end

#halo("endy",kapital)
#halo("tommy", hurufbesar)

def coba_proc
    Proc.new { puts "Ini Proc"; return}.call
    puts "Coba Proc selesai"
end

def coba_lambda
    lambda { puts "Ini Lambda"; return}.call
    puts "Coba Lambda selesai"
end

coba_proc
coba_lambda

