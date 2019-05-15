test_that("Directory manager works", {
  expect_type(manage_dir(data_source = "./R", output_loc = "test_folder"), type = "list")
  # expect_equal(length(manage_dir(data_source = "./R", output_loc = "test_folder")),5)
  expect_true(dir.exists(here::here("test_folder")))

  expect_type(manage_dir(data_source = "Graphs/Tayler", output_loc = "marked"), type = "list")
  expect_equal(length(manage_dir(data_source = "Graphs/Tayler", output_loc = "marked")), length(list.files(here::here("Graphs/Tayler"))))
  expect_true(dir.exists(here::here("marked")))
})

#once the dir created sapply return type change

