#lang racket
(require "cons-nat-unit.rkt")
(require "simple-nat-unit.rkt")

(module+ test
  (require rackunit)

  (check-equal?
   ((lambda ()
      (define-values/invoke-unit/infer cons-nat@)
      (define one (nadd1 nzero))
      (define (factorial n)
        (cond
          [(nzero? n) one]
          [else (n* n (factorial (nsub1 n)))]))
      (factorial (natural->nat 3))))
   '(s (s (s (s (s (s z)))))))

  (check-equal?
   ((lambda ()
      (define-values/invoke-unit/infer simple-nat@)
      (define one (nadd1 nzero))
      (define (factorial n)
        (cond
          [(nzero? n) one]
          [else (n* n (factorial (nsub1 n)))]))
      (factorial (natural->nat 3))))
   6))
