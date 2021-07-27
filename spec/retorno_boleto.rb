describe 'Retornando a URL do boleto, linha digitavel e tid com sucesso ' do
    # criando um grupo de açoes para retorno da URL do Boleto / Linha Digitavel / Tid

  it 'URL do boleto' do
    # criando uma variavel local para receber e imprimir a URL do boleto de pagamento

     url_payment = "'https://intermediador-sandbox.yapay.com.br/orders/billet/6afb8e42544d9ca4d71948654166ce74'"
     puts url_payment

  end

  it 'Linha Digitavel' do
    # criando uma variavel local para receber e imprimir a Linha Digitavel do boleto

    linha_digitavel = "'23790.00124  60000.066138  19123.456709  1  86950000013000'"
    puts linha_digitavel

  end

  it 'Tid' do
    # criando uma variavel local para receber e imprimir a Tid do boleto

    tid = "'00000661319'"
    puts tid

  end

end

    