# == Schema Information
#
# Table name: polls
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  title      :string
#  author     :integer
#

class Poll < ApplicationRecord
  belongs_to :auth,
    primary_key: :id,
    foreign_key: :author,
    class_name: "User"

  has_many :questions,
    primary_key: :id,
    foreign_key: :poll_id,
    class_name: "Question"

end
