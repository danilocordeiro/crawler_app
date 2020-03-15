class Crawl
  attr_accessor :title, :image_url, :rating, :genre, :release_date
  
  def crawl_new_movie(url)
          doc = Nokogiri::HTML(open(url))
          doc.css('script').remove
          self.title = doc.at("//a[@id = 'poster_link']").attr('data-title')
          
          return true
  end
  
  def save_movie
      movie = Movie.new(
          title: self.title)
      movie.save
  end
end