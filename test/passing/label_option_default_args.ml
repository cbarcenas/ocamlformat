let f x = e

let (* 0 *) f (* 1 *) x (* 2 *) = (* 3 *) e

let f ~x = e

let (* 0 *) f (* 1 *) ~x (* 2 *) = (* 3 *) e

let f ~(x : t) = e

let (* 0 *) f (* 1 *) ~((* 2 *) x (* 3 *) : (* 4 *) t (* 5 *)) (* 6 *) = (* 7 *) e

let f ~l:x = e

let (* 0 *) f (* 1 *) ~l: (* 2 *) x (* 3 *) = (* 4 *) e

let f ~l:{f; g} = e

let (* 0 *) f (* 1 *) ~l: (* 2 *) { (* 3 *) f (* 4 *); (* 5 *) g (* 6 *)} (* 7 *) = e

let f ~x:({f; g} as x) = e

let (* 0 *) f (* 1 *) ~x:((* 2 *) {f; g} (* 3 *) as (* 4 *) x (* 5 *)) (* 6 *) = e

let f ?x = e

let (* 0 *) f (* 1 *) ?(* 2 *)x (* 3 *) = e

let f ?(x : t) = e

let (* 0 *) f (* 1 *) ?((* 2 *) x (* 3 *) : (* 4 *) t (* 5 *)) (* 6 *) = e

let f ?l:x = e

let (* 0 *) f (* 1 *) ?l:(* 2 *) x (* 3 *) = e

let f ?l:(C x) = e

let (* 0 *) f (* 1 *) ?l: (* 2 *) ((* 3 *) C (* 4 *) x (* 5 *)) (* 6 *) = e

let f ?(x= d) = e

let (* 0 *) f (* 1 *) ?((* 2 *) x (* 3 *) = (* 4 *) d (* 5 *)) (* 6 *) = e

let f ?(x : t = d) = e

let (* 0 *) f (* 1 *) ?((* 2 *) x (* 3 *) : (* 4 *) t (* 5 *) = (* 6 *) d (* 7 *)) (* 8 *) = e

let f ?(x= (d : t)) = e

let (* 0 *) f (* 1 *) ?((* 2 *) x (* 3 *) = (* 4 *) ((* 5 *) d (* 6 *) : (* 7 *) t (* 8 *)) (* 9 *)) (* 10 *) = e

let f ?l:(x = d) = e

let f ?l:(x = (d : t)) = e

let f ?l:(x : t = d) = e

let (* 0 *) f (* 1 *) ?l: (* 2 *) ((* 3 *) x (* 4 *) : (* 5 *) t (* 6 *) = (* 7 *) d (* 8 *)) (* 9 *) = e

let f ?l:(C x = d) = e

let (* 0 *) f (* 1 *) ?l: (* 2 *) ((* 3 *) C (* 4 *) x (* 5 *) = (* 6 *) d (* 7 *)) (* 8 *) = e

let f ?m:((module M : S) = (module U)) = e

let f ?m:((module M) = (module U : S)) = e

let f ?m:((module M : S) = (module struct end)) = e

let f ?m:((module M) = (module struct end : S)) = e
