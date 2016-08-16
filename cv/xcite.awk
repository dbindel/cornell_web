/cite/ { print "\\citation{" $2 "}" }
END { 
  print "\\bibstyle{plain}"
  print "\\bibdata{references}"
}
