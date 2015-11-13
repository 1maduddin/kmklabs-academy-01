buah = ['mangga', 'jeruk', 'apel']

buah.each do |b|
    puts b.capitalize
end

jumlah_huruf = buah.map do |x|
    x.length
end

puts jumlah_huruf


huruf_besar = buah.map do |x|
    x.upcase
end

puts huruf_besar

File.open('proc.rb') do |f|
    f.each_line do |baris|
        puts baris
    end
end
