;; Die ersten drei Zeilen dieser Datei wurden von DrRacket eingefügt. Sie enthalten Metadaten
;; über die Sprachebene dieser Datei in einer Form, die DrRacket verarbeiten kann.
#reader(lib "DMdA-vanilla-reader.ss" "deinprogramm")((modname soccer) (read-case-sensitive #f) (teachpacks ()) (deinprogramm-settings #(#f write repeating-decimal #f #t none explicit #f ())))
; Ein Spiel hat:
; - Spieltag (natural)
; - Gastgeber-Team (string)
; - Gastgeber-Tore (natural)
; - Gast-Team (string)
; - Gast-Tore (natural)

(define-record-procedures game
  make-game game?
  (game-matchday 
   game-home-team game-home-goals game-guest-team game-guest-goals))
(: make-game (natural string natural string natural -> game))
(: game? (any -> boolean))
(: game-home-team (game -> string))
(: game-home-goals (game -> natural))
(: game-guest-team (game -> string))
(: game-guest-goals (game -> natural))

; Spielzeit 2009/2010

; Spiele am ersten Tag
(define g1 (make-game 1 "Wolfsburg" 2 "Stuttgart" 0))
(define g2 (make-game 1 "Mainz" 2 "Bayer 04" 2))
(define g3 (make-game 1 "Hertha" 1 "Hannover" 0))
(define g4 (make-game 1 "Bremen" 2 "Frankfurt" 3))
(define g5 (make-game 1 "Nürnberg" 1 "Schalke" 2))
(define g6 (make-game 1 "Dortmund" 1 "1. FC Köln" 0))
(define g7 (make-game 1 "Hoffenheim" 1 "Bayern" 1))
(define g8 (make-game 1 "Bochum" 3 "Gladbach" 3))
(define g9 (make-game 1 "Freiburg" 1 "Hamburg" 1))

(define day1
  (list g1 g2 g3 g4 g5 g6 g7 g8 g9))

