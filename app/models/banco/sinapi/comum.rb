module Banco::Sinapi::Comum
  extend ActiveSupport::Concern
  include Banco::Comum

  included do
    field :data,				type: String

    index({ data: 1 })

    scope :da_data, lambda {|data| where(data: data)}
  end
end