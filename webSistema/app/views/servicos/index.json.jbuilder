json.array!(@servicos) do |servico|
  json.extract! servico, :id, :nome, :tempo_execucao
  json.url servico_url(servico, format: :json)
end
