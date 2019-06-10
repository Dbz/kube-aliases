#! /usr/bin/awk -f

BEGIN { RESOURCES = "true" }

/NAMESPACE/ { title = $1 " " $2  " " $4 " " $5 " " $6 " " $8 }
$0 ~ regex { 

  # If we have found a match and have not printed a title
  if (RESOURCES) {
    if (regex != "") {
      print title
    }
    RESOURCES = ""
  }

  print $1 " " $2  " " $4 " " $5 " " $6 " " $8 
}
