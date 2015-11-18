class Classmate < ActiveRecord::Base
  attr_accessible :githubProfile, :name, :website, :avatar

  mount_uploader :avatar, AvatarUploader
end
