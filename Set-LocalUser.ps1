$password = read-host -AsSecureString
get-localuser -Name Administrator | Set-LocalUser -Password $password
