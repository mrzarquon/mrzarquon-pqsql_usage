class pqsql_usage {

  if $pqsql_percentage >= 80 {
    notify { "You have ${pqsql_percentage} free for your PostGreSQL stor":
      tag => pe_healthcheck,
    }
  }

}
