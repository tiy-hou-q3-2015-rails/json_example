class Contact < ActiveRecord::Base

  attachment :profile

  validates :first_name, :last_name, :email, :profile, presence: true
  
  def full_name
    [last_name, first_name].join(", ")
  end
end
