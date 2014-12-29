class ArtigosController < ApplicationController
	http_basic_authenticate_with name: "cflb", password: "123qwe", only: [:new, :create] 
	def index
		@artigos = Artigo.all
	end

	def new
		@artigo = Artigo.new
	end

	def create
		@artigo = Artigo.new(artigos_params)

		if @artigo.save
			redirect_to @artigo
		else
			render 'new'
		end
	end

	def show
		@artigo = Artigo.find(params[:id])
	end

	def edit
		@artigo = Artigo.find(params[:id])
	end

	def update
		@artigo = Artigo.find(params[:id])

		if @artigo.update(artigos_params)
			redirect_to @artigo
		else
			render 'Editar'
		end
	end

	private
	def artigos_params
		params.require(:artigo).permit(:titulo,:texto)
	end
	
end
