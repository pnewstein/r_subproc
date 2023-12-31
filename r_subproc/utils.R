string_vector_bytes <- function(strings) {
    char_len_array <- nchar(strings)
    return(length(char_len_array) + sum(char_len_array))
}


double_vector_bytes <- function(doubles) {
    # 8 bytes in a double
    return(length(doubles) * 8)
}


int_vec_bytes <- function(ints) {
    return(length(ints) * 4)
}

eval_capture_output <- function(code) {
    eval(parse(text = code), envir = python_env)
}

eval_no_capture <- function(code) {
    sink("/dev/null")
    eval(parse(text = code), envir = python_env)
    sink()
}
