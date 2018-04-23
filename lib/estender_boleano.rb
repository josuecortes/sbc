module Boleano
  def icone_check
    self ? "<i class='iconfa-ok'></i>".html_safe : ""
  end

  def icone_visibility
    self ? "<i class='material-icons'>visibility</i>".html_safe : ""
  end

  def sim_ou_nao
  	self ? "Sim" : "Não"
  end

  def to_bool
    self ? true : false
  end
end

class TrueClass
  include Boleano
end

class FalseClass
  include Boleano
end

class NilClass
  include Boleano

  def real(n = nil)
    ""
  end

  def round(n = 0)
    0.0
  end
end
