
#' Abstracts of communication journals dataset
#'
#' This is a random sample of all abstracts of papers published in high-impact communication journals from 2000 to 2017. The one ends with "dfm" is same data in quanteda::dfm (document-feature matrix) format.
"abstracts"

#' @rdname abstracts
"abstracts_dfm"

#' Topic models trained with the abstracts dataset.
#'
#' These are topic models trained with different topic model packages.
"abstracts_stm"

#' @rdname abstracts_stm
"abstracts_warplda"

#' @rdname abstracts_stm
"abstracts_topicmodels"

#' AFINN dictionary
#'
#' This is the AFINN sentiment dictionary in quanteda::dictionary format.
"afinn"

#' Trump's tweets dataset
#'
#' This is a random sample of 2000 tweets from @realdonaldtrump account before his assumption of duty as the president of the United States.
"trump2k"


#' @importFrom stats cooks.distance cor.test lm median pchisq quantile sd
#' @importFrom utils head
#' @importFrom quanteda print corpus
NULL

utils::globalVariables(c('cookd', 'diffxy', 'index', 'meanxy', 'word_length', 'avg_answer'))