class Artigo < ActiveRecord::Base
	has_many :comentarios
	validates :titulo, presence: true, length: { minimum: 5 }
	validates :texto, presence: true
end