describe 'Fazer validacao na resposta da aquisicao' do
   context "Enviando dados API de Post HTTParty" do
      # before e uma pre-condicao para validacao dos testes
      # iremos colocar aqui como pre-condicao do envio da requisiçao Post 
      # o before será executado sempre antes de cada teste inciar
        
      before (:all) do
        #criacao da variavel de instancia @body para envio do corpo da mensagem do Post

         @body = {
                "token_account":"3f35bb4dc40f28b",
                "customer":{  
                    "contacts":[  
                  {  
                    "type_contact":"H",
                    "number_contact":"1133221122"
                  },
                  {  
                    "type_contact":"M",
                    "number_contact":"11999999999"
                  }
                 ],
                 "addresses":[  
                  {  
                    "type_address":"B",
                    "postal_code":"17000-000",
                    "street":"Av Esmeralda",
                    "number":"1001",
                    "completion":"A",
                    "neighborhood":"Jd Esmeralda",
                    "city":"Marilia",
                    "state":"SP"
                  }
                ],
                "name":"Stephen Strange",
                "birth_date":"21/05/1941",
                "cpf":"35502074846",
                "email":"stephen.strange@avengers.com"
              },
              "transaction_product":[  
                {  
                  "description":"Camiseta Tony Stark",
                  "quantity":"1",
                  "price_unit":"130.00",
                  "code":"1",
                  "sku_code":"0001",
                  "extra":"Informação Extra"
                }
              ],
              "transaction":{  
                "available_payment_methods":"2,3,4,5,6,7,14,15,16,18,19,21,22,23",
                "customer_ip":"127.0.0.1",
                "shipping_type":"Sedex",
                "shipping_price":"",
                "price_discount":"",
                "url_notification":"http://www.loja.com.br/notificacao",
                "free":"Campo Livre"
              },
              "payment":{  
                "payment_method_id":"6"
              }
            }.to_json

            # realizado uma chamada Post aplicando HTTParty, utilizando modulo boleto
            # variavel de instancia @resposta para que os testes (it) possam utiliza-lo
            @resposta = Boleto.post('', body: @body) 
            puts @resposta 
             
       end

       it "Validando StatusCode 201 da resposta com sucesso" do
           # validação do codigo de retorno da API de Post HTTParty como Sucesso (201)
           @imprimir = expect(@resposta.code).to eq 201  
           puts @resposta.code    
       end

      
       it 'Validando os dados do cliente com sucesso' do
        # validando os dados do cliente na resposta API de Post HTTParty 
        expect(@resposta.parsed_response['data_response']['transaction']['customer']['name']).to eq 'Stephen Strange'
        expect(@resposta.parsed_response['data_response']['transaction']['customer']['cpf']).to eq '35502074846'
         
       end
      
       it 'Validando o valor do pagamento com sucesso' do
        # validando o valor do pagamento na resposta API de Post HTTParty 
        expect(@resposta.parsed_response['data_response']['transaction']['payment']['price_payment']).to eq "130.0"
        
       end  

       it 'Validando a URL do boleto, linha digitavel e tid com sucesso' do
        # validando a URL do Boleto / Linha Digitavel / Tid na resposta API de Post HTTParty Retorno no arquivo: retorno_boleto.rb

        expect(@resposta.parsed_response).to include {["\"url_payment\"\"linha_digitavel\"\"tid\""]}
        
       end
      
        

      
    end


end