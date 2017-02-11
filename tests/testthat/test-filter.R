library("testthat")
library("dada2")


# fastqFilter
test_that("output and input files warning", {
	expect_error(fastqFilter(sam1F.fastq, sam1F.fastq), "The output and input files must be different.")
})

fastqFilter(sam1F.fastq, sam1F_filt)
test_that("file is output", {
	expect_that(sam1F_filt, is_a("character"))
})
