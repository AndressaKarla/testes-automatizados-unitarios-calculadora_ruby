module Helpers
    def carregar_fixture(nome_arquivo)
        JSON.parse(File.read("spec/support/fixtures/#{nome_arquivo}.json"))
    end
end