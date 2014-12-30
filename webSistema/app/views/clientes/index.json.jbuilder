json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nome, :servico_id
  json.url cliente_url(cliente, format: :json)
end
