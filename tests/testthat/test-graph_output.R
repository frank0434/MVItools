test_that("Test output function", {
  l_forTesting <- graph_read(data_source = here::here("example/"), sitename = "Gray")

  logo <- magick::image_read("C:/Data/MVI-FarmModelling/playground/PFR-web.jpg")
  logo_info <- graph_info(l_forTesting, "C:/Data/MVI-FarmModelling/playground/PFR-web.jpg")
  adj_color <-  magick::image_colorize(logo, 60 ,"white")
  transparent <-   magick::image_transparent(adj_color, "white", fuzz = 10)
  markered <- graph_stamp(l_forTesting,logo_info, transparent)

  graph_output(markered,output_foler = "markered",sitename = "Gray")
  expect_true(dir.exists(here::here("markered", "Gray")))

})
