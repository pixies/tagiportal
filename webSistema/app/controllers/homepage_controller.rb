class HomepageController < ApplicationController
  def index
#  	@artigo = {'titulo':'Titulo 1','post':'Mue post'}
  end

  def new
  	@artigo = Artigo.new
  end

  def create
  	@artigo = Artigo.new(params[:artigo])
  end

end
