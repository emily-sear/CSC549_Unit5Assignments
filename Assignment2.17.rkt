;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Assignment2.17) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Assignment 2.17
; Define a procedure that returns the list that contains only the last element of a given (non-empty) list


(define (last-pair theList)
  (cond
    ((null? (cdr theList)) (car theList))
    (else (last-pair (cdr theList)))))

(define list1 (list 1 2 3 4 5))
(last-pair list1)