; Komplette Spielzeit
(define season-2009/2010
  (list
   (make-game 1 "Wolfsburg" 2 "Stuttgart" 0)
   (make-game 1 "Mainz" 2 "Bayer 04" 2)
   (make-game 1 "Hertha" 1 "Hannover" 0)
   (make-game 1 "Bremen" 2 "Frankfurt" 3)
   (make-game 1 "Nürnberg" 1 "Schalke" 2)
   (make-game 1 "Dortmund" 1 "1. FC Köln" 0)
   (make-game 1 "Hoffenheim" 1 "Bayern" 1)
   (make-game 1 "Bochum" 3 "Gladbach" 3)
   (make-game 1 "Freiburg" 1 "Hamburg" 1)
   
   (make-game 2 "Frankfurt" 1 "Nürnberg" 1)
   (make-game 2 "Hannover" 1 "Mainz" 1)
   (make-game 2 "Bayer 04" 1 "Hoffenheim" 0)
   (make-game 2 "Hamburg" 4 "Dortmund" 1)
   (make-game 2 "Stuttgart" 4 "Freiburg" 2)
   (make-game 2 "Bayern" 1 "Bremen" 1)
   (make-game 2 "1. FC Köln" 1 "Wolfsburg" 3)
   (make-game 2 "Gladbach" 2 "Hertha" 1)
   (make-game 2 "Schalke" 3 "Bochum" 0)
   
   (make-game 3 "Hoffenheim" 0 "Schalke" 0)
   (make-game 3 "Nürnberg" 0 "Hannover" 2)
   (make-game 3 "Mainz" 2 "Bayern" 1)
   (make-game 3 "Freiburg" 0 "Bayer 04" 5)
   (make-game 3 "1. FC Köln" 0 "Frankfurt" 0)
   (make-game 3 "Dortmund" 1 "Stuttgart" 1)
   (make-game 3 "Bochum" 1 "Hertha" 0)
   (make-game 3 "Bremen" 3 "Gladbach" 0)
   (make-game 3 "Wolfsburg" 2 "Hamburg" 4)
   
   (make-game 4 "Gladbach" 2 "Mainz" 0)
   (make-game 4 "Frankfurt" 1 "Dortmund" 1)
   (make-game 4 "Hannover" 0 "Hoffenheim" 1)
   (make-game 4 "Bayer 04" 2 "Bochum" 1)
   (make-game 4 "Schalke" 0 "Freiburg" 1)
   (make-game 4 "Stuttgart" 0 "Nürnberg" 0)
   (make-game 4 "Bayern" 3 "Wolfsburg" 0)
   (make-game 4 "Hertha" 2 "Bremen" 3)
   (make-game 4 "Hamburg" 3 "1. FC Köln" 1)
   
   (make-game 5 "Nürnberg" 1 "Gladbach" 0)
   (make-game 5 "Mainz" 2 "Hertha" 1)
   (make-game 5 "Freiburg" 0 "Frankfurt" 2)
   (make-game 5 "Hoffenheim" 3 "Bochum" 0)
   (make-game 5 "Dortmund" 1 "Bayern" 5)
   (make-game 5 "Wolfsburg" 2 "Bayer 04" 3)
   (make-game 5 "Hamburg" 3 "Stuttgart" 1)
   (make-game 5 "Bremen" 0 "Hannover" 0)
   (make-game 5 "1. FC Köln" 1 "Schalke" 2)
   
   (make-game 6 "Schalke" 1 "Wolfsburg" 2)
   (make-game 6 "Hannover" 1 "Dortmund" 1)
   (make-game 6 "Bochum" 2 "Mainz" 3)
   (make-game 6 "Gladbach" 2 "Hoffenheim" 4)
   (make-game 6 "Stuttgart" 0 "1. FC Köln" 2)
   (make-game 6 "Bayern" 2 "Nürnberg" 1)
   (make-game 6 "Frankfurt" 1 "Hamburg" 1)
   (make-game 6 "Bayer 04" 0 "Bremen" 0)
   (make-game 6 "Hertha" 0 "Freiburg" 4)
   
   (make-game 7 "Nürnberg" 0 "Bochum" 1)
   (make-game 7 "Frankfurt" 0 "Stuttgart" 3)
   (make-game 7 "1. FC Köln" 0 "Bayer 04" 1)
   (make-game 7 "Bremen" 3 "Mainz" 0)
   (make-game 7 "Dortmund" 0 "Schalke" 1)
   (make-game 7 "Wolfsburg" 4 "Hannover" 2)
   (make-game 7 "Hamburg" 1 "Bayern" 0)
   (make-game 7 "Freiburg" 3 "Gladbach" 0)
   (make-game 7 "Hoffenheim" 5 "Hertha" 1)
   
   (make-game 8 "Schalke" 2 "Frankfurt" 0)
   (make-game 8 "Mainz" 2 "Hoffenheim" 1)
   (make-game 8 "Bochum" 1 "Wolfsburg" 1)
   (make-game 8 "Hannover" 5 "Freiburg" 2)
   (make-game 8 "Bayer 04" 4 "Nürnberg" 0)
   (make-game 8 "Bayern" 0 "1. FC Köln" 0)
   (make-game 8 "Gladbach" 0 "Dortmund" 1)
   (make-game 8 "Stuttgart" 0 "Bremen" 2)
   (make-game 8 "Hertha" 1 "Hamburg" 3)
   
   (make-game 9 "Nürnberg" 3 "Hertha" 0)
   (make-game 9 "Freiburg" 1 "Bayern" 2)
   (make-game 9 "Frankfurt" 2 "Hannover" 1)
   (make-game 9 "1. FC Köln" 1 "Mainz" 0)
   (make-game 9 "Bremen" 2 "Hoffenheim" 0)
   (make-game 9 "Stuttgart" 1 "Schalke" 2)
   (make-game 9 "Hamburg" 0 "Bayer 04" 0)
   (make-game 9 "Wolfsburg" 2 "Gladbach" 1)
   (make-game 9 "Dortmund" 2 "Bochum" 0)
   
   (make-game 10 "Bayer 04" 1 "Dortmund" 1)
   (make-game 10 "Hoffenheim" 3 "Nürnberg" 0)
   (make-game 10 "Mainz" 3 "Freiburg" 0)
   (make-game 10 "Bayern" 2 "Frankfurt" 1)
   (make-game 10 "Hannover" 1 "Stuttgart" 0)
   (make-game 10 "Gladbach" 0 "1. FC Köln" 0)
   (make-game 10 "Hertha" 0 "Wolfsburg" 0)
   (make-game 10 "Bochum" 1 "Bremen" 4)
   (make-game 10 "Schalke" 3 "Hamburg" 3)
   
   (make-game 11 "Dortmund" 2 "Hertha" 0)
   (make-game 11 "Nürnberg" 2 "Bremen" 2)
   (make-game 11 "1. FC Köln" 0 "Hannover" 1)
   (make-game 11 "Hamburg" 2 "Gladbach" 3)
   (make-game 11 "Wolfsburg" 3 "Mainz" 3)
   (make-game 11 "Stuttgart" 0 "Bayern" 0)
   (make-game 11 "Schalke" 2 "Bayer 04" 2)
   (make-game 11 "Freiburg" 0 "Hoffenheim" 1)
   (make-game 11 "Frankfurt" 2 "Bochum" 1)
   
   (make-game 12 "Bayer 04" 4 "Frankfurt" 0)
   (make-game 12 "Mainz" 1 "Nürnberg" 0)
   (make-game 12 "Gladbach" 0 "Stuttgart" 0)
   (make-game 12 "Bochum" 1 "Freiburg" 2)
   (make-game 12 "Hoffenheim" 1 "Wolfsburg" 2)
   (make-game 12 "Bayern" 1 "Schalke" 1)
   (make-game 12 "Hannover" 2 "Hamburg" 2)
   (make-game 12 "Bremen" 1 "Dortmund" 1)
   (make-game 12 "Hertha" 0 "1. FC Köln" 1)
   
   (make-game 13 "Schalke" 2 "Hannover" 0)
   (make-game 13 "Freiburg" 0 "Bremen" 6)
   (make-game 13 "Stuttgart" 1 "Hertha" 1)
   (make-game 13 "1. FC Köln" 0 "Hoffenheim" 4)
   (make-game 13 "Wolfsburg" 2 "Nürnberg" 3)
   (make-game 13 "Frankfurt" 1 "Gladbach" 2)
   (make-game 13 "Dortmund" 0 "Mainz" 0)
   (make-game 13 "Bayern" 1 "Bayer 04" 1)
   (make-game 13 "Hamburg" 0 "Bochum" 1)
   
   (make-game 14 "Bochum" 0 "1. FC Köln" 0)
   (make-game 14 "Nürnberg" 0 "Freiburg" 1)
   (make-game 14 "Mainz" 1 "Hamburg" 1)
   (make-game 14 "Bremen" 2 "Wolfsburg" 2)
   (make-game 14 "Hoffenheim" 1 "Dortmund" 2)
   (make-game 14 "Hertha" 1 "Frankfurt" 3)
   (make-game 14 "Gladbach" 1 "Schalke" 0)
   (make-game 14 "Bayer 04" 4 "Stuttgart" 0)
   (make-game 14 "Hannover" 0 "Bayern" 3)
   
   (make-game 15 "Bayern" 2 "Gladbach" 1)
   (make-game 15 "Hannover" 0 "Bayer 04" 0)
   (make-game 15 "Dortmund" 4 "Nürnberg" 0)
   (make-game 15 "Hamburg" 0 "Hoffenheim" 0)
   (make-game 15 "Stuttgart" 1 "Bochum" 1)
   (make-game 15 "Wolfsburg" 2 "Freiburg" 2)
   (make-game 15 "Frankfurt" 2 "Mainz" 0)
   (make-game 15 "1. FC Köln" 0 "Bremen" 0)
   (make-game 15 "Schalke" 2 "Hertha" 0)
   
   (make-game 16 "Hertha" 2 "Bayer 04" 2)
   (make-game 16 "Nürnberg" 0 "Hamburg" 4)
   (make-game 16 "Freiburg" 0 "1. FC Köln" 0)
   (make-game 16 "Gladbach" 5 "Hannover" 3)
   (make-game 16 "Bochum" 1 "Bayern" 5)
   (make-game 16 "Hoffenheim" 1 "Frankfurt" 1)
   (make-game 16 "Bremen" 0 "Schalke" 2)
   (make-game 16 "Mainz" 1 "Stuttgart" 1)
   (make-game 16 "Wolfsburg" 1 "Dortmund" 3)
   
   (make-game 17 "Schalke" 1 "Mainz" 0)
   (make-game 17 "Frankfurt" 2 "Wolfsburg" 2)
   (make-game 17 "Hannover" 2 "Bochum" 3)
   (make-game 17 "Bayer 04" 3 "Gladbach" 2)
   (make-game 17 "Dortmund" 1 "Freiburg" 0)
   (make-game 17 "Bayern" 5 "Hertha" 2)
   (make-game 17 "Stuttgart" 3 "Hoffenheim" 1)
   (make-game 17 "Hamburg" 2 "Bremen" 1)
   (make-game 17 "1. FC Köln" 3 "Nürnberg" 0)
   
   (make-game 18 "Bayern" 2 "Hoffenheim" 0)
   (make-game 18 "Frankfurt" 1 "Bremen" 0)
   (make-game 18 "Hamburg" 2 "Freiburg" 0)
   (make-game 18 "Hannover" 0 "Hertha" 3)
   (make-game 18 "Bayer 04" 4 "Mainz" 2)
   (make-game 18 "Gladbach" 1 "Bochum" 2)
   (make-game 18 "Stuttgart" 3 "Wolfsburg" 1)
   (make-game 18 "Schalke" 1 "Nürnberg" 0)
   (make-game 18 "1. FC Köln" 2 "Dortmund" 3)
   
   (make-game 19 "Freiburg" 0 "Stuttgart" 1)
   (make-game 19 "Hertha" 0 "Gladbach" 0)
   (make-game 19 "Nürnberg" 1 "Frankfurt" 1)
   (make-game 19 "Mainz" 1 "Hannover" 0)
   (make-game 19 "Bochum" 2 "Schalke" 2)
   (make-game 19 "Bremen" 2 "Bayern" 3)
   (make-game 19 "Dortmund" 1 "Hamburg" 0)
   (make-game 19 "Wolfsburg" 2 "1. FC Köln" 3)
   (make-game 19 "Hoffenheim" 0 "Bayer 04" 3)
   
   (make-game 20 "Hamburg" 1 "Wolfsburg" 1)
   (make-game 20 "Hannover" 1 "Nürnberg" 3)
   (make-game 20 "Bayern" 3 "Mainz" 0)
   (make-game 20 "Hertha" 0 "Bochum" 0)
   (make-game 20 "Frankfurt" 1 "1. FC Köln" 2)
   (make-game 20 "Gladbach" 4 "Bremen" 3)
   (make-game 20 "Schalke" 2 "Hoffenheim" 0)
   (make-game 20 "Stuttgart" 4 "Dortmund" 1)
   (make-game 20 "Bayer 04" 3 "Freiburg" 1)
   
   (make-game 21 "Bremen" 2 "Hertha" 1)
   (make-game 21 "Hoffenheim" 2 "Hannover" 1)
   (make-game 21 "Bochum" 1 "Bayer 04" 1)
   (make-game 21 "Freiburg" 0 "Schalke" 0)
   (make-game 21 "1. FC Köln" 3 "Hamburg" 3)
   (make-game 21 "Wolfsburg" 1 "Bayern" 3)
   (make-game 21 "Nürnberg" 1 "Stuttgart" 2)
   (make-game 21 "Mainz" 1 "Gladbach" 0)
   (make-game 21 "Dortmund" 2 "Frankfurt" 3)
   
   (make-game 22 "Gladbach" 2 "Nürnberg" 1)
   (make-game 22 "Hannover" 1 "Bremen" 5)
   (make-game 22 "Bochum" 2 "Hoffenheim" 1)
   (make-game 22 "Stuttgart" 1 "Hamburg" 3)
   (make-game 22 "Bayer 04" 2 "Wolfsburg" 1)
   (make-game 22 "Hertha" 1 "Mainz" 1)
   (make-game 22 "Bayern" 3 "Dortmund" 1)
   (make-game 22 "Schalke" 2 "1. FC Köln" 0)
   (make-game 22 "Frankfurt" 2 "Freiburg" 1)
   
   (make-game 23 "Hoffenheim" 2 "Gladbach" 2)
   (make-game 23 "Mainz" 0 "Bochum" 0)
   (make-game 23 "Hamburg" 0 "Frankfurt" 0)
   (make-game 23 "Dortmund" 4 "Hannover" 1)
   (make-game 23 "1. FC Köln" 1 "Stuttgart" 5)
   (make-game 23 "Nürnberg" 1 "Bayern" 1)
   (make-game 23 "Freiburg" 0 "Hertha" 3)
   (make-game 23 "Bremen" 2 "Bayer 04" 2)
   (make-game 23 "Wolfsburg" 2 "Schalke" 1)
   
   (make-game 24 "Schalke" 2 "Dortmund" 1)
   (make-game 24 "Bochum" 0 "Nürnberg" 0)
   (make-game 24 "Gladbach" 1 "Freiburg" 1)
   (make-game 24 "Stuttgart" 2 "Frankfurt" 1)
   (make-game 24 "Mainz" 1 "Bremen" 2)
   (make-game 24 "Hertha" 0 "Hoffenheim" 2)
   (make-game 24 "Bayer 04" 0 "1. FC Köln" 0)
   (make-game 24 "Hannover" 0 "Wolfsburg" 1)
   (make-game 24 "Bayern" 1 "Hamburg" 0)
   
   (make-game 25 "Wolfsburg" 4 "Bochum" 1)
   (make-game 25 "Freiburg" 1 "Hannover" 2)
   (make-game 25 "Frankfurt" 1 "Schalke" 4)
   (make-game 25 "Hamburg" 1 "Hertha" 0)
   (make-game 25 "Bremen" 2 "Stuttgart" 2)
   (make-game 25 "1. FC Köln" 1 "Bayern" 1)
   (make-game 25 "Dortmund" 3 "Gladbach" 0)
   (make-game 25 "Nürnberg" 3 "Bayer 04" 2)
   (make-game 25 "Hoffenheim" 0 "Mainz" 1)
   
   (make-game 26 "Schalke" 2 "Stuttgart" 1)
   (make-game 26 "Mainz" 1 "1. FC Köln" 0)
   (make-game 26 "Bochum" 1 "Dortmund" 4)
   (make-game 26 "Hertha" 1 "Nürnberg" 2)
   (make-game 26 "Gladbach" 0 "Wolfsburg" 4)
   (make-game 26 "Hannover" 2 "Frankfurt" 1)
   (make-game 26 "Bayern" 2 "Freiburg" 1)
   (make-game 26 "Hoffenheim" 0 "Bremen" 1)
   (make-game 26 "Bayer 04" 4 "Hamburg" 2)
   
   (make-game 27 "1. FC Köln" 1 "Gladbach" 1)
   (make-game 27 "Freiburg" 1 "Mainz" 0)
   (make-game 27 "Bremen" 3 "Bochum" 2)
   (make-game 27 "Stuttgart" 2 "Hannover" 0)
   (make-game 27 "Nürnberg" 0 "Hoffenheim" 0)
   (make-game 27 "Frankfurt" 2 "Bayern" 1)
   (make-game 27 "Dortmund" 3 "Bayer 04" 0)
   (make-game 27 "Hamburg" 2 "Schalke" 2)
   (make-game 27 "Wolfsburg" 1 "Hertha" 5)
   
   (make-game 28 "Bochum" 1 "Frankfurt" 2)
   (make-game 28 "Bremen" 4 "Nürnberg" 2)
   (make-game 28 "Hannover" 1 "1. FC Köln" 4)
   (make-game 28 "Hertha" 0 "Dortmund" 0)
   (make-game 28 "Bayern" 1 "Stuttgart" 2)
   (make-game 28 "Mainz" 0 "Wolfsburg" 2)
   (make-game 28 "Bayer 04" 0 "Schalke" 2)
   (make-game 28 "Hoffenheim" 1 "Freiburg" 1)
   (make-game 28 "Gladbach" 1 "Hamburg" 0)
   
   (make-game 29 "Nürnberg" 2 "Mainz" 0)
   (make-game 29 "Stuttgart" 2 "Gladbach" 1)
   (make-game 29 "Freiburg" 1 "Bochum" 1)
   (make-game 29 "Dortmund" 2 "Bremen" 1)
   (make-game 29 "Frankfurt" 3 "Bayer 04" 2)
   (make-game 29 "Schalke" 1 "Bayern" 2)
   (make-game 29 "1. FC Köln" 0 "Hertha" 3)
   (make-game 29 "Wolfsburg" 4 "Hoffenheim" 0)
   (make-game 29 "Hamburg" 0 "Hannover" 0)
   
   (make-game 30 "Gladbach" 2 "Frankfurt" 0)
   (make-game 30 "Bremen" 4 "Freiburg" 0)
   (make-game 30 "Hoffenheim" 0 "1. FC Köln" 2)
   (make-game 30 "Hannover" 4 "Schalke" 2)
   (make-game 30 "Mainz" 1 "Dortmund" 0)
   (make-game 30 "Hertha" 0 "Stuttgart" 1)
   (make-game 30 "Bayer 04" 1 "Bayern" 1)
   (make-game 30 "Bochum" 1 "Hamburg" 2)
   (make-game 30 "Nürnberg" 0 "Wolfsburg" 2)
   
   (make-game 31 "1. FC Köln" 2 "Bochum" 0)
   (make-game 31 "Freiburg" 2 "Nürnberg" 1)
   (make-game 31 "Hamburg" 0 "Mainz" 1)
   (make-game 31 "Schalke" 3 "Gladbach" 1)
   (make-game 31 "Wolfsburg" 2 "Bremen" 4)
   (make-game 31 "Stuttgart" 2 "Bayer 04" 1)
   (make-game 31 "Bayern" 7 "Hannover" 0)
   (make-game 31 "Dortmund" 1 "Hoffenheim" 1)
   (make-game 31 "Frankfurt" 2 "Hertha" 2)
   
   (make-game 32 "Bochum" 0 "Stuttgart" 2)
   (make-game 32 "Hertha" 0 "Schalke" 1)
   (make-game 32 "Nürnberg" 2 "Dortmund" 3)
   (make-game 32 "Gladbach" 1 "Bayern" 1)
   (make-game 32 "Mainz" 1 "Frankfurt" 2)
   (make-game 32 "Bayer 04" 3 "Hannover" 0)
   (make-game 32 "Bremen" 1 "1. FC Köln" 0)
   (make-game 32 "Hoffenheim" 5 "Hamburg" 1)
   (make-game 32 "Freiburg" 1 "Wolfsburg" 0)
   
   (make-game 33 "Hamburg" 4 "Nürnberg" 0)
   (make-game 33 "Stuttgart" 2 "Mainz" 2)
   (make-game 33 "1. FC Köln" 2 "Freiburg" 2)
   (make-game 33 "Hannover" 6 "Gladbach" 1)
   (make-game 33 "Bayern" 3 "Bochum" 1)
   (make-game 33 "Schalke" 0 "Bremen" 2)
   (make-game 33 "Frankfurt" 1 "Hoffenheim" 2)
   (make-game 33 "Bayer 04" 1 "Hertha" 1)
   (make-game 33 "Dortmund" 1 "Wolfsburg" 1)
   
   (make-game 34 "Nürnberg" 1 "1. FC Köln" 0)
   (make-game 34 "Bochum" 0 "Hannover" 3)
   (make-game 34 "Gladbach" 1 "Bayer 04" 1)
   (make-game 34 "Mainz" 0 "Schalke" 0)
   (make-game 34 "Freiburg" 3 "Dortmund" 1)
   (make-game 34 "Bremen" 1 "Hamburg" 1)
   (make-game 34 "Hoffenheim" 1 "Stuttgart" 1)
   (make-game 34 "Hertha" 1 "Bayern" 3)
   (make-game 34 "Wolfsburg" 3 "Frankfurt" 1)))

