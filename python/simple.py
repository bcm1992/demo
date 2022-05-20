server_list = [ 
    {"server_name":"alpha-01", "server_type":"Linux", "version":"7.1", "uptime": 3823},
    {"server_name":"alpha-02", "server_type":"Linux", "version":"7.1", "uptime": 76822},
    {"server_name":"Win-01", "server_type":"Windows", "version":"2022", "uptime": 2881},
    {"server_name":"Win-02", "server_type":"Windows", "version":"2022", "uptime": 123},
    {"server_name":"beta-01", "server_type":"Linux", "version":"6.9", "uptime": 21833}
  ]

#1 create a list `linux_server` including Linux servers only

#2 from `linux_server` list, print "Long Running" if uptime is more than 4380 hours, "NA" for otherwise
#  Expected Output Example)
#        server-name Long Running
#        server-name NA
#        server-name NA

#3 create a function, input (uptime), return ("Long Running", "NA") and use the function to replace 2

