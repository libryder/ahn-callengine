adhearsion {
  headers = JSON.parse tropo_headers
  puts headers 
  puts "To: #{headers["To"]}"
  puts "From: #{headers["From"]}" 
  play "Paint me like one of your pretty french girls" 

}
