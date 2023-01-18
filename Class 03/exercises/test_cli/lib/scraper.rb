require 'nokogiri'
require 'open-uri'
require 'json'

class Scraper
  SCRAPE_URL_HEAD = "http://books.toscrape.com/catalogue/category/books/"
  SCRAPE_URL_TAIL = "/index.html"
  def self.scrape_books(input)
    puts "Fetching Books"
    doc = Nokogiri::HTML(URI.open(SCRAPE_URL_HEAD + input + SCRAPE_URL_TAIL))
    book_list = []
    # scraped_doc_list = doc.css(".product_pod")[0].css('h3').text
    scraped_doc_list = doc.css(".product_pod")
    scraped_doc_list.each do |book|
      book_list << {
        title: book.css('h3').text,
        price: book.css('.product_price').css('.price_color').text,
        availability: book.css('.product_price').css('.availability').text.strip
      }
    end
    book_list.each do |book|
      puts "Title: #{book[:title]} | Price: #{book[:price]} | Availability: #{book[:availability]}"
    end
  end
end