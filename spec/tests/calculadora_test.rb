describe Calculadora do
  before(:all) do
   @calculadora_fixture = carregar_fixture('calculadora')
  end

  context "Somar" do
    it "Validar soma de números positivos de unidade e de centena" do
      @resultado_obtido = calculadora.somar(@calculadora_fixture['numero_positivo']['unidade'], @calculadora_fixture['numero_positivo']['centena2']);

      @resultado_esperado = 1000;

      expect(@resultado_obtido).to eq(@resultado_esperado)
    end
  end

  context "Subtrair" do
    it "Validar subtração de número positivo de centena e número negativo de unidade" do
      @resultado_obtido = calculadora.subtrair(@calculadora_fixture['numero_positivo']['centena1'], @calculadora_fixture['numero_negativo']['unidade']);

      @resultado_esperado = 999;

      expect(@resultado_obtido).to eq(@resultado_esperado)
    end
  end

  context "Multiplicar" do
    it "Validar multiplicação de números positivos neutro [zero (0)] e de dezena" do
      @resultado_obtido = calculadora.multiplicar(@calculadora_fixture['numero_positivo']['neutro'], @calculadora_fixture['numero_positivo']['dezena2']);

      @resultado_esperado = 0;

      expect(@resultado_obtido).to eq(@resultado_esperado)
    end
  end

  context "Dividir" do
    it "Validar não divisão de números positivos de dezena e neutro [zero (0)]" do
      @resultado_obtido = calculadora.dividir(@calculadora_fixture['numero_positivo']['dezena1'], @calculadora_fixture['numero_positivo']['neutro']);

      @resultado_esperado = "Ao dividir, o 2° número não pode ser zero (0)";

      expect(@resultado_obtido).to eq(@resultado_esperado)
    end

    it "Validar divisão de número negativo de dezena e número positivo de unidade" do
      @resultado_obtido = calculadora.dividir(@calculadora_fixture['numero_negativo']['dezena'], @calculadora_fixture['numero_positivo']['unidade']);

      @resultado_esperado = -99;

      expect(@resultado_obtido).to eq(@resultado_esperado)
    end
  end
end