; Punktzahl in Spiel
(define points
  (signature (one-of 0 1 3)))

; Punktzahl für Gastgeber-Team berechnen
(: home-points (game -> points))

(check-expect (home-points g1) 3)
(check-expect (home-points g2) 1)
(check-expect (home-points g3) 3)
(check-expect (home-points g4) 0)

; erste Version
(define home-points
    (lambda (g)
      (let ((g1 (game-home-goals g))
            (g2 (game-guest-goals g)))
        (cond
          ((> g1 g2) 3)
          ((< g1 g2) 0)
          ((= g1 g2) 1)))))


; Punktzahl für Gast-Team berechnen
(: guest-points (game -> points))

(check-expect (guest-points g1) 0)
(check-expect (guest-points g2) 1)
(check-expect (guest-points g3) 0)
(check-expect (guest-points g4) 3)

(define guest-points
    (lambda (g)
      (let ((g1 (game-guest-goals g))
            (g2 (game-home-goals g)))
        (cond
          ((> g1 g2) 3)
          ((< g1 g2) 0)
          ((= g1 g2) 1)))))

; Beobachtung: die beiden Funktionen unterscheiden sich nur in der Rolle von
; game-home-goals und game-guest-goals
; Konsequenz:  AUSKLAMMERN!  (vornehm: refactoring)

