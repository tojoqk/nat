#lang racket/signature

(contracted
 [nzero? (-> any/c boolean?)]
 [npositive? (-> any/c boolean?)]
 [nadd1 (-> (or/c nzero? npositive?) npositive?)]
 [nsub1 (-> npositive? (or/c nzero? npositive?))]
 [nzero nzero?])
