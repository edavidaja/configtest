test_that("config works", {
  withr::with_envvar(c("R_CONFIG_ACTIVE" = "default"), {
    expect_equal(wtf(), "the fuck")
  }
  )

  withr::with_envvar(c("R_CONFIG_ACTIVE" = "rsconnect"), {
    expect_equal(wtf(), "the hell")
  }
  )
})
