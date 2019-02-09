#lang racket/signature
(require (only-in racket/math natural?))
(require "nat-base-sig.rkt")

(contracted
 [nat? (-> any/c boolean?)]
 [n+ (-> nat? nat? nat?)]
 [n* (-> nat? nat? nat?)]
 [nexpt (-> nat? nat? nat?)]
 [natural->nat (-> natural? nat?)]
 [nat->natural (-> nat? natural?)])
