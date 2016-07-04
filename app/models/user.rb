class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
   has_one :peer
   
   after_create :create_peer
   
   def create_peer
     p = new Peer
     p.user = self
     p.save!
   end
end
