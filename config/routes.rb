Rails.application.routes.draw do
  resources :counselling_records

  resources :counsellors

  resources :discharges

  resources :packages

  resources :subdomains

  resources :pharmacy_invoices

  resources :mirror_pharmacy_stocks

  resources :optical_invoices

  resources :optometrists

  resources :pharmacy_stocks

  resources :optical_stocks

  resources :lgas

  resources :states

  resources :optometrist_records

  resources :visual_acuities

  resources :invoices

  resources :surgery_schedules

  resources :admissions

  resources :lens_types

  resources :anaesthesia

  resources :lab_records

  resources :rooms

  resources :room_masters

  resources :ophthalmologist_records

  resources :optical_prescriptions

  resources :procedure_records

  resources :services

  resources :service_categories

  resources :file_records

  resources :appointments

  resources :consultants

  resources :clinics

  resources :consultant_categories

  resources :time_slots

  resources :reserve_funds

  resources :patients

  resources :referrers

  resources :companies

  resources :occupations

  resources :nationalities

  resources :religions

  devise_for :users
  resources :users

  root "patients#index"

end
