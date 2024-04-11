Dir[File.join(File.dirname(__FILE__), "../app/*.rb")].each {|file| require file}

module Apps
    def calculadora
        @calculadora ||= Calculadora.new
    end 
end