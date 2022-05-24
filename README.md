# rag-mobile-api
API de Ragnarok, voltada a gerenciamento de respaw de MVP.

## Configurando git

Para realizar as operações com o git, é aconselhado o uso do Personal Access Token. O link a seguir é um tutorial de como criar seu PAT.
https://docs.github.com/pt/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token

Após a geração e estando com seu PAT, vamos configurar em seu repositório, assim você não precisará informar suas credenciais quando for realizar alguma operação com os repositórios do github. Lembre-se de copiar o token ao final do processo, após sair da página do github não será possível reaver o token, precisando gerar novamente.

1. Execute o seguinte comando no seu prompt de comandos: `git config --global url."https://{user}:{token}@github.com".insteadOf https://github.com`. Substitua a variável ***user*** pelo seu nome de usuário do github e a variável ***token*** pelo token gerado. Após isso, você poderá realizar ***push/pull*** sem a necessidade de informar suas credenciais.

## Makefile
