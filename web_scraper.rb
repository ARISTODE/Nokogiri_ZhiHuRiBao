require 'HTTParty'
require 'Nokogiri'
require 'JSON'
require 'Pry'
require 'csv'

page = HTTParty.get('http://daily.zhihu.com/');

parse_page = Nokogiri::HTML(page)

title_array=[]

parse_page.css('.main-content').css('.container-fixed-width').css('.main-content-wrap').css('.row').css('.wrap').css('.box').css('.title').map do |a|
	post_title = a.text
	title_array.push(post_title)
end

Pry.start(binding)


