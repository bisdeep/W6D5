class Cat < ApplicationRecord
    include ActionView::Helpers::DateHelper


    validates :birth_date, :name, :sex, :description, presence: true
    validates :color, presence: true, inclusion: {in: %w(red black blue white green yellow), message: "%{value} is invalid color"}


    def age
        age = Date.today.year - self.birth_date.year
    end

end