feature 'see bookmars' do 
    scenario 'it shows all the bookmarks' do 
        visit '/bookmarks'
        expect(page).to have_content('http://:www.google.com', 'http://www.yahoo.com')
    end 
end 