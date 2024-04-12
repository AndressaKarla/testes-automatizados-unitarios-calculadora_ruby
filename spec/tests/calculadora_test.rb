describe Calculadora do
  before(:all) do
   @calculadora_fixture = carregar_fixture('calculadora')
  end

  context "Somar" do
    it "Validar soma de números positivos de unidade e de centena" do
      @resultado_obtido = calculadora.somar(@calculadora_fixture['numero_positivo']['unidade'], @calculadora_fixture['numero_positivo']['centena2']);

      @resultado_esperado = @calculadora_fixture['numero_positivo']['unidade'] + @calculadora_fixture['numero_positivo']['centena2'];

      expect(@resultado_obtido).to eq(@resultado_esperado)
    end
  end

  context "Subtrair" do
    it "Validar subtração de número positivo de centena e número negativo de unidade" do
      @resultado_obtido = calculadora.subtrair(@calculadora_fixture['numero_positivo']['centena1'], @calculadora_fixture['numero_negativo']['unidade']);

      @resultado_esperado = @calculadora_fixture['numero_positivo']['centena1'] - @calculadora_fixture['numero_negativo']['unidade'];

      expect(@resultado_obtido).to eq(@resultado_esperado)
    end
  end
end