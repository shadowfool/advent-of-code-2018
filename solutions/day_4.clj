( require '[clojure.string :as str] )
( def input ( slurp "inputs/day_4.txt" ) )


( def sorted_list 
    ( sort-by 
        :date
        ( map
            ( fn [ s ] { :date ( get ( str/split s #"\]" ) 0 ) :message ( get ( str/split s #"\]" ) 1 ) }  )
            ( clojure.string/split-lines input )
        ) 
    ) 
)
( print sorted_list )

; clojure.string/split "" #"]"
; {
;     :date ( get arr 0 )
;     :message ( get arr 1 )
; }