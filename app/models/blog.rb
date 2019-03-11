class Blog < ApplicationRecord
  belongs_to :user

  validates :title,length:{minimum:1,maximum:50}
  validates :content,length:{minimum:1,maximum:140}

end
