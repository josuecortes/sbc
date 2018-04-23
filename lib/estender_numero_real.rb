# encoding: UTF-8
module NumeroReal

  def real(n_casas_decimais = nil)
    if n_casas_decimais
      n_casas_decimais = n_casas_decimais.to_i
      numero = self.round(n_casas_decimais)
      ActionController::Base.helpers.number_to_currency(numero, unit: "", separator: ",", delimiter: ".", precision: n_casas_decimais)
    else
      ActionController::Base.helpers.number_to_currency(self, unit: "", separator: ",", delimiter: ".", precision: 2)
    end
  end

  def trocar_ponto_por_virgula(n_casas_decimais = nil)
    if n_casas_decimais
      n_casas_decimais = n_casas_decimais.to_i
      numero = self.round(n_casas_decimais)
      ActionController::Base.helpers.number_to_currency(numero, unit: "", separator: ",", delimiter: ".", precision: n_casas_decimais)
    else
      n = self.to_s[(self.to_s.index(".") + 1), 30].size
      ActionController::Base.helpers.number_to_currency(self, unit: "", separator: ",", delimiter: ".", precision: n)
    end
  end

  def mudar_virgula_para_ponto
    self.to_f
  end

  def round_up(exp = 0)
    multiplier = 10 ** exp
    ((self * multiplier).ceil).to_f/multiplier.to_f
  end

  # def round_down(exp=0)
  #   puts self
  #   multiplier = 10 ** exp
  #   puts ((self.round(10) * multiplier).round(10).floor).to_f/multiplier.to_f
  #   ((self.round(10) * multiplier).round(10).floor).to_f/multiplier.to_f
  # end

  def n_decimais
    self.to_s.split('.').last.size 
  end
end

class Float
  include NumeroReal

  def round(n = 0)
    (self.to_d.round(n)).to_f
  end

  def truncate(n = 0)
    (self.to_d.truncate(n)).to_f
  end

  def /(n)
    n = n.to_f
    if n == 0.0
      return 0.0
    else
      return (self.to_d./(n)).to_f
    end
  end

  def *(n)
    n = n.to_f
    (self.to_d.*(n)).to_f
  end

  def +(n)
    n = n.to_f
    (self.to_d.+(n)).to_f
  end

  def -(n)
    n = n.to_f
    (self.to_d.-(n)).to_f
  end
end

class BigDecimal
  include NumeroReal
end
