#language: pt
Funcionalidade: Registro fácil de informações financeiras
  O usuário deseja registrar de forma fácil suas informações financeiras para análise futura.

Cenário: Criação do primeiro registro financeiro com data, descrição e valor
  Dado o registro financeiro:
    | data       | descrição           | valor  |
    | 22/03/2020 | Compra Supermercado | 173.23 |
  Quando a página do sistema é acessada
  E cada campo do registro é digitado
  E a página do sistema é atualizada
  Então deve se exibido o mesmo registro 
    
Cenário: Exibição do saldo disponível
Cenário: Reordenação de registros financeiros