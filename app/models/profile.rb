class Profile < ApplicationRecord
  belongs_to :user
  
  
   
  validates_presence_of   :firstname, :message => 'Please Enter User  Name.'
  validates_presence_of   :lastname, :message => 'Please Enter Your Second name.'
  validates_presence_of   :door_no, :message => 'Please Enter te door number.'
  validates_presence_of   :spouse_name, :message => 'Please Enter Your spouse_name.'
  validates_presence_of   :Number_of_Cars, :message => 'Please Enter number of cars.'
  validates_presence_of   :user_id, :message => 'Please Enter Your user_id.'
  
  validates :firstname,:lastname ,:spouse_name, presence: true, format: { with: /\A[a-z]*\z/i, message:  "Name must only contain letters." }

 end
