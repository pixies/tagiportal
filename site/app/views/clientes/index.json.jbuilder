json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nome_cliente, :telefone_cliente, :email_cliente, :id_usuario_id
  json.url cliente_url(cliente, format: :json)
end
