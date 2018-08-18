BEGIN {
	OFS="::";
	ORS="\r\n";
	RS = "\r\n\r\n" ; 
	FS = "\r\n" 
	i=1;
	nivel="";
	ciclo="";
	grado="dipl";
}
{

	if($1~/^OPTATIVOS GENERALES:/){
		nivel="_";
		ciclo="_";
	}

	if($1~/ /||$1~/-/){
		gsub (" ", "", $1);
		gsub ("-", "", $1);
	}
	if($1~/^DIPLOMADO/)
		grado="bsc"	
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
	
	if($1=="I Ciclo")
		ciclo="I";
	else if($1=="II Ciclo")
		ciclo="II";
		
		
	if($3=="")
		$3="3";
	else if($3!="2" ||$3!="3" ||$3!="4" ||$3!="5"){
		gsub ("\r\n", "\r\n 3 \r\n", $2);
	}
		
	if($3~/ /&&($3~/^EI/ ||$3~ /^MA/ ||$3~ /^LI/ ||$3~/^Optativa/ || $3~/^Estudios/)){
		sub (" ", "", $3);
		sub(/ .+/, "", $3);
		
		
	}
	if($4~/ /&&($4~/^EI/ ||$4~ /^MA/ ||$4~ /^LI/ ||$4~/^Optativa/ || $4~/^Estudios/)){
		sub (" ", "", $4);
		sub(/ .+/, "", $4);
	}

	if($4~/^Ingreso/ || $4=="")
		$4="Admission"

	
		
if($1~/^EI/ ||$1~ /^MA/ ||$1~ /^LI/ ||$1~/^Optativa/ || $1~/^Estudios/){
	$1=$1;
	print i++,$0,grado,nivel,ciclo;
	}
}
END{
}