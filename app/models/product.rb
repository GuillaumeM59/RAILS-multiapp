class Product < ActiveRecord::Base
  belongs_to :brand
  #delegate :name, :logo, :to => :brand

  mount_uploader :visuel, VisuelUploader
end
