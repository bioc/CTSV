% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CTSV.R
\name{svGene}
\alias{svGene}
\title{Report spatially variable genes}
\usage{
svGene(Q_val, thre.alpha = 0.05)
}
\arguments{
\item{Q_val}{A G by 2K q-value matrix, where G is the number of genes and K is the number of cell types.}

\item{thre.alpha}{numeric, a q-value threshold to control FDR less than thre.alpha.}
}
\value{
A list with a G by 2K 0-1 matrix and a list with SV gene names in each cell type. The first K columns of the 0-1 matrix correspond to the coordinate of \eqn{S_1}, and the last K columns to the coordinate of \eqn{S_2}.
\item{SV}{A G by 2K 0-1 matrix. The first K columns correspond to the coordinate of \eqn{S_1}, the last K columns to the coordinate of \eqn{S_2}.}
\item{SVGene}{A list with SV gene names in each cell type.}
}
\description{
Report spatially variable genes
}
\examples{
library(CTSV)
# Simulate a Q value matrix
K <- 2 # cell-type number
G <- 10 # gene number
set.seed(1)
Q_val <-matrix(runif(G*K,0,0.1),G,K)
rownames(Q_val) <- paste0("gene",seq_len(G))
# detect SV genes
re <- svGene(Q_val,0.05)
#SV genes in each cell type:
re$SVGene
}
