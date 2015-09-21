class PharmacyStock < ActiveRecord::Base
	after_create :create_mirror
		after_update :update_mirror
		has_many :mirror_pharmacy_stocks

		private

		def create_mirror
			amount = self.amount
			MirrorPharmacyStock.create(amount: amount, pharmacy_stock_id: self.id)
		end

		def update_mirror
			amount = self.amount
			self.mirror_pharmacy_stocks.each do |m|
				m.update(amount: amount)
			end
		end
end
