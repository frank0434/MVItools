
test_that("Read multiple graphs works", {
  l_forTesting <- graph_read(sitename = "Tayler", data_source = here::here("example/"),extension = "*.png$")

  expect_type(l_forTesting, "list")
  expect_length(l_forTesting, 8) #this test will fail if example file has more or less graphs
  expect_equal(class(graph_read(data_source = here::here("example/"),extension = "*.png$")[[1]]), "magick-image")
})
