# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  description :text             not null
#  name        :string           not null
#  sex         :string(1)        not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Cat < ApplicationRecord
    include ActionView::Helpers::DateHelper


    validates :birth_date, :name, :sex, :description, presence: true
    validates :color, presence: true, inclusion: {in: %w(Red Black Blue White Green Yellow), message: "%{value} is invalid color"}

    has_many :rental_requests,
        primary_key: :id,
        foreign_key: :cat_id,
        class_name: :CatRentalRequest,
        dependent: :destroy

    def age
        age = Date.today.year - self.birth_date.year
    end

end
