BEGIN {
  print("\\begin{enumerate}\n")
}

END {
  print("\\end{enumerate}")
}

/^citex/ {
  $1 = ""
  print("\\\\ {\\bf " $0 "}")
  next
}

/^citeh/ {
  print(bibitems["\\bibitem{" $2 "}"])
  print("\\deptrev{Representative paper for tenure review.}")
}

/^cite / {
  print(bibitems["\\bibitem{" $2 "}"])
  next
}

/^\\bibitem/ {
  item_tag = $1
  in_item = 1
  item = ""
}

/^[ ]*$/ {
  if (item) {
    bibitems[item_tag] = item
  }
  in_item = 0
}

in_item {
  item = item "\n" $0
}
