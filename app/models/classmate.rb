class CustomValidator < ActiveModel::Validator
  def validate(record)
    if record.name.split(' ').length < 2
      record.errors[:name] << "Please enter both your first and last name"
    end
	end
end

class Classmate < ActiveRecord::Base
	attr_accessible :githubProfile, :name, :website, :avatar, :remove_avatar, :avatar_cache, :approved

	mount_uploader :avatar, AvatarUploader

	validates :name, presence: { message: "Your name can't be left empty" }
	validates :name, uniqueness: { case_sensitive: false, message: "A user by this name is already in our database" }
	validates :name, format: { with: /\A[a-zA-Z\s]+\z/, message: "Your name can only have letters" }


	validates :githubProfile, format: { with: /\A\z|\A(http:\/\/|https:\/\/)?(www.)?github.com(\/)[a-z|0-9]+\z/,
						message: "Github Page Invalid - must in the form of 'github.com/username"}

	validates :website, format: { with: /\A\z|\A(http:\/\/|https:\/\/)?(www.)?([a-zA-Z0-9]+).[a-zA-Z0-9]*.[a-z]{3}.?([a-z]+)?\z/,
						message: "Website URL Invalid"}


	validates_with CustomValidator

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

	def approved=(value)
		# Sanitize Code
		write_attribute(:approved, value)
	end
end