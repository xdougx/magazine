class Magazine < ActiveRecord::Base
	has_many :pages

	after_save :generate_magazine_folder

	def name_to_path
		self.name.gsub("\ ", "_").downcase
	end

	def path
		"#{Rails.root}/public/magazines/#{self.name_to_path}/"
	end
	
	def generate_magazine_folder
		if public_path_exists?
			unless Dir.exists?("#{Rails.root}/public/magazines/#{self.name_to_path}")
				`mkdir #{Rails.root}/public/magazines/#{self.name_to_path}`
			end
		else
			`mkdir #{Rails.root}/public/magazines`
			self.generate_magazine_folder
		end
	end

	def public_path_exists?
		Dir.exists?("#{Rails.root}/public/magazines")
	end
end
