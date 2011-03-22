class Enquiry < ActiveRecord::Base
  belongs_to :user, :class_name => "User", :foreign_key => "user_id"
  validates_presence_of :first_name, :last_name, :email_address, :contact_telephone
  validates_format_of :email_address, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i
  

  module Scopes
      def by_user(user)
        where(:user_id => user)
      end
  end
  extend Scopes
  
end
