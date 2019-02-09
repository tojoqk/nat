#lang racket
(require "nat-base-sig.rkt"
         "nat-sig.rkt"
         "simple-nat-base-unit.rkt"
         "nat-unit.rkt")

(define-compound-unit simple-nat@
  (import)
  (export C N)
  (link [((C : nat-base^)) simple-nat-base@]
        [((N : nat^)) nat@ C]))

(provide simple-nat@)


