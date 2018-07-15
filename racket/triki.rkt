;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname triki) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
(define x 0)
(define y 0)
(define ancho 50)
(start (* 10 ancho) (* 10 ancho))

(define (tablero color1 color2) (and
(draw-solid-rect (make-posn (+ x (* 0 ancho)) (+ y (* 0 ancho))) ancho ancho color1)
(draw-solid-rect (make-posn (+ x (* 1 ancho)) (+ y (* 0 ancho))) ancho ancho color2)
(draw-solid-rect (make-posn (+ x (* 2 ancho)) (+ y (* 0 ancho))) ancho ancho color1)
(draw-solid-rect (make-posn (+ x (* 0 ancho)) (+ y (* 1 ancho))) ancho ancho color2)
(draw-solid-rect (make-posn (+ x (* 1 ancho)) (+ y (* 1 ancho))) ancho ancho color1)
(draw-solid-rect (make-posn (+ x (* 2 ancho)) (+ y (* 1 ancho))) ancho ancho color2)
(draw-solid-rect (make-posn (+ x (* 0 ancho)) (+ y (* 2 ancho))) ancho ancho color1)
(draw-solid-rect (make-posn (+ x (* 1 ancho)) (+ y (* 2 ancho))) ancho ancho color2)
(draw-solid-rect (make-posn (+ x (* 2 ancho)) (+ y (* 2 ancho))) ancho ancho color1)
))

(tablero 'green 'yellow)