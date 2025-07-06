## Teste de Kolmogorov-Smirnov

O Teste de Kolmogorov-Smirnov é utilizado para comparar a distribuição de probabilidade entre dois grupos independentes (ou não pareados), podendo ser de qualquer distribuição. A construção desse teste é sensível a qualquer diferença de tendência central, dispersão, assimetria e curtose entre as distribuições postas em comparação. Com isso, o resultado do teste é fortemente impactado caso as distribuições tenham valores distintos entre essas medidas.

### Apresentação das Hipóteses

As hipóteses apresentam a forma abaixo:

$$H_0: \text{distribuição}_1 = \text{distribuição}_2 \text{,}$$

$$H_1:\text{distribuição}_1 \neq \text{distribuição}_2 \text{.}$$

### Estatística de Teste

A estatística de teste $D$ é calculada a partir das distribuições de frequências acumuladas dos grupos, e então, utiliza-se essa estatística $D$ para avaliar as hipóteses. Essa estatística é o maior valor encontrado ao realizar a diferença absoluta entre as proporções de frequências relativas acumuladas dos dois grupos. 

Para avaliar as hipóteses é necessário obter o valor crítico $D_c$ (ver SHESKIN, 2003) fazendo uso apenas dos tamanhos das amostras ($n_1$, $n_2$) e o nível de significância escolhido. Assim, em um teste de hipóteses bilateral a hipótese nula é rejeitada quando: 

$$|D| \geq D_c$$.

### Função no R

```{r,echo=TRUE, eval=FALSE, message=FALSE,warning =FALSE,error=FALSE}
stats::ks.test(x, y, alternative = "two.sided")
```

Os argumentos `x` e `y` são os vetores dos valores dos grupos a serem comparados, enquanto o argumento `alternative` permite escolher o formato do teste de hipóteses desejado. A função retorna a estatística de teste e o *valor-p*. A hipótese nula é rejeitada quando *valor-p* $\leq 0,05$ (com nível de significância de 5\%).

Ela pode ser utilizada para comparar um único grupo, colocando a distribuição acumulada no lugar de `y`, como mostra abaixo (no caso, compara-se com a acumulada da normal)

```{r,echo=TRUE, eval=FALSE, message=FALSE,warning =FALSE,error=FALSE}
stats::ks.test(x, "pnorm", alternative = "two.sided")
```

