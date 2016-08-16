BEGIN {
  print("\\begin{ecompact}\n")
}

END {
  print(bibitems["\\bibitem{" tag "}"])
  print("\\end{ecompact}")
}

/^citex/ {
  $1 = ""
  print("{\bf " $0 "}")
  next
}

/^cite/ {
  print(bibitems["\\bibitem{" $2 "}"])
  next
}

/^\\bibitem/ {
  item_tag = $1
  in_item = 1
  item = ""
}

in_item {
  item = item $0 "\n"
}

/^[ ]*$/ {
  if (item) {
    bibitems[item_tag] = item
  }
  in_item = 0
}
