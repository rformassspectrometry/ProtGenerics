#' @title Generic parameter class
#'
#' @name Param
#'
#' @rdname Param
#'
#' @author Johannes Rainer
#'
#' @description
#'
#' The `Param` class is a virtual class which can be used as *base* class
#' from which *parameter* classes can inherit.
#'
#' The methods implemented for the `Param` class are:
#'
#' - `as.list`: coerces the `Param` class to a `list` with list elements
#'   representing the object's slot values, names the slot names. *Hidden*
#'   slots (i.e. those with a name starting with `.`) are not returned. In
#'   addition, a `Param` class can be coerced to a `list` using
#'   `as(object, "list")`.
#'
#' - `show`: prints the content of the `Param` object (i.e. the individual
#'   slots and their value).
#' 
#' @param object `Param` object.
#'
#' @param x `Param` object.
#'
#' @param ... ignored.
NULL

#' @rdname Param
setClass("Param", contains = "VIRTUAL")

#' @rdname Param
setMethod("as.list", signature(x = "Param"), function(x, ...) {
    snames <- slotNames(x)
    skip <- grep(snames, pattern = "^\\.")
    if (length(skip))
        snames <- snames[-skip]
    res <- vector("list", length(snames))
    names(res) <- snames
    for (i in seq_along(res))
        res[[i]] <- slot(x, name = snames[i])
    res
})

#' @rdname Param
setMethod("show", "Param", function(object) {
    cat("Object of class: ", class(object), "\n")
    lst <- as.list(object)
    cat(" Parameters:\n")
    for (i in seq_along(lst)) {
        cat(" - ", names(lst)[i], ": ", sep = "")
        print(lst[[i]])
    }
})

setAs("Param", "list", function(from, to) {
    as.list(from)
})
