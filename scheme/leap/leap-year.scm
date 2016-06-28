(define-module (leap-year)
  #:export (leap-year?))

(define (is-divisible-by? n d)
  (zero? (modulo n d)))

(define (leap-year? year)
  (or
   (and (is-divisible-by? year 4)
        (not (is-divisible-by? year 100)))
   (is-divisible-by? year 400)))
