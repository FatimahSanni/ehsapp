class OpticalStock < ActiveRecord::Base
	after_create :create_mirror
	after_update :update_mirror
	has_many :mirror_optical_stocks

	private

	def create_mirror
		amount = self.amount
		MirrorOpticalStock.create(amount: amount, optical_stock_id: self.id)
	end

	def update_mirror
		amount = self.amount
		self.mirror_optical_stocks.each do |m|
			m.update(amount: amount)
		end
	end
end
