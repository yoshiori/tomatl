class User < ActiveRecord::Base
  attr_accessible :image, :name, :nickname, :uid

  has_many :tasks

  def self.create_with_omniauth(auth)
    create! do |user|
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.nickname = auth["info"]["nickname"]
      user.image = auth["info"]["image"]
    end
  end
end
