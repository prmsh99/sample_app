class User < ActiveRecord::Base
	attr_accessor :password,:username
	
	 EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :username, :presence =>true,:uniqueness =>true,:length=>{:in=>3..20}
	validates :email,:presence=>true,:uniqueness =>true ,format: { with: EMAIL_REGEX }
	has_secure_password
	validates :password_digest,length:{minimum:6}
end
