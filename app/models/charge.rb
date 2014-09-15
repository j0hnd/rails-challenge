class Charge < ActiveRecord::Base
  #has_many :customer
  scope :success, -> { where paid: 't', disputed: 'f' }
  scope :failed, -> { where paid: 'f' }
  scope :disputed, -> { where disputed: 't' }
end
