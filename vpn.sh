#!/usr/bin/expect -f

set name xx.chen
set sudo_password xx
#set net_password

spawn sudo openconnect --juniper vpn.xxxxxx.com

expect { 
    "password *" {
        send "$sudo_password\r" 
    }
}

expect { 
    "realm \\\[xxxxxx|Guest|Partner\\\]:" {
        send "xxxxxx\r" 
    }
}

expect { 
    "username:" {
        send "$name\r" 
    }
}

#expect { 
#    "password:" {
#        send "$net_password\r" 
#    }
#}

interact
expect eof
exit 0
