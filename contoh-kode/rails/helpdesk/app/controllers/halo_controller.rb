require 'feedjira'

class HaloController < ApplicationController


    def coba
        url = "http://software.endy.muhardin.com/atom.xml"
        @feed = Feedjira::Feed.fetch_and_parse url
    end

    def contoh
        nama = params[:nama]
        puts "Nama : #{nama}"

        @user = nama.capitalize

    end

end
