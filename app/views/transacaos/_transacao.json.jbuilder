json.extract! transacao, :id, :estados, :licencas, :valor, :status, :created_at, :updated_at
json.url transacao_url(transacao, format: :json)
