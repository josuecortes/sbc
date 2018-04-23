# encoding: UTF-8
module Datas
  def mes_e_ano
  	if self.nil?
    	"sem data"
    else
    	"#{self.to_s[5..6]}/#{self.to_s[0..3]}"
    end
  end

  # def to_s_br
  #   if self.nil?
  #     ""
  #   else
  #     data = self - 3.hour
  #     "#{data.to_s[8..9]}/#{data.to_s[5..6]}/#{data.to_s[0..3]} #{data.to_s[10..15]}"
  #   end
  # end

  def only_date
    if self.nil?
      ""
    else
      data = self - 3.hour
      "#{data.to_s[8..9]}/#{data.to_s[5..6]}/#{data.to_s[0..3]}"
    end
  end
end

class Date
  include Datas
end

class Time
  include Datas
end

class String
  include Datas
end

class NilClass
  include Datas
end

class ActiveSupport::TimeWithZone
  include Datas
end