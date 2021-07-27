module Boleto
    include HTTParty 

    # url base de pagamento boleto
    base_uri 'https://api.intermediador.sandbox.yapay.com.br/api/v3/transactions/payment'
    
    # opcoes do meu service
    format :json
    headers 'Content-Type': 'application/json'
end

# toda vez que eu chamar este modulo a url padrao dele sera https://api.intermediador.sandbox.yapay.com.br/api/v3/transactions/payment
# e ele tera o headers com a opcao  'Content-Type': 'application/json'
# e será do formato json


