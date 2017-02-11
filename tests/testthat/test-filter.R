library("testthat")
library("dada2")

# filterAndTrim
test_that("Output and input files warning", {
	expect_error(filterAndTrim(sam1F.fastq), "Every input file must have a corresponding output file.")
})

test_that("Output and input files warning", {
	expect_error(filterAndTrim(sam1F.fastq, sam1F.fastq), "All output files must be distinct.")
})

test_that("All inputs have corresponding output", {
	expect_error(filterAndTrim(c(sam1F.fastq, sam1F.fastq), c(samefile, samefile)), "All output files must be distinct.")
})




# fastqFilter
test_that("output and input files warning", {
	expect_error(fastqFilter(sam1F.fastq, sam1F.fastq), "The output and input files must be different.")
})

fastqFilter(sam1F.fastq, sam1F_filt)
test_that("file is output", {
	expect_that(sam1F_filt, is_a("character"))
})
