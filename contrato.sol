pragma solidity 0.8.9;

contract CompraEVenda {
    //autor: Nuno
    
    string comprador;
    string vendedor;
    string matricula;
    string cartorio;
    string dataDeVencimento;
    bool quitado = false;
    uint public valorTotal = 1000;
    uint valorDaEntrada;
    uint valorEmAberto;
    uint valorQuitado;
    uint quantidadeDeParcelas;
    uint porcentagemDaMulta;
    
    function pagarEntrada(uint valorPagamento) public returns (uint,string memory) {
        valorEmAberto = valorTotal - valorPagamento;
        return (valorEmAberto, "valor em aberto");
        
        
    }
    
    
    
    
    
    
}
