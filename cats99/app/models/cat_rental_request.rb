# == Schema Information
#
# Table name: cat_rental_requests
#
#  id         :bigint           not null, primary key
#  end_date   :date             not null
#  start_date :date             not null
#  status     :string           default("PENDING"), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  cat_id     :integer          not null
#
# Indexes
#
#  index_cat_rental_requests_on_cat_id  (cat_id)
#
class CatRentalRequest < ApplicationRecord
    validates :status, presence: true, inclusion: {in: %w(PENDING APPROVED DENIED), message: "Invalid Status"}
    validates :cat_id, :start_date, :end_date, presence: true
    # validates :cat_id, uniqueness: {scope: :name}

    belongs_to :cat, 
        primary_key: :id,
        foreign_key: :cat_id,
        class_name: :Cat

    def overlapping_request
        CatRentalRequest.select(:status).where.not("start_date > end_date OR end_date < start_date")
    end

    def overlapping_approved_requests
        overlapping_request.where(status: 'APPROVED')
    end

    def does_not_overlap_approved_request
        if overlapping_approved_requests.any?
            return false
        end
        true
    end

end
