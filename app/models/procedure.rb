class Procedure < ActiveRecord::Base
  belongs_to :service
  belongs_to :procedure_record
end
