class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:stripe_connect]
         attachment :profile_image
         has_many :cars, dependent: :destroy
  		 has_many :paid_charges,     class_name: 'Charge', foreign_key: 'user_id',   dependent: :destroy
  		 has_many :received_charges, class_name: 'Charge', foreign_key: 'vendor_id', dependent: :destroy
end
