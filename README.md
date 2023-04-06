Janet Notes
===========


Getting Started
---------------

Install with

    brew install janet

Run a script with

    janet example.janet

Compile a script with

    janet -c example.janet example.jimage

And then run the image with

    janet -i example.jimage


Strings
-------

### Concatenation

```
(string "hello" " " "world") # -> "hello world"
```

### Join

```
(string/join @["abc" "123" "def"])     #-> "abc123def"
(string/join @["abc" "123" "def"] ",") # -> "abc,123,def"
```


Functions
---------

Entrypoint is

```
(defn main [&]
  (print "hello world"))
```

We can refactor this as

```
(defn hello []
  (print "hello world"))

(defn main [&]
  (hello))
```

### Optional Arguments

Everything after `&opt` is optional.

```
(defn optional-greeting [greeting &opt name]
  (default name "NAME")
  (print (string greeting " " name)))
```

### Variadic Arguments

Use `&` as the second to last argument, then all of the variadic arguments will be bundled into the last argument.

```
(defn variadic-greeting [greeting & names]
  (print (string greeting " " (string/join names ", "))))
```


Reference
---------

  - [Documentation](https://janet-lang.org/docs/index.html)
  - [Janet for Mortals](https://janet.guide/)
