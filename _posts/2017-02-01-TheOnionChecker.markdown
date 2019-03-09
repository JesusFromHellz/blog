---
layout: post
title: The Onion Checker
date: 2017-02-01 12:00
summary: Uma introdução à ferramenta para automação de checagem de links na Deep Web.
categories: linux tool howto
---

Se você é um usuário "constante" da rede onion, está acostumado a encontrar diversos diretórios de links por lá, e acabar naquela dificuldade de ficar testando um por um, manualmente, não é? Pois bem, trago aqui algo que pode facilitar um pouco a sua navegação. 
{: .justify}

Venho apresentar a ferramenta [__Onion Checker__](https://github.com/JesusFromHellz/Onion-Checker), desenvolvida por mim.
{: .justify}

O intuito dessa ferramenta é organizar links referentes à rede onion, bem como testar se os mesmos estão online, e caso positivo, adicionar o título existente no site, bem como o link, num txt.
{: .justify}

A utilização base do programa é bem simples, sendo exatamente:

```sh
onion-checker -c ListaDeLinks.txt
```

Ou ainda utilizando um arquivo de destino para os links online. Caso seja omitido, os links online irão para a `$HOME` do usuário, no arquivo _linkson.txt_.
{: .justify}

Uma interessante funcionalidade é a de permitir ao usuário escolher o tempo de timeout para a checagem dos links, para que os mesmos sejam dados como offline, em _segundos_, _minutos_, _horas_ e até _dias_.
{: .justify}

![](https://i.imgur.com/Swa1aRf.png){: width="70%"; height="auto"; :}

Dentre as outras funcionalidades do programa, pode-se salientar a de organização de links. Esse comando pega __N__ arquivos de texto contendo links passados para o programa, e os filtra, passando apenas os links, linha por linha, para outro arquivo ou para serem imprimidos na tela. O uso dessa função é:
{: .justify}

```sh
onion-checker -l Arquivo1.txt Arquivo2.txt Arquivo3.txt ArquivoDestino.txt
```

O último nome passado será sempre o arquivo destino, e caso o último seja `-st`, o conteúdo será exibido na tela.
{: .justify}

Outra função mais simples apenas une arquivos diferentes uns nos outros, sob a flag `-j`.
{: .justify}

Abaixo você pode ver a mensagem completa de ajuda contento todos os comandos que o programa aceita, e para mais ajuda, use um deles sem flag alguma.
{: .justify}

![](https://i.imgur.com/22LA8f2.png){: width="70%"; height="auto"; :}

