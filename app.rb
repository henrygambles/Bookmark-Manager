require 'sinatra/base'
require_relative './lib/bookmark'



class BookmarkManager < Sinatra::Base
    get '/' do
    erb(:index)
    end

    get '/bookmarks' do 
 
        @bookmark= Bookmark.all
        p @bookmark
    erb(:'bookmarks/index')
    end

    run! if app_file == $0

end





    