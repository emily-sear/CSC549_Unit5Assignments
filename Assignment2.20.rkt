;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Assignment2.20) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Exercise 2.20
; my compiler yelled at me for using the dot notation as described in the book, I am doing the same logcial just without the dot notation 

(define (same-parity x y)
  (if (= (remainder x 2) 0)
      (cons x (get-evens y))
      (cons x (get-odds y))))

(define (get-evens y)
  (cond
    ((null? y) '())
    ((= (remainder (car y) 2) 0) (cons (car y) (get-evens (cdr y))))
    (else (get-evens (cdr y)))))

(define (get-odds y)
  (cond
    ((null? y) '())
    ((= (remainder (car y) 2) 0) (get-odds (cdr y)))
    (else (cons (car y) (get-odds (cdr y))))))
            

(same-parity 50 '(2 3 4 5))