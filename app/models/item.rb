class Item < ApplicationRecord
  enum trading_status:{attack: 0,spells:1,defend:2,item:3, abilities:4} #例え
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :size

  belongs_to user, foreign_key: 'user_id'
　belongs_to :category
end
