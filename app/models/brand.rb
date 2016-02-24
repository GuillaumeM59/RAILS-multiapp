class Brand < ActiveRecord::Base
  has_many :products, dependent: :destroy

  mount_uploader :logo, LogoUploader
end