; Punktzahl bestimmen
(: compute-points ((game -> natural) (game -> natural) -> (game -> points)))
; Eine Funktion "höherer Ordnung": Sie nimmt zwei Funktionen als Argumente
; und liefert eine Funktion als Resultat.
; Das ist ein Phänomen, das sich nur bei *funktionalen Programmiersprachen* finden lässt


(define compute-points
  (lambda (goals-1 goals-2)
    (lambda (g)
      (let ((g1 (goals-1 g))
            (g2 (goals-2 g)))
        (cond
          ((> g1 g2) 3)
          ((< g1 g2) 0)
          ((= g1 g2) 1))))))


; Mit dieser Funktion können wir nun home-points und guest-points flüssiger definieren:

;(define home-points (compute-points game-home-goals game-guest-goals))
;(define guest-points (compute-points game-guest-goals game-home-goals))

; Mantra 9: Wenn mehrere Prozeduren im
;  Programm bis auf wenige Stellen gleich aussehen, schreibe
;  eine allgemeinere Prozedur, die darüber abstrahiert, was an diesen
;  Stellen steht.  Ersetze dann die ursprünglichen Prozeduren durch
;  Anwendungen der neuen, allgemeinen Prozedur.

; Ist Spiel unentschieden?
(: game-draw? (game -> boolean))

