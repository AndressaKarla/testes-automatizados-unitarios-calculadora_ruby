describe Calculadora do
  before(:all) do
   @calculadora_fixture = carregar_fixture('calculadora')
  end

  context "Somar" do
    before(:all) do
      @resultado_obtido = calculadora.somar(@calculadora_fixture['numero_positivo']['unidade'], @calculadora_fixture['numero_positivo']['centena2']);

      @resultado_esperado = @calculadora_fixture['numero_positivo']['unidade'] + @calculadora_fixture['numero_positivo']['centena2'];
    end

    it "Validar soma de números positivos de unidade e de centena" do
      expect(@resultado_obtido).to eq(@resultado_esperado)
    end
  end
end