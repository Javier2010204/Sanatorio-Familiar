json.extract! patient, :id, :code, :first_name, :last_name, :birthday, :age, :phone, :email, :dpi, :sex, :manager, :nit, :alergies, :annotations, :status, :created_at, :updated_at
json.url patient_url(patient, format: :json)
