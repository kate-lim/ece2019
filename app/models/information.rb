require 'uwaterlooapi'

class Information < ActiveRecord::Base
	def get_news_info
		api = UWaterlooAPI.new('7467c4874254fc4f0ee969d9edaaada3')
		
		data_to_return = Array.new

		eng_news = api.news.site('engineering')
		date_criteria = Date.today - 1.months
		eng_news.each do |article|
			article_date = DateTime.iso8601(article.published).to_date
			if(article_date > date_criteria)
				formatted = {
					"site"		=> 'engineering',
					"article"	=> article
				}
				data_to_return.push(formatted)
			end
		end

		date_criteria = Date.today - 1.months
		general_news = api.news.site('news')
		general_news.each do |article|
			article_date = DateTime.iso8601(article.published).to_date
			if(article_date > date_criteria)
				formatted = {
					"site"		=> 'news',
					"article"	=> article
				}
				data_to_return.push(formatted)
			end
		end

		date_criteria = Date.today - 2.weeks
		sys_news = api.news.site('information-systems-technology')
		sys_news.each do |article|
			article_date = DateTime.iso8601(article.published).to_date
			if(article_date > date_criteria)
				formatted = {
					"site"		=> 'information-systems-technology',
					"article"	=> article
				}
				data_to_return.push(formatted)
			end
		end

		return data_to_return
	end
end
