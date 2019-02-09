#lang racket
(require "nat-base-sig.rkt"
         "nat-sig.rkt"
         "cons-nat-base-unit.rkt"
         "nat-unit.rkt")

(define-compound-unit cons-nat@
  (import)
  (export C N)
  (link [((C : nat-base^)) cons-nat-base@ N]
        [((N : nat^)) nat@ C]))

(provide cons-nat@)
