class Calculadora
    def somar(numero1, numero2)
        numero1 + numero2
    end

    def subtrair(numero1, numero2)
        numero1 - numero2
    end

    def multiplicar(numero1, numero2)
        numero1 * numero2
    end

    def dividir(numero1, numero2)
        if numero2 == 0
           return "Ao dividir, o 2° número não pode ser zero (0)"
        else
           numero1 / numero2
        end
    end
end