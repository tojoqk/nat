#lang racket
(require "nat-base-sig.rkt")

(define-unit simple-nat-base@
  (import)
  (export nat-base^)

  (define nzero? zero?)
  (define npositive? positive?)
  (define nzero 0)
  (define nadd1 add1)
  (define nsub1 sub1))

(provide simple-nat-base@)


