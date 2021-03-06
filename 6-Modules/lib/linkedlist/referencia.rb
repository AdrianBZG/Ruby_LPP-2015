require "linkedlist/version"

module Ref

  # Clase Referencia
  class Referencia
    include Comparable
    #Se tiene acceso de lectura y escritura a todos los atributos
    attr_accessor :autores, :titulo, :serie, :editorial, :numero_edicion, :fecha_publicacion, :numeros_isbn
    def initialize(autores, titulo, serie, editorial, numero_edicion, fecha_publicacion, numeros_isbn)
  	    @autores, @titulo, @serie, @editorial, @numero_edicion, @fecha_publicacion, @numeros_isbn = autores, titulo, serie, editorial, numero_edicion, fecha_publicacion, numeros_isbn
    end
  
    def get_referencia_formateada
      # Devuelve la referencia formateada (Estándar IEEE)
      # Este estándar es: Autores, Titulo del libro, Edicion. Lugar de publicación: Editorial, Año de publicación.
      # Omitimos 'Lugar de publicación ya que no lo tenemos'
      "#{@autores[0]}. #{@titulo}, #{@numero_edicion}. #{@editorial}, #{@fecha_publicacion}"
    end
    
    def <=>(other)
      return nil unless other.instance_of?Referencia
      @autores <=> other.autores
    end
    
    def ==(other)
      if other.is_a?Referencia
        @autores == other.autores
      else
        false
      end
    end
  end
  #
end
