#! /usr/bin/awk -f

BEGIN { RESOURCES = "true" }

/NAME/ { title = $1 " " $2 " " $3 " " $4 " " $5 }
/NAMESPACE/ { 
  title = $1 " " $2  " " $3 " " $4 " " $5 " " $6 
  all_namespaces = "true"
}

$0 ~ regex { 

  # If we have found a match and have not printed a title
  if (RESOURCES) {
    if (regex != "") {
      print title
    }
    RESOURCES = ""
  }

  if (all_namespaces) {
    print $1 " " $2  " " $3 " " $4 " " $5 " " $6 
  }
  else {
    print $1 " " $2 " " $3 " " $4 " " $5 
  }
}
