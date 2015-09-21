class Service < ActiveRecord::Base
  after_create :create_mirror
  after_update :update_mirror
  belongs_to :service_category
  has_many :procedures
  has_many :mirror_services

  def create_mirror
  	amount = self.amount
	MirrorService.create(amount: amount, service_id: self.id)
  end

  def update_mirror
  	amount = self.amount
  	self.mirror_services.each do |mirror|
      mirror.update(amount: amount)
    end
  end

end
