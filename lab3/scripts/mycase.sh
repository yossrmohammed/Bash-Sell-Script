# ! /bin/bash
 export LC_COLLATE=C
 shopt -s extglob
 read -p "Enter character : " char

 case $char in
	 @([A-Z]))
		 echo Uper Case
		 ;;
	@([a-z]))
		echo Lower Case
		;;
	@([0-9]))
		echo Number
		;;
	*)
		echo Nothing
		;;
esac

