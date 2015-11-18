class HaloController < ApplicationController

    def coba


    end

    def contoh
        nama = params[:nama]
        puts "Nama : #{nama}"

        @user = nama.capitalize

    end

end
