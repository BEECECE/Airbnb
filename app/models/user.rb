class User < ApplicationRecord
    validates :phone_number,
    presence: true, 
    uniqueness: true, 
    format: { with: /\A(?:(?:\+|00)33[\s.-]{0,3}(?:\(0\)[\s.-]{0,3})?|0)[1-9](?:(?:[\s.-]?\d{2}){4}|\d{2}(?:[\s.-]?\d{3}){2})\z/, message: "please enter valid phone number"}
    
    validates :email,
    presence: true, 
    uniqueness: true, 
    format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "please enter a valid email" }

    has_many :reservations
    has_many :accomodations

end


