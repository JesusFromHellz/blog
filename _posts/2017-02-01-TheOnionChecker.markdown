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

![](http://i.imgur.com/Swa1aRf.png){: width="70%"; height="auto"; :}

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

![](http://i.imgur.com/22LA8f2.png){: width="70%"; height="auto"; :}

Créditos da capa: <a style="background-color:#656c7a;color:white;text-decoration:none;padding:4px 6px;font-family:-apple-system, BlinkMacSystemFont, &quot;San Francisco&quot;, &quot;Helvetica Neue&quot;, Helvetica, Ubuntu, Roboto, Noto, &quot;Segoe UI&quot;, Arial, sans-serif;font-size:12px;font-weight:bold;line-height:1.2;display:inline-block;border-radius:3px;" href="https://unsplash.com/@blakeconnally?utm_medium=referral&amp;utm_campaign=photographer-credit&amp;utm_content=creditBadge" target="_blank" rel="noopener noreferrer" title="Download free do whatever you want high-resolution photos from Blake Connally"><span style="display:inline-block;padding:2px 3px;"><svg xmlns="http://www.w3.org/2000/svg" style="height:12px;width:auto;position:relative;vertical-align:middle;top:-1px;fill:white;" viewBox="0 0 32 32"><title></title><path d="M20.8 18.1c0 2.7-2.2 4.8-4.8 4.8s-4.8-2.1-4.8-4.8c0-2.7 2.2-4.8 4.8-4.8 2.7.1 4.8 2.2 4.8 4.8zm11.2-7.4v14.9c0 2.3-1.9 4.3-4.3 4.3h-23.4c-2.4 0-4.3-1.9-4.3-4.3v-15c0-2.3 1.9-4.3 4.3-4.3h3.7l.8-2.3c.4-1.1 1.7-2 2.9-2h8.6c1.2 0 2.5.9 2.9 2l.8 2.4h3.7c2.4 0 4.3 1.9 4.3 4.3zm-8.6 7.5c0-4.1-3.3-7.5-7.5-7.5-4.1 0-7.5 3.4-7.5 7.5s3.3 7.5 7.5 7.5c4.2-.1 7.5-3.4 7.5-7.5z"></path></svg></span><span style="display:inline-block;padding:2px 3px;">Blake Connally</span></a>

