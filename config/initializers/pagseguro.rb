PagSeguro.configure do |config|
  config.token       = "98ACB66A3DFD4A4D9216FFAC2789CEE6"
  config.email       = "josue.cort3s@gmail.com"
  config.environment = :sandbox  #:production # ou :sandbox. O padrão é production.
  config.encoding    = "UTF-8" # ou ISO-8859-1. O padrão é UTF-8.
  #config.timeout_interval = 90
end