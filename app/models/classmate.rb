class Classmate < ActiveRecord::Base
  attr_accessible :githubProfile, :name, :website, :avatar, :remove_avatar, :avatar_cache, :approved

  mount_uploader :avatar, AvatarUploader

  rails_admin do
	  list do
	  	field :name
	  	field :githubProfile
	  	field :website
	  	field :avatar
  	  field :approved, :toggle
  	end
	end
end
