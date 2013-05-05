class Topic < ActiveRecord::Base
  attr_accessible :content, :region, :school_name, :school_type, :title
  
  belongs_to :user
  
  validates :user_id, presence: true
  validates :title, presence: true
  validates :content, presence: true
  
  def self.search(search)
    if search
      where 'name LIKE ?', "%#{search}"
    end
  end
  
  default_scope order: 'topics.created_at DESC'
end
