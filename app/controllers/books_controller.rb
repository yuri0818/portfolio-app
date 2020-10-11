class BooksController < ApplicationController
    
  
  def search
     itemName = params[:serect]
     URI.encode_www_form({itemName: serect})
     uri = parse("https://app.rakuten.co.jp/services/api/IchibaItem/Search/20170706?[itemName]=[]…")
     response = NET::HTTP>get.response(uri)
     result = JSON.parse(response.bady)
     @itemName = resul ["results"][0][itemName]
    end
  
end

