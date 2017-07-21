(define-module (hamming)
  #:export (hamming-distance))

(define (hamming-distance s1 s2)
  (if (= (string-length s1) (string-length s2))
      (length (filter not (map char=? (string->list s1) (string->list s2))))
      (error "unequal string-length" #:hamming-distance s1 s2)))