(check-expect (game-draw? g1) #f)
(check-expect (game-draw? g2) #t)
(check-expect (game-draw? g3) #f)

(define game-draw?
  (lambda (g)
    (= 1 (home-points g))))

; Unentschiedene Spiele rausfiltern
(: games-draw ((list-of game) -> (list-of game)))

(check-expect (games-draw day1) (list g2 g7 g8 g9))

(define games-draw
  (lambda (lis)
    (cond
      ((empty? lis) empty)
      ((pair? lis)
       (let ((f (first lis))
             (r (games-draw (rest lis))))
         (if (game-draw? f)
             (make-pair f r)
             r))))))       

; Spielt Team bei Spiel?
(: plays-game? (string game -> boolean))

(check-expect (plays-game? "Wolfsburg" g1) #t)
(check-expect (plays-game? "Stuttgart" g1) #t)
(check-expect (plays-game? "Hannover" g1) #f)

(define plays-game?
  (lambda (t g)
    (or (string=? t (game-home-team g))
        (string=? t (game-guest-team g)))))

; Alle Spiele mit einem Team herausfiltern
(: games-playing (string (list-of game) -> (list-of game)))

(check-expect (games-playing "Nürnberg" day1) (list g5))
(check-expect (length (games-playing "Nürnberg" season-2009/2010)) 34)

(define games-playing
  (lambda (t lis)
    (cond
      ((empty? lis) empty)
      ((pair? lis)
       (let ((f (first lis))
             (r (games-playing t (rest lis))))
         (if (plays-game? t f)
             (make-pair f r)
             r))))))

; Beobachtung der Unterschiede bzw. Gemeinsamkeiten führt wieder zum Ausklammern:

; Spiele aus Liste filtern
(: filter-games ((game -> boolean) (list-of game) -> (list-of game)))

(check-expect (filter-games game-draw? day1)
              (list g2 g7 g8 g9))

(define plays-hamburg?
  (lambda (g)
    (plays-game? "Hamburg" g)))

(check-expect (filter-games plays-hamburg? day1)
              (list g9))

; Es erscheint umständlich, extra eine Funktion plays-hamburg? definieren zu müssen,
; nur um die Spiele herauszufinden, in denen Hamburg gespielt hat.
; Wir können auch "anonyme Funktionen" für den Zweck verwenden:
(check-expect (filter-games (lambda (g)
                              (plays-game? "Nürnberg" g))
                            day1)
              (list g5))
; Auch solche anonymen Funktionen sind ein Wesensmerkmal funktionaler Programmiersprachen

(define filter-games
  (lambda (p lis)
    (cond
      ((empty? lis) empty)
      ((pair? lis)
       (let ((f (first lis))
             (r (filter-games p (rest lis))))
         (if (p (first lis))
             (make-pair f r)
             r))))))

; Das hat alles eigentlich überhaupt nicht unbedingt mit
; Fußballspielen zu tun; die allgemeinere Aufgabe heißt:
; Elemente aus einer Liste filtern
(: list-filter ((%a -> boolean) (list-of %a) -> (list-of %a)))

(check-expect (list-filter game-draw? day1)
              (list g2 g7 g8 g9))
(check-expect (list-filter (lambda (g)
                             (plays-game? "Nürnberg" g))
                           day1)
              (list g5))

(define list-filter
  (lambda (p lis)
    (cond
      ((empty? lis) empty)
      ((pair? lis)
       (let ((f (first lis))
             (r (list-filter p (rest lis))))
         (if (p (first lis))
             (make-pair f r)
             r))))))

; Punkte eines Teams aus Spiel berechnen
(: team-points (string game -> points))

(check-expect (team-points "Freiburg" g9) 1)
(check-expect (team-points "Dortmund" g6) 3)
(check-error (team-points "Hannover" g1))

(define team-points
  (lambda (t g)
    (cond
      ((string=? t (game-home-team g)) (home-points g))
      ((string=? t (game-guest-team g)) (guest-points g)))))

; Punkte eines Teams aus einer Liste von Spielen berechnen
(: team-points-sum (string (list-of game) -> natural))

(check-expect (team-points-sum "Hamburg" season-2009/2010) 52)
(check-expect (team-points-sum "Nürnberg" season-2009/2010) 31)

(define team-points-sum
  (lambda (t lis)
    (team-points-sum-helper t
                            (list-filter (lambda (g)
                                           (plays-game? t g))
                                         lis))))

(: team-points-sum-helper (string (list-of game) -> natural))
(define team-points-sum-helper
  (lambda (t lis)
    (cond
      ((empty? lis) 0)
      ((pair? lis)
       (+ (team-points t (first lis))
          (team-points-sum-helper t (rest lis)))))))

; Eine hanebüchene Frage:
; Hat der SC Freiburg in der Saison 2009/10 gegen 1. FC Bayern München gewonnen?
(check-expect (pair?
               (list-filter (lambda (g)
                              (and (plays-game? "Freiburg" g)
                                   (plays-game? "Bayern" g)
                                   (= (team-points "Freiburg" g) 3)))
                            season-2009/2010))
              #f)
; und wie sieht es aus mit Dortmund gegen Bayer 04?
(check-expect (pair?
               (list-filter (lambda (g)
                              (and (plays-game? "Dortmund" g)
                                   (plays-game? "Bayer 04" g)
                                   (= (team-points "Dortmund" g) 3)))
                            season-2009/2010))
              #t)

; Gesamttore eines Spiels berechnen
(: total-goals (game -> natural))

(check-expect (total-goals g1) 2)
(check-expect (total-goals g2) 4)

(define total-goals
  (lambda (g)
    (+ (game-home-goals g)
       (game-guest-goals g))))

; Gesamttore in einer Liste von Spielen berechnen
(: list-total-goals ((list-of game) -> natural))

(check-expect (list-total-goals day1) 26)

(define list-total-goals
  (lambda (lis)
    (cond
      ((empty? lis) 0)
      ((pair? lis)
       (+ (total-goals (first lis))
          (list-total-goals (rest lis)))))))

; Das geht auch allgemeiner: Eine Liste "zusammenfalten" zu einem Ergebnis:
; - Ein Element von der Sorte %b als Ergebnis für die leere Liste
; - Eine Funktion (%a %b -> %b) für das Kombinieren von Ergebnissen
; - Eine Liste von der Sorte (list-of %a)
; - ... ergeben ein Ergebnis von der Sorte %b

(: list-fold (%b (%a %b -> %b) (list-of %a) -> %b))

; ein einfaches Beispiel
(check-expect (list-fold 0 + (list 1 2 3)) 6)
; die Funktion list-total-goals hätten wir mit list-fold so schreiben können:
(check-expect (list-fold 0
                         (lambda (g s)
                           (+ (+ (game-home-goals g)
                                 (game-guest-goals g))
                              s))
                         day1)
              26)
; Eine Liste von Spielen zusammengefaltet zu einer Zahl:
; %a und %b verschieden!

(check-expect (list-fold empty
                         (lambda (g lis)
                           (if (plays-game? "Hamburg" g)
                               (make-pair g lis)
                               lis))
                         day1)
              (list g9))
; Eine Liste von Spielen zusammengefaltet zu einer anderen Liste:
; %a und %b gleich!

(define list-fold
  (lambda (start combine lis)
    (cond
      ((empty? lis) start)
      ((pair? lis) 
       (combine (first lis)
                (list-fold start combine (rest lis)))))))


; Tore eines Teams aus einem Spiel berechnen
(: team-goals (string game -> natural))

(check-expect (team-goals "Wolfsburg" g1) 2)
(check-expect (team-goals "Stuttgart" g1) 0)
(check-error (team-goals "Hannover" g1))

(define team-goals
  (lambda (t g)
    (cond
      ((string=? t (game-home-team g)) (game-home-goals g))
      ((string=? t (game-guest-team g)) (game-guest-goals g)))))

; Tore eines Teams aus einer Liste von Spielen auflisten
(: list-team-goals (string (list-of game) -> (list-of natural)))

(check-expect (list-team-goals "Hamburg"
                               (list-filter (lambda (g)
                                              (plays-game? "Hamburg" g))
                                            season-2009/2010))
              (list 1 4 4 3 3 1 1 3 0 3 2 2 0 1 0 4 2 2 0 1 3 3 0 0 1 2 2 0 0 2 0 1 4 1))

(define list-team-goals
  (lambda (t lis)
    (cond
      ((empty? lis) empty)
      ((pair? lis)
       (make-pair (team-goals t (first lis))
                  (list-team-goals t (rest lis)))))))

; Auch das geht allgemeiner: Eine Funktion (%a -> %b) "fortsetzen" zu einer
; Funktion ((list-of %a) -> (list-of %b)):

(: list-map ((%a -> %b) (list-of %a) -> (list-of %b)))

(check-expect (list-map (lambda (g)
                          (team-goals "Hamburg" g))
                        (list-filter (lambda (g)
                                       (plays-game? "Hamburg" g))
                                     season-2009/2010))
              (list 1 4 4 3 3 1 1 3 0 3 2 2 0 1 0 4 2 2 0 1 3 3 0 0 1 2 2 0 0 2 0 1 4 1))

(define list-map
  (lambda (f lis)
    (cond
      ((empty? lis) empty)
      ((pair? lis)
       (make-pair (f (first lis))
                  (list-map f (rest lis)))))))

; jetzt können wir noch von "Hamburg" abstrahieren:

(: make-specific-team-goals (string -> (game -> natural)))
(define make-specific-team-goals
  (lambda (t)
    (lambda (g)
      (team-goals t g))))

(: make-specific-plays-game? (string -> (game -> boolean)))
(define make-specific-plays-game?
  (lambda (t)
    (lambda (g)
      (plays-game? t g))))

(check-expect (list-map (make-specific-team-goals "Hamburg")
                        (list-filter (make-specific-plays-game? "Hamburg")
                                     season-2009/2010))
              (list 1 4 4 3 3 1 1 3 0 3 2 2 0 1 0 4 2 2 0 1 3 3 0 0 1 2 2 0 0 2 0 1 4 1))

; list-map hat nicht genau die Signatur, die wir "versprochen" hatten:
; geplant war ((%a -> %b) -> ((list-of %a) -> (list-of %b)))
; geliefert haben wir ((%a -> %b) (list-of %a) -> (list-of %b))
; Da hilft der Schönfinkel-Isomorphismus, der im englischen Sprachraum Curry-Isomorphismus heißt:

; Prozedur schönfinkeln
(: curry ((%a %b -> %c) -> (%a -> (%b -> %c))))

(check-expect (list-map ((curry team-goals) "Hamburg")
                        (list-filter ((curry plays-game?) "Hamburg")
                                     season-2009/2010))
              (list 1 4 4 3 3 1 1 3 0 3 2 2 0 1 0 4 2 2 0 1 3 3 0 0 1 2 2 0 0 2 0 1 4 1))

(define curry
  (lambda (p)
    (lambda (a)
      (lambda (b)
        (p a b)))))

; Prozedur entschönfinkeln
(: uncurry ((%a -> (%b -> %c)) -> (%a %b -> %c)))

(check-expect ((uncurry (curry +)) 3 4) 7)

(define uncurry
  (lambda (p)
    (lambda (a b)
      ((p a) b))))
