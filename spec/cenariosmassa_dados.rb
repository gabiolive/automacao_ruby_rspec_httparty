class Customer
  
 # criado o def initialize para 
  def initialize (name, cpf, email, product, vProduct, idfPag, fPag)
    @name = name
    @cpf = cpf
    @email = email
    @product = product
    @vProduct = vProduct
    @idfPag = idfPag
    @fPag = fPag
  end
  def check
    puts "Instância da classe Cliente iniciada com os valores:"
    puts "Name = #{@name}"
    puts "CPF = #{@cpf}"
    puts "email = #{@email}"
    puts "Product = #{@product}"
    puts "ValorProduct = #{@vProduct}"
    puts "idFormaPagamento = #{@idfPag}"
    puts "FormaPagamento = #{@fPag}"
  end


    customer = Customer.new('Stephen Strange', 50235335142, 'stephen.strange@gmail.com', 'Camiseta Tony Stark', 130, 6, 'boleto')
    customer.check
    dadoscliente = customer.check
    puts dadoscliente
    
    #nao consegui realizar a validação da massa de dados criada
    #it "Validando do cliente com sucesso" do

    # expect(dadoscliente).to be
    #end
end 
    

