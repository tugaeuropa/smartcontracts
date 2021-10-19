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
