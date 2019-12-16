#! /usr/bin/awk -f

# Find deployments that are not ready

/NAMESPACE/ { 
  title = $1 " " $2  " " $3 " " $4 " " $5 " " $6 
  all_namespaces = "true"
}

{
  split($3, a, "/")
  if (a[1] != a[2]) {
    print $1 " " $2  " " $3 " " $4 " " $5  " " $6
  }
}
