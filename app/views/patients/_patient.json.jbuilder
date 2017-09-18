json.extract! patient, :id, :code, :name, :last_name, :birthdate, :phone, :allergies, :manager, :created_at, :updated_at
json.url patient_url(patient, format: :json)
