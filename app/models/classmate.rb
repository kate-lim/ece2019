class Classmate < ActiveRecord::Base
  attr_accessible :githubProfile, :name, :website, :avatar

  mount_uploader :avatar, AvatarUploader
  skip_callback :commit, :after, :save, :remove_previously_stored_avatar
end
