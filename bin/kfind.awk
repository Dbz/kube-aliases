#! /usr/bin/awk -f

BEGIN { RESOURCES = "true" }

# Store the column titles
/^NAME/ { title = $0 }
$0 ~ regex { 

  # If we have found a match and have not printed a title
  if (RESOURCES) {
    if (regex != "") {
      print resourcetype ":"
      print title
    }
    RESOURCES = ""
  }

  # Print out matched line
  print

}

END {
  # Add a newline after each found segment
  if (!RESOURCES) { 
    print "" 
  }
}
