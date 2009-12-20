require 'nokogiri'
require 'open-uri'

class Woot
  
  attr_reader :div
  attr_reader :doc
  
  def initialize
    @doc = Nokogiri::HTML(open('http://www.woot.com/'))
    @div = @doc.at_css('div.productDescription')
  end
  
  def title
    @title ||= @div.css('h2.fn').text
  end
  
  def description
    @description ||= @div.css('dd').last.text.gsub(/(\t\n)/, '').strip
  end
  
  def price
    @price ||= @div.css('h3.price').text
  end
  
  def href
    @link ||= @div.css('h5 a').first[:href]
  end
  
  # nokogiri doesn't have a marshal method
  def self.parse
    woot = Woot.new
    {:title => woot.title, :description => woot.description, :price => woot.price, :href => woot.href}
  end
  
end