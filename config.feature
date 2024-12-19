Funcionalidade: Seleção de produtos

  Cenário: Validação das seleções de cor, tamanho e quantidade
    Dado que o usuário acessa a página de seleção de produtos
    Quando o usuário tenta finalizar a compra sem selecionar cor, tamanho e quantidade
    Então o sistema deve exibir uma mensagem de erro indicando que as seleções são obrigatórias

  Cenário: Limite de produtos por venda
    Dado que o usuário selecionou 10 produtos
    Quando o usuário tenta adicionar mais um produto ao carrinho
    Então o sistema deve exibir uma mensagem de erro indicando que o limite de 10 produtos foi atingido

  Cenário: Limpar seleções
    Dado que o usuário fez seleções de cor, tamanho e quantidade
    Quando o usuário clica no botão "limpar"
    Então as seleções devem voltar ao estado original

    Exemplos: Seleções de cor, tamanho e quantidade
    | cor        | tamanho   | quantidade |
    | vermelho   | M         | 1          |
    | azul       | G         | 5          |
    | verde      | P         | 10         |
    | amarelo    | M         | 0          |  # Espera-se que falhe
    | laranja    | XG        | 3          |

 Cenário: Limitar a quantidade de produtos
    Dado que o usuário começou com 0 produtos no carrinho
    Quando o usuário tenta adicionar 11 produtos ao carrinho
    Então o sistema deve exibir uma mensagem de erro "Você pode adicionar no máximo 10 produtos por venda"

  Cenário: Limpar seleções
    Dado que o usuário selecionou a cor "vermelho"
    E o usuário selecionou o tamanho "M"
    E o usuário selecionou a quantidade "2"
    Quando o usuário clica no botão "limpar"
    Então as seleções devem voltar ao estado original
    E a cor deve ser vazia
    E o tamanho deve ser vazio
    E a quantidade deve ser 0
    