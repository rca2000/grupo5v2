class HomeController < ApplicationController
  def index
  end

  def acercade
  end

  def servicio
  end

  def contacto
  end
  
  def locales
    @restaurants = Restaurant.all
  end
end
