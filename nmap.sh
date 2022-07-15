while true
	do
		printf "\n\n ------------------------NMAP CLI--------------------------------\n\n"
		printf "\n\nAuthor: Sanjog Rijal\n\n"
		printf "\n\nPlease enter your option:\n"
		printf "a. Scan For Devices\n"
		printf "b. Perform FULL Scan\n"
		printf "c. Perform STEALTH scan\n"
		printf "d. Perform XMAS scan\n"
		printf "e. Perform FIN scan \n"
		printf "f. Perform NULL scans \n"
		read -n 1 -t 60 a

		printf "\n\nEnter IP Address of Host you wish to scan: \n\n"
		read  -t 60 b
		printf "=============================================================\n\n"
		# b = $2
		case $a in
			'a')
				sudo nmap -sP -v $b
			;;

			#full scan utilizes full tcp connection
			'b')
				sudo nmap -sT -v $b
			;;

			#half scan utilizes only SYN and SYN/ACK after that RST flag is used. 
			'c')
				sudo nmap -sS -v $b
			;;

			#xmas scan utilizes FIN,URG,PUSH flags. 
			'd')
				sudo nmap -sX -v $b
			;;

			'e')
				sudo nmap -sF -v $b
			;;

			'f')
				sudo nmap -sN -v $b
		esac
	done