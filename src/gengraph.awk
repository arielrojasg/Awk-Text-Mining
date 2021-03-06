# Generates graphviz file from the compose.awk output
# loriacarlos@gmail.com
# compose_output/composed_plan.txt --> gv_output/study_plan.gv
# To run
# awk -f gengraph.awk compose_output/composed_plan.txt > gv_output/study_plan.gv
BEGIN{
    FS="::";
	printf "digraph prueba {\n";
    printf "ranksep=0.50;\n";
    printf "Admission[shape=circle, color=red, fontcolor=white, style=filled ];\n";
	printf "{\n";
	printf "\n";
    printf "node [shape=circle, color=white, fontcolor = " "blue , fixedsize =false""]\n";
    printf "edge[color=red]\n";
	printf "start -> I_I ->I_II->II_I->II_II->III_I->III_II->IV_I->IV_II-> end;\n";
    printf "start; Admission\n";
    printf "}\n";
	printf "{rank = same; end }\n";
	printf "node [shape=circle, color=blue, fontcolor = " "blue , fixedsize =false""]\n";
	printf "edge[color=gray]\n";
    printf "{rank = same; Admission; start; }\n";
}
# Expected input record format generated by compose
# nn::code::description::[2345](::req)*::(bsc|dipl)::(level|_)::(cycle|_)
function determinarRango(){
nivel=$(NF-1) "_" $NF;
  switch (nivel) {
    case "I_I":
        printf"{ rank = same; " "I_I" "; " $2 "; }\n";
        break
      case "I_II":
         printf"{ rank = same; " "I_II" "; " $2 "; }\n";
        break
      case "II_I":
      printf"{ rank = same; " "II_I" "; " $2 "; }\n";
        break
      case "II_II":
       printf"{ rank = same; " "II_II" "; " $2 "; }\n";
        break
	 case "III_I":
       printf"{ rank = same; " "III_I" "; " $2 "; }\n";
        break
     case "III_II":
        printf"{ rank = same; " "III_II" "; " $2 "; }\n";
        break   
	case "IV_I":
      printf"{ rank = same; " "IV_I" "; " $2 "; }\n";
        break
    case "IV_II":
       printf"{ rank = same; " "IV_II" "; " $2 "; }\n";
        break
    default:
        break
    }
}
($1<41){
tam=NF;
tamN=tam-3;
determinarRango();
 if(tam>8){
 num=5;
   do {
          printf  $num "->" $2";\n";
        num++
    } while (num <= tamN)
 }else{printf  $5 "-> " $2 ";\n";}
}

END{
  
	printf "}\n";
}
