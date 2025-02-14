# Tradutor de Textos em Ruby

Este projeto é um script Ruby que traduz textos utilizando a API MyMemory. Ele permite ao usuário inserir um texto em inglês e escolher um idioma de destino para a tradução. O resultado é salvo em um arquivo de texto com a data e hora atuais no nome do arquivo.

## Tecnologias Utilizadas 💻

- Ruby

- Gem rest-client para requisições HTTP

- Gem json para manipulação de JSON

- Gem unicode_utils para tratamento de caracteres acentuados

## Instalação ⚙️

Antes de executar o script, certifique-se de ter o Ruby instalado em seu sistema. Em seguida, instale as dependências necessárias:

```
 gem install rest-client json unicode_utils
```

### Como Usar 📖
1. Execute o script no terminal:
```
ruby app.rb
```

2. Insira o texto que deseja traduzir.

3. Informe o idioma de destino (exemplo: "espanhol" para espanhol, "frances" para francês, etc.).

4. O texto traduzido será salvo automaticamente em um arquivo nomeado com a data e hora atuais.

## Idiomas Suportados 🌍

O script suporta diversos idiomas, incluindo:

- Inglês

- Espanhol

- Francês
- Alemão
- Japonês

- Chinês (Simplificado e Tradicional)

- Português
-  E muitos outros

## Exemplo de Uso  🖥️
```
Digite o texto que você quer traduzir: Hello, how are you?
Digite para qual lingua que você quer traduzir: espanhol
```

Saída (em um arquivo DD-MM-YYYY_HH:MM:SS.txt):
```
Texto original: Hello, how are you?


Tradução: Hola, ¿cómo estás?
```



## Licença ⚖️

Este projeto está sob a licença MIT.

