#lang racket
(require "nat-base-sig.rkt")
(require "nat-sig.rkt")

(define-unit nat@
  (import nat-base^)
  (export nat^)

  (define (nat? x)
    (or (nzero? x) (npositive? x)))

  (define (n+ n m)
    (cond
      [(nzero? n) m]
      [else
       (nadd1 (n+ (nsub1 n) m))]))

  (define (n* n m)
    (cond
      [(nzero? m) nzero]
      [else
       (n+ n (n* n (nsub1 m)))]))

  (define (nexpt n m)
    (cond
      [(nzero? m) 1]
      [else
       (n* n (nexpt n (nsub1 m)))]))

  (define (natural->nat n)
    (cond
      [(zero? n) nzero]
      [else
       (nadd1 (natural->nat (sub1 n)))]))

  (define (nat->natural n)
    (cond
      [(nzero? n) 0]
      [else
       (add1 (nat->natural (nsub1 n)))])))

(provide nat@)
