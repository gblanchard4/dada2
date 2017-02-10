# Helper file that is loaded before any tests are run

# fastqFilter
sam1F.fastq <- system.file("extdata", "sam1F.fastq.gz", package="dada2")
sam1R.fastq <- system.file("extdata", "sam1R.fastq.gz", package="dada2")
sam2F.fastq <- system.file("extdata", "sam2F.fastq.gz", package="dada2")
sam2R.fastq <- system.file("extdata", "sam2R.fastq.gz", package="dada2")

sam1F_filt <- tempfile(pattern = "fastqFilter", tmpdir = tempdir(), fileext = "")
sam2R_filt <- tempfile(pattern = "fastqFilter", tmpdir = tempdir(), fileext = "")
