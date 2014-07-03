class Page < ActiveRecord::Base
	has_many :tags, as: :markable
	belongs_to :magazine
	before_destroy :remove_page_pdf


	def name_to_path
		self.gsub("\ ", "_").downcase
	end

	 def html
  	html = Nokogiri::HTML(open(self.url))
  	
  	# html.search("link").each do |element|	
  	# 	uri = URI.parse element["href"]
  	# 	if uri.host.nil?
  	# 		puts "------ Antes -----"
  	# 		puts element
  	# 		puts "------------------"
  			
  	# 		href = self.uri.host + uri.path
  	# 		element["href"] = href

  	# 		puts "------ depois -----"
  	# 		puts element
  	# 		puts "------------------"
  	# 	end
  	
  	html.to_s.html_safe
  end

  def uri
  	URI.parse(self.url)
  end

  def path 
  	"#{self.magazine.path}page_#{self.number}.pdf"
  end

  def url_path
  	"/magazines/#{self.magazine.name_to_path}/page_#{self.number}.pdf"
  end

  def generate_pdf
	  pdf = WickedPdf.new.pdf_from_string(self.html)
			
		File.open(self.path, 'wb') do |file|
		  file << pdf
		end
  end

  def remove_page_pdf
  	`rm #{self.path}`
  end

  def get_pdf
  	resource = "/querybuilder/api.php?url=#{self.uri.to_s}&orientation=portrait&grayscale=false&outline=true&page_width=210&page_height=297&margin_left=10&margin_right=10&margin_top=10&margin_bottom=10&cover=&toc=false&toc_disable_back_links=false&toc_disable_links=false&toc_no_dots=false&toc_depth=3&toc_header_font_size=15&toc_header_text=&toc_l1_font_size=12&toc_l1_indentation=0&toc_l2_font_size=10&toc_l2_indentation=20&toc_l3_font_size=8&toc_l3_indentation=40&toc_l4_font_size=6&toc_l4_indentation=60&toc_l5_font_size=4&toc_l5_indentation=80&toc_l6_font_size=2&toc_l6_indentation=100&toc_l7_font_size=0&toc_l7_indentation=120&default_header=false&header_line=false&footer_line=false&header_font_size=11&header_spacing=0&footer_font_size=11&footer_spacing=0&header_html=&header_left=&header_center=&header_right=&footer_html=&footer_left=&footer_center=&footer_right=&no_background=false&stop_slow_scripts=true&forms=false&print_media_type=false&disable_internal_links=false&disable_external_links=false&disable_javascript=false&disable_smart_shrinking=false&disable_pdf_compression=false&zoom=1&copies=1&page_offset=1&outline_depth=4&dpi=300&minimum_font_size=5&title=&encoding=&user_style_sheet=&redirect_delay=200&cookie-name=&cookie-value=&custom_header-name=&custom_header-value=&username=&password=&post-name=&post-value=&replace-name=&replace-value=" 

  	Net::HTTP.start("htmltopdfapi.com") do |http|
	    resp = http.get(resource)
	    open(self.path, "wb") do |file|
	        file.write(resp.body)
	    end
		end
  end
end
