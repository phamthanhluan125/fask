class Clip < ApplicationRecord
  include PublicActivity::Model
  tracked owner: ->(controller, model){controller && controller.current_user}

  belongs_to :user
  belongs_to :post
end
