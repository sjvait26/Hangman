class Comment < ActiveRecord::Base
   attr_accessible :title, :body, :author_name
    belongs_to :article
end
