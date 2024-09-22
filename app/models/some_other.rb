class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable
    
  #   before_save {self.email = email.downcase} #before saving the email in db, convert to lower case

  #   validates :name,
  #   presence: true, #name cant be empty
  #   length: {maximum: 50} #length cannot exceed 30 characters

  #   VALID_EMAIL_REGEX = /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/ #email format checker string
  #   validates :email,
  #   presence: true,
  #   length: {maximum: 255}, 
  #   format: {with: VALID_EMAIL_REGEX},
  #   uniqueness: {case_sensitive: false} #format should be email format, email should be unique, and case insensitive

  #   validates :user_type, presence: true

  #   has_secure_password #store salt-hash encrypted password to password field in table 

  #   has_many :projects, foreign_key: :manager_id
  #   has_many :project_users
  #   has_many :projects, through: :project_users #many to many relationship
  #   has_many :bugs, foreign_key: :developer_id
  #   has_many :bugs, foreign_key: :qa_id
end