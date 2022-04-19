;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Assignment2.23) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Excercise 2.23

(for-each
 (lambda (x)
   (display x))
 (list 27 321 88))

(define (my-for-each func x)
    (if (empty? x) '()
        (cons (func (car x)) (my-for-each func (cdr x)))))

(define (for-each-2 func lst)
  (let loop ((rest lst))
    (cond
      ((empty? rest) (display " "))
      ((null? rest) (func (car rest)))
      (else (loop (cdr rest))))))

(define (display-element element)
  (display element))

(for-each-2 display-element (list 1 2 3 4))