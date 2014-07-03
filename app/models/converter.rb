class Converter
	attr_accessor :orientation :grayscale, :outline, :page_width, :page_height, :margin_left, 
                :margin_right, :margin_top, :margin_bottom, :cover, :toc, :toc_disable_back_links,
                :toc_disable_links, :toc_no_dots, :toc_depth, :toc_header_font_size, :toc_header_text,
                :toc_l1_font_size, :toc_l1_indentation, :toc_l2_font_size, :toc_l2_indentation,
                :toc_l3_font_size, :toc_l3_indentation, :toc_l4_font_size, :toc_l4_indentation,
                :toc_l5_font_size, :toc_l5_indentation, :toc_l6_font_size, :toc_l6_indentation,
                :toc_l7_font_size, :toc_l7_indentation, :default_header, :header_line, :footer_line,
                :header_font_size, :header_spacing, :footer_font_size, :footer_spacing, :header_html,
                :header_left, :header_center, :header_right, :footer_html, :footer_left, :footer_center,
                :footer_right, :no_background, :stop_slow_scripts, :forms, :print_media_type,
                :disable_internal_links, :disable_external_links, :disable_javascript,
                :disable_smart_shrinking, :disable_pdf_compression, :zoom, :copies, :page_offset,
                :outline_depth, :dpi, :minimum_font_size, :title, :encoding, :user_style_sheet,
                :redirect_delay, :"cookie-name", :"cookie-value", :"custom_header-name", :"custom_header-value",
                :username, :password, :"post-name", :"post-value", :"replace-name", :"replace-value"

  def self.default
  	pdf = new
  end

end
# orientation - portrait
# grayscale - false
# outline - true
# page_width - 210
# page_height - 297
# margin_left - 10
# margin_right - 10
# margin_top - 10
# margin_bottom - 10
# cover - cover
# toc - false
# toc_disable_back_links - false
# toc_disable_links - false
# toc_no_dots - false
# toc_depth - 3
# toc_header_font_size - 15
# toc_header_text - toc_header_text
# toc_l1_font_size - 12
# toc_l1_indentation - 0
# toc_l2_font_size - 10
# toc_l2_indentation - 20
# toc_l3_font_size - 8
# toc_l3_indentation - 40
# toc_l4_font_size - 6
# toc_l4_indentation - 60
# toc_l5_font_size - 4
# toc_l5_indentation - 80
# toc_l6_font_size - 2
# toc_l6_indentation - 100
# toc_l7_font_size - 0
# toc_l7_indentation - 120
# default_header - false
# header_line - false
# footer_line - false
# header_font_size - 11
# header_spacing - 0
# footer_font_size - 11
# footer_spacing - 0
# header_html - header_html
# header_left - header_left
# header_center - header_center
# header_right - header_right
# footer_html - footer_html
# footer_left - footer_left
# footer_center - footer_center
# footer_right - footer_right
# no_background - false
# stop_slow_scripts - true
# forms - false
# print_media_type - false
# disable_internal_links - false
# disable_external_links - false
# disable_javascript - false
# disable_smart_shrinking - false
# disable_pdf_compression - false
# zoom - 1
# copies - 1
# page_offset - 1
# outline_depth - 4
# dpi - 300
# minimum_font_size - 5
# title - title
# encoding - encoding
# user_style_sheet - user_style_sheet
# redirect_delay - 200
# cookie-name - cookie-name
# cookie-value - cookie-value
# custom_header-name - custom_header-name
# custom_header-value - custom_header-value
# username - username
# password - password
# post-name - post-name
# post-value - post-value
# replace-name - replace-name
# replace-value - replace-value
