json.extract! pet, :id, :name, :last_hugged_at, :email, :fluffy, :colour, :owner_id, :created_at, :updated_at
json.url pet_url(pet, format: :json)
