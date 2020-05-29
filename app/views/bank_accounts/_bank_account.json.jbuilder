json.extract! bank_account, :id, :agency_id, :account_number, :limit, :created_at, :updated_at
json.url bank_account_url(bank_account, format: :json)
