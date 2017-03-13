class Assessment < ApplicationRecord
  # AM: Encourage you to look into Rails Validations. Great way to place Rails-level constraints on your data. Easy to learn and will look good to potential employers that use Rails.
  belongs_to :user
end
