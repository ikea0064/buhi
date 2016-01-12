class User < ActiveRecord::Base
  has_many :event_users, :dependent => :delete_all

  def total_amount
    self.event_users.inject(0) do |sum, event_user|
      sum + event_user.amount
    end
  end
end
