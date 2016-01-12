class Event < ActiveRecord::Base
  has_many :event_users, :dependent => :delete_all
  accepts_nested_attributes_for :event_users
  before_save :delete_event_user, :set_event_user_amount

  def delete_event_user
    return unless self.id.present?

    self.event_users.each do |event_user|
      event_user.destroy if event_user.id.present?
    end
  end

  #金額を設定
  def set_event_user_amount
    return unless self.event_users.present?
    #削除しちゃう
    # delete_event_user if self.id.present?

    num = self.event_users.select{|event_user| event_user.id.nil?}.size
    self.event_users.each do |event_user|
      event_user.amount = (self.amount / num).floor if event_user.id.nil?
    end
  end
end
