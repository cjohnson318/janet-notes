
(defn hello-world []
  (print "hello world"))

(defn random []
  "Generate a random number between 0 and 1"
  (math/random))

(defn random-float [x]
  "Use an argument in a function"
  (+ x (math/random)))

(defn optional-greeting [greeting &opt name]
  (default name "NAME")
  (print (string greeting " " name)))

(defn variadic-greeting [greeting & names]
  (print (string greeting " " (string/join names ", "))))

(defn main [&]
  (hello-world)
  (print "A random number between 0 and 1")
  (print (random))
  (print "A random number between 2 and 3")
  (print (random-float 2))
  (optional-greeting "Hi" "person")
  (optional-greeting "Hello")
  (variadic-greeting "hey")
  (variadic-greeting "hey" "Woody")
  (variadic-greeting "hey" "Buzz" "Bo")
)
