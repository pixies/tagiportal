json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :login_usuario, :senha_usuario, :tipo_usuario
  json.url usuario_url(usuario, format: :json)
end
