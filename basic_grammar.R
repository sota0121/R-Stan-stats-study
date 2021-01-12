# STDOUT
print("hello R")

# ==========================================
#  Types
# ==========================================

# vector
# > 同じ型の要素をまとめたもの(1次元)
v1 <- c(1, 2, 3, 4, 5)
v1

# matrix(2次元)
m1 <- matrix(
  data = 1:10,
  nrow = 2,
  ncol = 5,
  byrow = TRUE
)
print(m1)

# array(N次元)
arr1 <- array(
  data = 1:30,
  dim = c(3, 5, 2)
)
print(arr1)

# dataframe
# > 行列と同じく2次元だが
# > 異なる列には異なる型のデータをもつことができる
df1 <- data.frame(
  col1 = c(1, 2, 3),
  col2 = c("a", "b", "c")
)
print(df1)

# list
# > dataframeよりさらに柔軟
# > matrixやarray, dataframeを要素として含むことができる
l1 <- list(
  chara = c("a", "b", "c"),
  matrix = m1,
  df = df1
)
print(l1)

# ==========================================
#  Basic operation
# ==========================================

# データ抽出
# 基本的に [] で取得( 1 始まりのindex)
# > 要素の抽出
print(v1[1])
print(m1[1, 2])
print(arr1[1, 2, 1])

# > まとめて抽出
print(m1[1,])
print(m1[,1])
print(arr1[1,2,])

# slicing
print(m1[1, 2:4])

# meta info
print(dim(m1))
print(dim(arr1))
print(dim(df1))
print(dimnames(m1))
print(dimnames(arr1))
print(dimnames(df1))
print(dimnames(l1))

# dataframeの抽出
print(df1$col1)
print(head(df1, n = 2))

# listの抽出
print(l1$df)
print(l1[[1]])

# ==========================================
#  Time series
# ==========================================
df2 <- data.frame(
  data = 1:24
)
ts1 <- ts(
  df2,
  start = c(2010, 1),
  frequency = 4
)
print(ts1)

# 乱数生成
set.seed(1)
rnorm(1, mean = 0, sd = 3)
rnorm(1, mean = 0, sd = 3)
rnorm(1, mean = 0, sd = 3)

set.seed(1)
rnorm(1, mean = 0, sd = 3)

set.seed(1)
rnorm(1, mean = 0, sd = 3)

set.seed(1)
rnorm(1, mean = 0, sd = 3)

# Rの書き方
# ベース
# ハードリー風：tidyverse <-最近の書き方
# >書き方：Rではじめるデータサイエンス> 英語版は公開あされている
# Rstudio本 <- tidyverseの本
# https://www.amazon.co.jp/R%E3%83%A6%E3%83%BC%E3%82%B6%E3%81%AE%E3%81%9F%E3%82%81%E3%81%AERStudio-%E5%AE%9F%E8%B7%B5-%E5%85%A5%E9%96%80-%E2%88%92tidyverse%E3%81%AB%E3%82%88%E3%82%8B%E3%83%A2%E3%83%80%E3%83%B3%E3%81%AA%E5%88%86%E6%9E%90%E3%83%95%E3%83%AD%E3%83%BC%E3%81%AE%E4%B8%96%E7%95%8C%E2%88%92-%E6%9D%BE%E6%9D%91-ebook/dp/B07F1KL3KR/ref=sr_1_1?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&dchild=1&keywords=rstudio&qid=1610412191&s=books&sr=1-1
