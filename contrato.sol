pragma solidity 0.8.9;

contract CompraEVenda {
    //autor: Nuno
    
    string comprador;
    string vendedor;
    string matricula;
    string cartorio;
    string dataDeVencimento;
    bool quitado = false;
    uint public valorTotal = 10000;
    uint public valorDaEntrada;
    uint public valorEmAberto;
    uint public valorQuitado;
    uint public quantidadeDeParcelas;
    uint public porcentagemDaMulta;
    
    function pagarEntrada(uint valorPagamento) public returns (uint,string memory) {
        valorEmAberto = valorTotal - valorPagamento;
        return (valorEmAberto, "valor em aberto");
        
        
    }
    
    
    
    
    
    
}

pragma solidity 0.8.9;

contract CompraEVenda {
    //autor: Nuno
    
    string comprador;
    string vendedor;
    string matricula;
    string cartorio;
    string dataDeVencimento;
    bool quitado = false;
    uint public valorTotal;
    uint public valorDaEntrada;
    uint public valorEmAberto;
    uint public valorQuitado;
    uint public quantidadeDeParcelas;
    uint public porcentagemDaMulta;

    
    constructor(
        uint _valorTotal, 
        uint _valorDaEntrada,
        uint _quantidadeDeParcelas,
        string memory _matricula,
        string memory _cartorio
        )
{
        valorTotal = _valorTotal;
        valorDaEntrada = _valorDaEntrada;
        quantidadeDeParcelas = _quantidadeDeParcelas;
        matricula = _matricula;
        cartorio = _cartorio;
        valorEmAberto = valorTotal;
        
        
        
    }
    
    function pagarEntrada(uint valorPagamento) public returns (uint,string memory) {
        valorEmAberto = valorTotal - valorPagamento;
        return (valorEmAberto, "valor em aberto");
        
    }
    
    function pagarParcela (uint _valorDaParcela) public returns (uint, string memory) {
        valorEmAberto = valorEmAberto - _valorDaParcela;
        return (valorEmAberto, "valor em aberto");
        
        
    }

    function valorDaParcela() public view returns (uint, string memory) {
        uint calculoValorParcela = (valorTotal - valorDaEntrada) / quantidadeDeParcelas;
        return (calculoValorParcela, "valor da parcela");
    }
     
     function valorDaMulta (uint _porcentagemDaMulta) public view returns (uint, string memory) {
         uint multa = (_porcentagemDaMulta/100)*valorTotal;
         return(multa, "valor da multa");
     }
     
     
}
