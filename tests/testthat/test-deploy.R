
genius_word <- function(obj1) {
    obj1$.__enclos_env__$private$test_content$word$answer <- obj1$.__enclos_env__$private$test_content$word$intruder
    return(obj1)
}

genius_topic <- function(obj1) {
    obj1$.__enclos_env__$private$test_content$topic$answer <- obj1$.__enclos_env__$private$test_content$topic$intruder
    return(obj1)
}

genius_wsi <- function(obj1) {
    obj1$.__enclos_env__$private$test_content$wsi$answer <- obj1$.__enclos_env__$private$test_content$wsi$intruder
    return(obj1)
}


test_that("preconditions witi", {
    expect_error(deploy_oolong(witi(abstracts_stm, abstracts$text)))
    expect_error(export_oolong(witi(abstracts_stm, abstracts$text)))
})

test_that("preconditions coded", {
    x <- wi(abstracts_stm)
    expect_error(deploy_oolong(x), NA)
    expect_error(export_oolong(x, verbose = FALSE), NA)
    x <- genius_word(x)
    expect_error(deploy_oolong(x))
    expect_error(export_oolong(x))
    x <- ti(abstracts_stm, abstracts$text)
    expect_error(deploy_oolong(x), NA)
    expect_error(export_oolong(x, verbose = FALSE), NA)
    x <- genius_topic(x)
    expect_error(deploy_oolong(x))
    expect_error(export_oolong(x, verbose = FALSE))
    x <- wsi(abstracts_stm)
    expect_error(deploy_oolong(x), NA)
    expect_error(export_oolong(x, verbose = FALSE), NA)
    x <- genius_wsi(x)
    expect_error(deploy_oolong(x))
    expect_error(export_oolong(x))
    x <- gs(abstracts$text)
    expect_error(deploy_oolong(x), NA)
    expect_error(export_oolong(x, verbose = FALSE), NA)
    x$.__enclos_env__$private$test_content$gold_standard$answer <- 1
    expect_error(deploy_oolong(x))
    expect_error(export_oolong(x))
})

test_that("preconditions locked", {
    x <- wi(abstracts_stm)
    x$lock(force = TRUE)
    expect_error(deploy_oolong(x))
    expect_error(export_oolong(x))
    x <- ti(abstracts_stm, abstracts$text)
    x$lock(force = TRUE)
    expect_error(deploy_oolong(x))
    expect_error(export_oolong(x))
    x <- wsi(abstracts_stm)
    x$lock(force = TRUE)
    expect_error(deploy_oolong(x))
    expect_error(export_oolong(x))
    x <- gs(abstracts$text)
    x$lock(force = TRUE)
    expect_error(deploy_oolong(x))
    expect_error(export_oolong(x))
})

test_that("export_app dir", {
    ## new dir
    newdir <- paste0(tempdir(), "/test")
    expect_error(export_oolong(wsi(abstracts_stm), dir = newdir, verbose = FALSE), NA)
    ## existing dir
    olddir <- newdir
    expect_error(export_oolong(wsi(abstracts_stm), dir = olddir, verbose = FALSE), NA)
    unlink(olddir, recursive = TRUE)
})