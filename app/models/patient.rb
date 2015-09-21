class Patient < ActiveRecord::Base
after_create :create_invoice, :set_mrn
  belongs_to :occupation
  belongs_to :nationality
  belongs_to :religion
  belongs_to :referrer
  belongs_to :state
  belongs_to :lga
  belongs_to :consultant
  belongs_to :package
  has_many :invoices
  validates :first_name, presence: true

  def full_name
    "#{self.first_name} #{self.middle_name} #{self.surname}"
  end
  
  private

  def create_invoice
  	amount = self.package.registration_fee
  	i = Invoice.create(patient_id: self.id, consultant_id: self.consultant_id)
  	Item.create(name: "REGISTRATION & CONSULTATION (#{self.package.name})", amount: amount, invoice_id: i.id)
  end

  def set_mrn
  	update_attribute(:mrn, "P#{self.id}H")
  end
end
