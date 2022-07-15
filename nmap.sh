while true
	do
		printf "\n\n ------------------------NMAP CLI--------------------------------\n\n"
		printf "\n\nAuthor: Sanjog Rijal\n\n"
		printf "\n\nPlease enter your option:\n"
		printf "a. Scan For Devices\n"
		printf "b. Perform Full Scan\n"
		printf "c. Perform stealth scan\n"
		printf "d. Perform xmas scan\n\n"
		read -n 1 -t 60 a

		printf "\n\nEnter IP Address of Host you wish to scan: \n\n"
		read  -t 60 b
		printf "=============================================================\n\n"
		# b = $2
		case $a in
			'a')
				nmap -sP -v $b
			;;

			#full scan utilizes full tcp connection
			'b')
				nmap -sT -v $b
			;;

			#half scan utilizes only SYN and SYN/ACK after that RST flag is used. 
			'c')
				nmap -sS -v $b
			;;

			#xmas scan utilizes FIN,URG,PUSH flags. 
			'd')
				nmap -sX -v $b
			;;
		esac
	done