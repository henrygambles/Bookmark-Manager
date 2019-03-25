require 'pg'


class Bookmark

    # def initialize

    # end 

    def self.all
        connection = PG.connect( dbname: 'bookmark_manager' )
        result = connection.exec("SELECT * FROM bookmarks")
        result.map { |bookmark| bookmark['url'] } 
        #bookmarks is a table
        #bookmark_manager is name of database

    end 


end