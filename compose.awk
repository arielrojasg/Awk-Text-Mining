BEGIN {
	OFS="::";
	ORS="\n";
	RS = "\r\n\r\n" ; 
	FS = "\r\n" 
	i=1;
	nivel="";
	ciclo="";
	grado="dipl";
	contOpt=1;
}
{

	if($1~/^OPTATIVOS/){
		nivel="_";
		ciclo="_";
	}else if($1~/^I Ciclo/)
		ciclo="I";
	else if($1~/^II Ciclo/)
		ciclo="II";
	else if($1~/^DIPLOMADO/)
		grado="bsc"
	else if($1~/^Estudios /){
		$3=$2;
		$2=$1;
	}
	else if( $1~/^Optativa/){
		$1=$1contOpt++;
		$3=$2;
		$2=$1;	
	}
	else if($1~/Nivel/){
		switch($1){
			case "I Nivel":
				nivel="I";
				break;
			case "II Nivel":
				nivel="II";
				break;
			case "III Nivel":
				nivel="III";
				break;
			case "IV Nivel":
				nivel="IV";
				break;		
		}
	}

	if($1~/ /||$1~/-/ ||$4~/-/){
		gsub (" ", "", $1);
		gsub ("-", "", $1);
		gsub ("-", "", $4);
	}
	

	if($3~/ /&&($3~/^EI/ ||$3~ /^MA/ ||$3~ /^LI/ ||$3~/^Optativa/ || $3~/^[(]/ )){
		if(NR!=86){	
			sub (/  /, " ", $3);
			if($3~/ [100-600]/)
				sub (" ", "", $3);
			sub(/ .+/, "", $3);
		}else{
			sub(/.+)/, "", $3);
			sub (" ", "", $3);
			sub (" ", "", $3);
			sub (" ", "", $5);
		}
	}
	
	if($5~/ /)
		sub (" ", "", $5);
	
	
	if($4~/^Ingreso/ || $4=="")
		$4="Admission"
	else if($4~/ /&&($4~/^EI/ ||$4~ /^MA/ ||$4~ /^LI/ ||$4~/^Optativa/ || $4~/^Estudios/)){
		if(NR==82){
			sub(/ .+/, "", $4);
		}else{
			sub (" ", "", $4);
			sub(/ .+/, "", $4);
		}
	}
	
	
	

	if($3=="" && $1!~/^Optativa/)
		$3="3";
	else if($3!="2" && $3!="3" && $3!="4" && $3!="5" && $1!~/^Optativa/){
		if($5!="")
			$6=$5;
		if($4!="")
			$5=$4;		
		$4=$3;
		$3=3;
	}
	
		
	if($1~/^EI/ ||$1~ /^MA/ ||$1~ /^LI/ ||$1~/^Optativa/ || $1~/^Estudios/){
		$1=$1;
		print i++,$0,grado,nivel,ciclo;
	}
}
END{
}