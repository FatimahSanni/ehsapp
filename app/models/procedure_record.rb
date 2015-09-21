class ProcedureRecord < ActiveRecord::Base
  belongs_to :patient
  belongs_to :consultant
  has_many :procedures
  accepts_nested_attributes_for :procedures, reject_if: :all_blank, allow_destroy: true
end
