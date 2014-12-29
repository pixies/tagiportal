json.array!(@comentarios) do |comentario|
  json.extract! comentario, :id, :comentario, :body, :artigo_id
  json.url comentario_url(comentario, format: :json)
end
