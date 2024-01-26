# Projeto Lista Lincada

Implementação simples de lista lincada em Ruby com Rspec, Rubocop e SimpleCov

## Instalação

Use o gerenciador de pacotes [bundle](https://bundler.io/) para instalar as dependências.

```bash
bundle install
```

## Principais comandos

```shell
# Para verificar os testes 
rspec -fd

# Para ver o retorno das verificações de código e estilo
rubocop

```
## Cobertura de código

Para verificar a cobertura de testes dentro do código basta abrir no seu navegador o arquivo index.html no seguinte caminho

`coverage/index.html`

## Comentário

> Uma lista encadeada ou lista ligada é uma estrutura de dados linear e dinâmica. Ela é composta por várias células que estão interligadas através de ponteiros, ou seja, cada célula possui um ponteiro que aponta para o endereço de memória da próxima célula. [Wikipédia](https://pt.wikipedia.org/wiki/Lista_ligada)

Depois de algum tempo de pesquisa encontrei muitos métodos interessantes e implementações que valiam a pena ser adicionadas ao projeto porém implementação realizada nesse repositório coloquei apenas os métodos necessários para poder realizar as atividades pedidas no teste. Funções como shift, size, empty além da função reverse que foi pedida no teste específico.

Realizei duas implementações diferentes uma funcional e outra orienta a objetos.
Como o foco do teste era a funcional a deixo anotada aqui:

[inverteLista funcional](https://github.com/jaderdev/linked_list/blob/master/app/linked_list_utils.rb)

- Coloquei cobertura de testes em 100% utilizando rspec
- Fiz Adequação do código com Rubocop
- Utilizei simplecov para verificar se todo o código estava coberto

Boa sorte pra mim.


## License

[MIT](https://choosealicense.com/licenses/mit/)
