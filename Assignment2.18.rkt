;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Assignment2.18) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Exercise 2.18
; Define a procedure reverse that takes a list as an argument and returns a list of the same elements in reverse order

(define (reversed theList)
  (cond
    ((null? (cdr theList)) (car theList))
    (else (car (cons (reverse theList) (list (car theList)))))))


(reversed (list 1 2 3 4 5))
