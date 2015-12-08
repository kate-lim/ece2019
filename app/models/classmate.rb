class Classmate < ActiveRecord::Base
	attr_accessible :githubProfile, :name, :website, :avatar, :remove_avatar, :avatar_cache, :approved

	mount_uploader :avatar, AvatarUploader

	validates :name, presence: true

	rails_admin do
		list do
			field :name
			field :githubProfile
			field :website
			field :avatar
			field :approved, :toggle
		end
	end

	def name=(value)
		# Sanitize Code
		write_attribute(:name, value)
	end

	def githubProfile=(value)
		# Sanitize Code
		write_attribute(:githubProfile, value)
	end

	def website=(value)
		# Sanitize Code
		write_attribute(:website, value)
	end

	def avatar=(value)
		# Sanitize Code
		write_attribute(:avatar, value)
	end
end
