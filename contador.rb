class AnalizaTexto
    
    def initialize(texto)
        @texto = texto
    end

    def texto=(nuevo_texto)
        @texto = nuevo_texto
    end

    def cadena_palabras
        @texto.downcase.scan(/[\w]+/)
    end

    def cuenta
        lista_de_palabras = cadena_palabras
        cuenta = Hash.new(0)
        for palabra in lista_de_palabras
            cuenta[palabra] += 1
        end
        cuenta
    end
end

analisis = AnalizaTexto.new("Este texto es un texto como este")
puts analisis.cuenta
analisis.cuenta.each {|key,value| puts  " palabra #{key}, veces #{value}" }

analisis.texto = "Nuevo texto nuevo calculo nuevo conteo"
puts analisis.cuenta
