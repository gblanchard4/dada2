library("testthat")
library("dada2")

# Data
# fastqFilter
sam1F.fastq <- system.file("extdata", "sam1F.fastq.gz", package="dada2")
sam1R.fastq <- system.file("extdata", "sam1R.fastq.gz", package="dada2")
sam2F.fastq <- system.file("extdata", "sam2F.fastq.gz", package="dada2")
sam2R.fastq <- system.file("extdata", "sam2R.fastq.gz", package="dada2")
samefile <- tempfile(fileext=".fastq.gz")
filtFastqs <- c(tempfile(fileext=".fastq.gz"), tempfile(fileext=".fastq.gz"))

# filterAndTrim
test_that("Output and input files warning", {
	expect_error(filterAndTrim(sam1F.fastq), "Every input file must have a corresponding output file.")
})

test_that("Output files must be distinct from input files", {
	expect_error(filterAndTrim(sam1F.fastq, sam1F.fastq), "Output files must be distinct from the input files.")
})

test_that("Distinct Output Files", {
	expect_error(filterAndTrim(c(sam1F.fastq, sam1R.fastq), c(samefile, samefile)), "All output files must be distinct.")
})
test_that("Output files for the reverse reads are required.", {
	expect_error(filterAndTrim(c(sam1F.fastq, sam1R.fastq), c(samefile, samefile), rev=TRUE), "Output files for the reverse reads are required.")
})



# # fastqFilter
# test_that("output and input files warning", {
# 	expect_error(fastqFilter(sam1F.fastq, sam1F.fastq), "The output and input files must be different.")
# })
# 
# fastqFilter(sam1F.fastq, sam1F_filt)
# test_that("file is output", {
# 	expect_that(sam1F_filt, is_a("character"))
# })
