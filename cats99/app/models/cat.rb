class Cat < ApplicationRecord
    include ActionView::Helpers::DateHelper


    validates :birth_date, :color, :name, :sex, :description, presence: true

    def age
        #YYYY-MM-DD
        #"1995-12-18"
        #pull out y, m and d individually

        age = Date.today.year - self.birth_date.year

    end

end