#library(FirebrowseR)
context("Analyses.Mutation.SMG")

test_that("Getting SMG files", {

  format = "json"
  cohort = "PRAD"
  tool = "MutSig2CV"
  rank = ""
  gene = ""
  q = "0.01"
  page = 1
  page_size = 250
  sort_by = "q"


  parameters = list(format = format,
                    cohort = cohort,
                    tool = tool,
                    rank = rank,
                    gene = gene,
                    q = q,
                    page = page,
                    page_size = page_size,
                    sort_by = sort_by)

  obj = Analyses.Mutation.SMG(format = format,
                                  cohort = cohort,
                                  tool = tool,
                                  rank = rank,
                                  gene = gene,
                                  q = q,
                                  page = page,
                                  page_size = page_size,
                                  sort_by = sort_by)
  expect_is(obj, "list")
  expect_that(length(obj[[1]]), equals(25))

  format = "csv"
  obj = Analyses.Mutation.SMG(format = format,
                                  cohort = cohort,
                                  tool = tool,
                                  rank = rank,
                                  gene = gene,
                                  q = q,
                                  page = page,
                                  page_size = page_size,
                                  sort_by = sort_by)
  expect_is(obj, "data.frame")
  expect_that(ncol(obj), equals(23))
  expect_that(nrow(obj), equals(25))

  gene = c("TP53", "SPOP")
  q = 0.05
  obj = Analyses.Mutation.SMG(format = format,
                                  cohort = cohort,
                                  tool = tool,
                                  rank = rank,
                                  gene = gene,
                                  q = q,
                                  page = page,
                                  page_size = page_size,
                                  sort_by = sort_by)
  expect_equal(nrow(obj), 2)

  gene = ""
  obj = Analyses.Mutation.SMG(format = format,
                                  cohort = cohort,
                                  tool = tool,
                                  rank = rank,
                                  gene = gene,
                                  q = q,
                                  page = page,
                                  page_size = page_size,
                                  sort_by = sort_by)
  expect_equal(nrow(obj), 35)
})
