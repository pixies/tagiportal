json.array!(@patentes) do |patente|
  json.extract! patente, :id, :noma_patente, :id_patente, :id_usuario_id
  json.url patente_url(patente, format: :json)
end
