# Regex

### Comandos

/d = Significa que vamos pegar o dígito. A barra invertida diz que será um comando da expressão regular. Dígitos são números de zero a nove.

```
123.123.123-14
321.123.345-20
200.300.500.19

\d{3}.\d{3}.\d{3}-\d{2}$
```

- O "$" indica que o comando termina nessa linha e não precisa procurar em outras. 

```
Wendel, Erick
Gomes, Lollo
Johnson, Jose

\w+(Pega uma letra até que não ache mais nenhuma letra)

\w+, \s(espaço)\w+

Obs: se não quiser espaço use \S
```

### Transformar esse conteúdo ^ em json.

```
Wendel, Erick
Gomes, Lollo
Johnson, Jose
```

Primeiro precisamos colocar o seguinte regex:

```
^(\w+),\s(\w+)$ 
```

- Os parênteses é para separar em grupo
 
E depois substituí-lo por :

```
{firstName: "$2", lastName: "$1"}
```

### Boas práticas

- Buscando por uma informação literal:

Para isso usamos barra investida \ e o caractere que queremos

Ex: 
```
\[
```

Entre parênteses colocamos o que queremos, nesse caso queremos tudo que está dentro de [].

```
\[(.*?)\]
```

Nesse código acima, estamos dizendo que queremos tudo até(?)
encontrar o cochete ]


