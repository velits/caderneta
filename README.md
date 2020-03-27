# Caderneta (0.1.0)

> "A análise do passado somente é útil para decisões futuras"

Este sistema foi desenvolvido para facilitar a tomada de decisões financeiras em ambiente comercial ou doméstico.

Por simplicidade cada registro financeiro pode ter associado a si uma data, uma descrição e um valor.

Por questão de usabilidade esse sistema é desenhado para funcionar primeiramente em celulares e posteriormente em desktops e tablets.

# Brainstorm (ainda não desenvolvido)

Esses registros são gravados em formato json no próprio dispositivo do usuário para posterior recuperação e edição.

Sugestões de melhoria
Cada registro sempre possui associados um valor ou uma descrição
Cada registro pode ou não conter data associada
A ordem dos registros deve ser mantida, mesmo não havendo data associada
Quando associada uma data, a ordem dos registros deve ser consistida cronologicamente
As datas podem ter precisão variável, podendo ser*:
Anual: quando somente for definido o ano
Mensal: quando somente forem definidos ano e mês
Diária: quando forem definidos ano, mês e dia
*(Ainda não vi a necessidade de precisão em horas, minutos, segundos, milissegundos, etc)
Para contemplar a característica de ordenação e precisão variável é possível definir cada evento como realizado em um período correspondente à precisão. Isso traz uma complexidade que exige que períodos não sejam sobrepostos. Preciso analisar outras alternativas. (Aceito sugestões)
Os registros financeiros podem ser definidos como fatos geradores.
Uma compra parcelada ou um investimento, por exemplo, podem implicar diversas movimentações.
Um fato gerador não produz outros registros, ele somente implica em diversas movimentações.
Aos fatos geradores pode ser definido um período de abrangência, o qual pode ser utilizado para o filtro de períodos de análise
Visto que deseja-se realizar a tomada de decisões, seria interessante a possibilidade de comparar diferentes cenários
Valor planejado x realizado
Data planejada x realizada
Comparação de diferentes cenários
Segurança e privacidade são características imprescindíveis em um sistema como esse. Portanto, pretendo criar um mecanismo de criptografia para armazenamento de todos os dados do usuário. Isso permite que os dados gravados no banco não sejam lidos nem mesmo pelo administrador do banco de dados.
O risco nesse caso é o esquecimento da chave de criptografia utilizada isso tornará os dados ilegíveis mesmo pelo usuário dono a chave. Mas não vejo um grande problema nisso, pois seria como usuário ter perdido sua caderneta de anotações financeiras, mas de forma que ninguém poderá ler sua caderneta.
Bibliotecas de criptografia:
https://github.com/openpgpjs/openpgpjs
https://gist.github.com/jo/8619441
