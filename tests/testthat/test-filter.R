library("testthat")
library("dada2")


# fastqFilter
test_that("output and input files warning", {
	expect_error(fastqFilter(sam1F.fastq, sam1F.fastq), "The output and input files must be different.")
})
