require_relative '../produk'

describe Produk do

    before :all do
        puts "Menjalankan before"
        @p = Produk.new "N-001", "Nasi Goreng"
    end

    after :all do
        puts "Menjalankan after"
    end

    it "should have kode variables" do
        expect(@p.kode).to eq "N-001"
    end

    it "should have nama variables" do
        expect(@p.nama).to eq "Nasi Goreng"
    end

end
