class Comment < ActiveRecord::Base
  #attr_accessible :commenter, :body, :post

  belongs_to :post
end
