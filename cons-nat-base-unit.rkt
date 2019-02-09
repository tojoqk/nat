#lang racket
(require "nat-base-sig.rkt")

(define-unit cons-nat-base@
  (import)
  (export nat-base^)

  (define (nzero? x) (eq? x nzero))
  (define nzero 'z)
  (define (npositive? x)
    (and (pair? x)
         (eq? 's (car x))))

  (define (nadd1 n) (cons 's (list n)))
  (define (nsub1 n) (cadr n)))

(provide cons-nat-base@)
