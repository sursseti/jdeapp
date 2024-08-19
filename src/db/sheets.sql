=IFS(
  REGEXMATCH(M3; "\bJACOBS MONARCH\b")=ИСТИНА; "JACOBS";
  REGEXMATCH(M3; "\bJACOBS\b")=ИСТИНА; "JACOBS";
  REGEXMATCH(M3; "\bCARTE NOIRE\b")=ИСТИНА; "CARTE NOIRE";
  REGEXMATCH(M3; "\bMAXWELL HOUSE\b")=ИСТИНА; "MAXWELL HOUSE";
  REGEXMATCH(M3; "\bL'OR\b")=ИСТИНА; "L'OR";
  REGEXMATCH(M3; "\bMAXIM\b")=ИСТИНА; "MAXIM";
  REGEXMATCH(M3; "\bMONARCH\b")=ИСТИНА; "MONARCH";
  REGEXMATCH(M3; "\bMILLICANO\b")=ИСТИНА; "JACOBS";
  REGEXMATCH(M3; "\bMILIGRANO\b")=ИСТИНА; "MONARCH";
  REGEXMATCH(M3; "\bMOCCONA\b")=ИСТИНА; "MOCCONA";
  REGEXMATCH(M3; "\bKRAFTIG\b")=ИСТИНА; "JACOBS";
  REGEXMATCH(M3; "\bCN\b")=ИСТИНА; "CARTE NOIRE";
  REGEXMATCH(M3; "\bDON SANTOS\b")=ИСТИНА; "DON SANTOS";
  REGEXMATCH(M3; "\bMAXWELL\b")=ИСТИНА; "MAXWELL HOUSE";
  REGEXMATCH(M3; "\bTASSIMO\b")=ИСТИНА; "TASSIMO" 
  )


=IFS(
  REGEXMATCH(I3; "\bRS\b")=ИСТИНА; "RS";
  REGEXMATCH(I3; "\bSG\b")=ИСТИНА; "SG"
  )

=IFS(
  REGEXMATCH(Y3; "\bREF\b")=ИСТИНА; "REF";
  REGEXMATCH(Y3; "\bREFILL\b")=ИСТИНА; "REF"; 
  REGEXMATCH(Y3; "\bR&G\b")=ИСТИНА; "R&G";
  REGEXMATCH(Y3; "\bBEANS\b")=ИСТИНА; "BEANS";
  REGEXMATCH(Y3; "\bSTICK\b")=ИСТИНА; "STICK";
  REGEXMATCH(Y3; "\bPAPER MUG\b")=ИСТИНА; "PAPER MUG";
  REGEXMATCH(Y3; "\b3 IN 1\b")=ИСТИНА; "3 IN 1";
  REGEXMATCH(Y3; "\b4 IN 1\b")=ИСТИНА; "4 IN 1";
  REGEXMATCH(Y3; "\bjar\b")=ИСТИНА; "JAR";
  REGEXMATCH(Y3; "\bJAR\b")=ИСТИНА; "JAR";
  REGEXMATCH(Y3; "\bDRIP\b")=ИСТИНА; "DRIP";
  REGEXMATCH(Y3; "\bMIXES\b")=ИСТИНА; "MIXES";
  REGEXMATCH(Y3; "\bNCC\b")=ИСТИНА; "NCC"
  )

PAPER MUG


=IFS(
  =ISERROR(A1);
  REGEXMATCH(I3; "\bPAPER MUG\b")=ИСТИНА; "NotCoffee"
  )

=IFS(
    REGEXMATCH(Y3; "\bрастворимый\b")=ИСТИНА; "растворимый";
    REGEXMATCH(Y3; "\bрастворимый сублимированный\b")=ИСТИНА; "растворимый сублимированный";
    REGEXMATCH(Y3; "\bрастворим.сублимир.\b")=ИСТИНА; "растворим.сублимир.";
    REGEXMATCH(Y3; "\bжареный\b")=ИСТИНА; "жареный";
    REGEXMATCH(Y3; "\bжареный в зёрнах\b")=ИСТИНА; "жареный в зёрнах";
    REGEXMATCH(Y3; "\bжареный молотый\b")=ИСТИНА; "жареный молотый"
  )

обавле

=IFS(
    IFERROR(FIND("обавле"; Y3); "ошибка")<>"ошибка"; "с добавлением";
    IFERROR(FIND("дек"; Y3); "ошибка")<>"ошибка"; "декофеин";
    IFERROR(FIND("растворимый сублимированный"; Y3); "ошибка")<>"ошибка"; "растворимый сублимированный";
    IFERROR(FIND("растворим.су"; Y3); "ошибка")<>"ошибка"; "растворимый сублимированный";
    IFERROR(FIND("раствор. су"; Y3); "ошибка")<>"ошибка"; "растворимый сублимированный";
    IFERROR(FIND("растворимый су"; Y3); "ошибка")<>"ошибка"; "растворимый сублимированный";
    IFERROR(FIND("раств суб"; Y3); "ошибка")<>"ошибка"; "растворимый сублимированный";
    IFERROR(FIND("раствор.су"; Y3); "ошибка")<>"ошибка"; "растворимый сублимированный";
    IFERROR(FIND("раств. су"; Y3); "ошибка")<>"ошибка"; "растворимый сублимированный";
    IFERROR(FIND("РАСТВОРИМЫЙ СУ"; Y3); "ошибка")<>"ошибка"; "растворимый сублимированный";
    IFERROR(FIND("РАСТВОРИМЫЙ"; Y3); "ошибка")<>"ошибка"; "растворимый";
    IFERROR(FIND("растворимый"; Y3); "ошибка")<>"ошибка"; "растворимый";
    IFERROR(FIND("среднеобж"; Y3); "ошибка")<>"ошибка"; "жареный молотый среднеобжаренный";
    IFERROR(FIND("жареный в зёрнах"; Y3); "ошибка")<>"ошибка"; "жареный в зёрнах";
    IFERROR(FIND("жареный молотый"; Y3); "ошибка")<>"ошибка"; "жареный молотый";
    IFERROR(FIND("жар.мо"; Y3); "ошибка")<>"ошибка"; "жареный молотый";
    IFERROR(FIND("ЖАРЕНЫЙ МОЛОТЫЙ"; Y3); "ошибка")<>"ошибка"; "жареный молотый";
    IFERROR(FIND("ЖАРЕНЫЙ"; Y3); "ошибка")<>"ошибка"; "жареный";
    IFERROR(FIND("жм"; Y3); "ошибка")<>"ошибка"; "жареный молотый";
    IFERROR(FIND("жар. м"; Y3); "ошибка")<>"ошибка"; "жареный молотый";
    IFERROR(FIND("жаренный молотый"; Y3); "ошибка")<>"ошибка"; "жареный молотый";
    IFERROR(FIND("жареный"; Y3); "ошибка")<>"ошибка"; "жареный"
  )



Раствор

=IFS(
    IFERROR(FIND("РАСТВОРИМЫЙ"; Y3); "ошибка")<>"ошибка"; "растворимый";
    IFERROR(FIND("РАСТ"; Y3); "ошибка")<>"ошибка"; "растворимый";
    IFERROR(FIND("раст"; Y3); "ошибка")<>"ошибка"; "растворимый";
    IFERROR(FIND("аств"; Y3); "ошибка")<>"ошибка"; "растворимый";
    IFERROR(FIND("растворимый"; Y3); "ошибка")<>"ошибка"; "растворимый";
    IFERROR(FIND("ДЕК"; Y3); "ошибка")<>"ошибка"; "растворимый";
    IFERROR(FIND("ЕКАФ"; Y3); "ошибка")<>"ошибка"; "растворимый";
    IFERROR(FIND("екаф"; Y3); "ошибка")<>"ошибка"; "растворимый";
    IFERROR(FIND("дек"; Y3); "ошибка")<>"ошибка"; "растворимый"
    )

Тип раст
3629918.42

=IFS(
    IFERROR(FIND("сублимированный"; Y3); "ошибка")<>"ошибка"; "растворимый сублимированный";
    IFERROR(FIND("рим.су"; Y3); "ошибка")<>"ошибка"; "растворимый сублимированный";
    IFERROR(FIND("твор. су"; Y3); "ошибка")<>"ошибка"; "растворимый сублимированный";
    IFERROR(FIND("римый су"; Y3); "ошибка")<>"ошибка"; "растворимый сублимированный";
    IFERROR(FIND("раств суб"; Y3); "ошибка")<>"ошибка"; "растворимый сублимированный";
    IFERROR(FIND("створ.су"; Y3); "ошибка")<>"ошибка"; "растворимый сублимированный";
    IFERROR(FIND("РИМЫЙ СУ"; Y3); "ошибка")<>"ошибка"; "растворимый сублимированный";
    IFERROR(FIND("cуб"; Y3); "ошибка")<>"ошибка"; "растворимый сублимированный";
    IFERROR(FIND(". СУ"; Y3); "ошибка")<>"ошибка"; "растворимый сублимированный";
    IFERROR(FIND("СТВ СУ"; Y3); "ошибка")<>"ошибка"; "растворимый сублимированный";
    IFERROR(FIND(".СУ"; Y3); "ошибка")<>"ошибка"; "растворимый сублимированный";
    IFERROR(FIND("порошкообразный"; Y3); "ошибка")<>"ошибка"; "растворимый порошкообразный";
    IFERROR(FIND("ПОРОШ"; Y3); "ошибка")<>"ошибка"; "растворимый порошкообразный";
    IFERROR(FIND("ОРОШКОВ"; Y3); "ошибка")<>"ошибка"; "растворимый порошкообразный";
    IFERROR(FIND("орошк"; Y3); "ошибка")<>"ошибка"; "растворимый порошкообразный"
    )

 жареный

=IFS(
    IFERROR(FIND("арен"; Y3); "ошибка")<>"ошибка"; "жареный";
    IFERROR(FIND("АРЕН"; Y3); "ошибка")<>"ошибка"; "жареный";
    IFERROR(FIND("ЖАР"; Y3); "ошибка")<>"ошибка"; "жареный";
    IFERROR(FIND("жз"; Y3); "ошибка")<>"ошибка"; "жареный";
    IFERROR(FIND("жм"; Y3); "ошибка")<>"ошибка"; "жареный";
    IFERROR(FIND("жар"; Y3); "ошибка")<>"ошибка"; "жареный"
  )


=IFS(
    IFERROR(FIND("среднеобж"; Y3); "ошибка")<>"ошибка"; "жареный молотый среднеобжаренный";
    IFERROR(FIND("зёрн"; Y3); "ошибка")<>"ошибка"; "жареный в зёрнах";
    IFERROR(FIND("зерн"; Y3); "ошибка")<>"ошибка"; "жареный в зёрнах";
    IFERROR(FIND("ЗЕРН"; Y3); "ошибка")<>"ошибка"; "жареный в зёрнах";
    IFERROR(FIND("ЗËРН"; Y3); "ошибка")<>"ошибка"; "жареный в зёрнах";
    IFERROR(FIND("жз"; Y3); "ошибка")<>"ошибка"; "жареный в зёрнах";
    IFERROR(FIND("ж.з"; Y3); "ошибка")<>"ошибка"; "жареный в зёрнах";
    IFERROR(FIND(".зер"; Y3); "ошибка")<>"ошибка"; "жареный в зёрнах";
    IFERROR(FIND("жареный в зёрнах"; Y3); "ошибка")<>"ошибка"; "жареный в зёрнах";
    IFERROR(FIND("жареный молотый"; Y3); "ошибка")<>"ошибка"; "жареный молотый";
    IFERROR(FIND("жар.мо"; Y3); "ошибка")<>"ошибка"; "жареный молотый";
    IFERROR(FIND("молот"; Y3); "ошибка")<>"ошибка"; "жареный молотый";
    IFERROR(FIND("олот"; Y3); "ошибка")<>"ошибка"; "жареный молотый";
    IFERROR(FIND("ОЛОТ"; Y3); "ошибка")<>"ошибка"; "жареный молотый";
    IFERROR(FIND("ЖАРЕНЫЙ МОЛОТЫЙ"; Y3); "ошибка")<>"ошибка"; "жареный молотый";
    IFERROR(FIND("жм"; Y3); "ошибка")<>"ошибка"; "жареный молотый";
    IFERROR(FIND("жар. м"; Y3); "ошибка")<>"ошибка"; "жареный молотый";
    IFERROR(FIND("жаренный молотый"; Y3); "ошибка")<>"ошибка"; "жареный молотый"
  )


декаф

=IFS(
    IFERROR(FIND("ДЕК"; Y3); "ошибка")<>"ошибка"; "декофеин";
    IFERROR(FIND("ЕКАФ"; Y3); "ошибка")<>"ошибка"; "декофеин";
    IFERROR(FIND("екаф"; Y3); "ошибка")<>"ошибка"; "декофеин";
    IFERROR(FIND("дек"; Y3); "ошибка")<>"ошибка"; "декофеин"
  )


=IFS(
    IFERROR(FIND("ОБАВ"; Y3); "ошибка")<>"ошибка"; "с добавлением";
    IFERROR(FIND("обавле"; Y3); "ошибка")<>"ошибка"; "с добавлением"
    )





=IFS(
    IFERROR(FIND("PROMO"; L3); "ошибка")<>"ошибка"; "PROMO";
  )

РАСТВОРИМЫЙ СУБЛИМИРОВАННЫЙ

=IFS(IFERROR(FIND("растворимый сублимированный"; Y3); "ошибка")<>"ошибка"; "растворимый сублимированный")


=IFS(
    IFERROR(FIND("раствор. сублим."; Y3); "ошибка")<>"ошибка"; "растворимый сублимированный";
  )

растворимый сублим.
растворимый сублимир
раствор. сублим.

=IFS(
    REGEXMATCH(Y3; "\bрастворимый сублимированный\b")=ИСТИНА; "растворимый сублимированный"
  )

=IFS(
    IFERROR(FIND("MONARСH MILLICANO"; Y3); "ошибка")<>"ошибка"; "MONARCH";
    IFERROR(FIND("JACOBS MONARCH"; Y3); "ошибка")<>"ошибка"; "MONARCH";
    IFERROR(FIND("BARISTA"; Y3); "ошибка")<>"ошибка"; "BARISTA";
    IFERROR(FIND("VELOUR"; Y3); "ошибка")<>"ошибка"; "VELOUR";
    IFERROR(FIND("ORIGINS"; Y3); "ошибка")<>"ошибка"; "ORIGINS";
    IFERROR(FIND("CLASSIC"; Y3); "ошибка")<>"ошибка"; "CLASSIC";
    IFERROR(FIND("GOLD"; Y3); "ошибка")<>"ошибка"; "GOLD";
    IFERROR(FIND("TASSIMO"; Y3); "ошибка")<>"ошибка"; "TASSIMO";
    IFERROR(FIND("KRAFTIG"; Y3); "ошибка")<>"ошибка"; "KRAFTIG";
    IFERROR(FIND("MILLICANO"; Y3); "ошибка")<>"ошибка"; "MILLICANO";
    IFERROR(FIND("CARAMEL"; Y3); "ошибка")<>"ошибка"; "CARAMEL";
    IFERROR(FIND("ORIGINAL"; Y3); "ошибка")<>"ошибка"; "ORIGINAL";
    IFERROR(FIND("EXPERT"; Y3); "ошибка")<>"ошибка"; "EXPERT";
    IFERROR(FIND("AROMA"; Y3); "ошибка")<>"ошибка"; "AROMA";
    IFERROR(FIND("SPECIAL SELECTION"; Y3); "ошибка")<>"ошибка"; "SPECIAL SELECTION";
    IFERROR(FIND("VELVET"; Y3); "ошибка")<>"ошибка"; "VELVET";
    IFERROR(FIND("BANQUET MEDIUM"; Y3); "ошибка")<>"ошибка"; "BANQUET MEDIUM";
    IFERROR(FIND("KRONUNG"; Y3); "ошибка")<>"ошибка"; "KRONUNG";
    IFERROR(FIND("ELEGANT"; Y3); "ошибка")<>"ошибка"; "ELEGANT";
    IFERROR(FIND("KRONU"; Y3); "ошибка")<>"ошибка"; "KRONUNG";
    IFERROR(FIND("HAZELNUT"; Y3); "ошибка")<>"ошибка"; "HAZELNUT";
    IFERROR(FIND("CARAMEL"; Y3); "ошибка")<>"ошибка"; "CARAMEL";
    IFERROR(FIND("PRIVILEGE"; Y3); "ошибка")<>"ошибка"; "PRIVILEGE";
    IFERROR(FIND("BEANS ARABICA"; Y3); "ошибка")<>"ошибка"; "ARABICA";
    IFERROR(FIND("LATTE CARAMEL"; Y3); "ошибка")<>"ошибка"; "LATTE CARAMEL";
    IFERROR(FIND("CREMA"; Y3); "ошибка")<>"ошибка"; "CREMA";
    IFERROR(FIND("BANKETT MEDIUM"; Y3); "ошибка")<>"ошибка"; "PROFF BANKETT MEDIUM";
    IFERROR(FIND("SPEC"; Y3); "ошибка")<>"ошибка"; "SPEC";
    IFERROR(FIND("PROF"; Y3); "ошибка")<>"ошибка"; "PROFESSIONNEL";
    IFERROR(FIND("Voyage"; Y3); "ошибка")<>"ошибка"; "VOYAGE";
    IFERROR(FIND("VOYAGE"; Y3); "ошибка")<>"ошибка"; "VOYAGE";
    IFERROR(FIND("TURKA"; Y3); "ошибка")<>"ошибка"; "TURKA";
    IFERROR(FIND("PAPER MUG"; Y3); "ошибка")<>"ошибка"; "PAPER MUG";
    IFERROR(FIND("BULK MEDIUM"; Y3); "ошибка")<>"ошибка"; "BULK MEDIUM";
    IFERROR(FIND("BULK DARK"; Y3); "ошибка")<>"ошибка"; "BULK DARK";
    IFERROR(FIND("BULK LIGHT"; Y3); "ошибка")<>"ошибка"; "BULK LIGHT";
    IFERROR(FIND("MASTRO LORENZO"; Y3); "ошибка")<>"ошибка"; "MASTRO LORENZO";
    IFERROR(FIND("EXCLUSIVE"; Y3); "ошибка")<>"ошибка"; "EXCLUSIVE";
    IFERROR(FIND("BEANS CREMA"; Y3); "ошибка")<>"ошибка"; "CREMA";
    IFERROR(FIND("BEANS ESPRESSO"; Y3); "ошибка")<>"ошибка"; "ESPRESSO";
    IFERROR(FIND("CARTE NOIRE MILLICANO"; Y3); "ошибка")<>"ошибка"; "MILLICANO";
    IFERROR(FIND("DAY & NIGHT"; Y3); "ошибка")<>"ошибка"; "DAY & NIGHT";
    IFERROR(FIND("BRASILIA"; Y3); "ошибка")<>"ошибка"; "BRASILIA";
    IFERROR(FIND("MILIGRANO"; Y3); "ошибка")<>"ошибка"; "MILIGRANO"
)

PAPER MUG

TURKA
BULK MEDIUM
BULK DARK
BULK LIGHT
MASTRO LORENZO
EXCLUSIVE


вкус

=IFS(
    IFERROR(FIND("INTENSE"; Y3); "ошибка")<>"ошибка"; "INTENSE";
    IFERROR(FIND("ASIAN"; Y3); "ошибка")<>"ошибка"; "ASIAN";
    IFERROR(FIND("BRAZILIAN"; Y3); "ошибка")<>"ошибка"; "BRAZILIAN";
    IFERROR(FIND("TROPICAL"; Y3); "ошибка")<>"ошибка"; "TROPICAL";
    IFERROR(FIND("CREMA"; Y3); "ошибка")<>"ошибка"; "CREMA";
    IFERROR(FIND("AMERICANO"; Y3); "ошибка")<>"ошибка"; "AMERICANO";
    IFERROR(FIND("ESPRESSO"; Y3); "ошибка")<>"ошибка"; "ESPRESSO";
    IFERROR(FIND("CARAMEL"; Y3); "ошибка")<>"ошибка"; "CARAMEL";
    IFERROR(FIND("HAZELNUT"; Y3); "ошибка")<>"ошибка"; "HAZELNUT";
    IFERROR(FIND("DELICE"; Y3); "ошибка")<>"ошибка"; "DELICE";
    IFERROR(FIND("EXCLUSIF"; Y3); "ошибка")<>"ошибка"; "EXCLUSIF";
    IFERROR(FIND("CARAM LATTE BOX "; Y3); "ошибка")<>"ошибка"; "BOX CARAM LATTE ";
    IFERROR(FIND("STICK BOX"; Y3); "ошибка")<>"ошибка"; "BOX STICK";
    IFERROR(FIND("INTENSE BOX"; Y3); "ошибка")<>"ошибка"; "BOX INTENSE";
    IFERROR(FIND("ORIGIN BOX"; Y3); "ошибка")<>"ошибка"; "BOX ORIGIN";
    IFERROR(FIND("LATTE BOX"; Y3); "ошибка")<>"ошибка"; "BOX LATTE";
    IFERROR(FIND("LATTE STRIPE"; Y3); "ошибка")<>"ошибка"; "STRIPE LATTE";
    IFERROR(FIND("ORIGIN STRIPE"; Y3); "ошибка")<>"ошибка"; "STRIPE ORIGIN";
    IFERROR(FIND("INTENSE STRIPE"; Y3); "ошибка")<>"ошибка"; "STRIPE INTENSE";
    IFERROR(FIND("CAPPUCCINO BOX"; Y3); "ошибка")<>"ошибка"; "BOX CAPPUCCINO";
    IFERROR(FIND("VANILLA LATTE"; Y3); "ошибка")<>"ошибка"; "VANILLA LATTE";
    IFERROR(FIND("BOX STRONG"; Y3); "ошибка")<>"ошибка"; "BOX STRONG";
    IFERROR(FIND("BOX MILD"; Y3); "ошибка")<>"ошибка"; "BOX MILD";
    IFERROR(FIND("BOX ORIGIN"; Y3); "ошибка")<>"ошибка"; "BOX ORIGIN";
    IFERROR(FIND("Intense Absolu"; Y3); "ошибка")<>"ошибка"; "INTANSE ABSOLU";
    IFERROR(FIND("BOX DYNAMIX"; Y3); "ошибка")<>"ошибка"; "BOX DYNAMIX";
    IFERROR(FIND("BOX CAPPUCCINO"; Y3); "ошибка")<>"ошибка"; "BOX CAPPUCCINO";
    IFERROR(FIND("BOX LATTE"; Y3); "ошибка")<>"ошибка"; "BOX LATTE";
    IFERROR(FIND("STRIPE LATTE"; Y3); "ошибка")<>"ошибка"; "STRIPE LATTE";
    IFERROR(FIND("STRIPE CAPPUCCINO"; Y3); "ошибка")<>"ошибка"; "STRIPE CAPPUCCINO";
    IFERROR(FIND("STRIPE ORIGIN"; Y3); "ошибка")<>"ошибка"; "STRIPE ORIGIN";
    IFERROR(FIND("BOX CARAM LATTE"; Y3); "ошибка")<>"ошибка"; "BOX CARAM LATTE";
    IFERROR(FIND("BOX LATTE"; Y3); "ошибка")<>"ошибка"; "BOX LATTE";
    IFERROR(FIND("BOX CHOCO"; Y3); "ошибка")<>"ошибка"; "BOX CHOCO";
    IFERROR(FIND("BAG ORIGIN"; Y3); "ошибка")<>"ошибка"; "BAG ORIGIN";
    IFERROR(FIND("LATTE BAG"; Y3); "ошибка")<>"ошибка"; "BAG LATTE";
    IFERROR(FIND("ORIGIN BAG"; Y3); "ошибка")<>"ошибка"; "BAG ORIGIN";
    IFERROR(FIND("BAG RICH&CREAM"; Y3); "ошибка")<>"ошибка"; "BAG RICH&CREAM";
    IFERROR(FIND("DYNAMIX BOX"; Y3); "ошибка")<>"ошибка"; "BOX DYNAMIX";
    IFERROR(FIND("BOX CLASSIC"; Y3); "ошибка")<>"ошибка"; "BOX CLASSIC";
    IFERROR(FIND("BAG"; Y3); "ошибка")<>"ошибка"; "BAG";
    IFERROR(FIND("BOX"; Y3); "ошибка")<>"ошибка"; "BOX";
    IFERROR(FIND("STRIPE"; Y3); "ошибка")<>"ошибка"; "STRIPE";
    IFERROR(FIND("BOX SMOOTH&CREAM"; Y3); "ошибка")<>"ошибка"; "BOX SMOOTH&CREAM";
    IFERROR(FIND("CHOCO BOX"; Y3); "ошибка")<>"ошибка"; "BOX CHOCO";
    IFERROR(FIND("ALTO INTENSO"; Y3); "ошибка")<>"ошибка"; "ALTO INTENSO";
    IFERROR(FIND("CREMA DELICE"; Y3); "ошибка")<>"ошибка"; "CREMA DELICE";
    IFERROR(FIND("MONARCH MILLICANO"; Y3); "ошибка")<>"ошибка"; "MILLICANO"
)

BOX CLASSIC

DYNAMIX BOX
LATTE BAG
ORIGIN BAG
BAG
STRIPE
BAG RICH&CREAM
BOX SMOOTH&CREAM
CHOCO BOX


    IFERROR(FIND("323"; Y3); "ошибка")<>"ошибка"; "233";


нейминг

=IFERROR(IFS(AND((IFERROR(FIND("JACOBS MONARCH"; Y3); "ошибка")<>"ошибка"); (IFERROR(FIND("MONARCH"; N3); "ошибка")<>"ошибка")); "JACOBS " +  N3); N3)

=ЕСЛИОШИБКА(IF(И((ЕСЛИОШИБКА(НАЙТИ("JACOBS MONARCH"; Y328); "ошибка")<>"ошибка"); (ЕСЛИОШИБКА(НАЙТИ("MONARCH"; N328); "ошибка")<>"ошибка")); "JACOBS " +  N328); N328)

=ЕСЛИОШИБКА(IFS(И((ЕСЛИОШИБКА(НАЙТИ("JACOBS MONARCH"; Y3); "ошибка")<>"ошибка"); (ЕСЛИОШИБКА(НАЙТИ("MONARCH"; N3); "ошибка")<>"ошибка")); СЦЕПИТЬ("JACOBS "; N3)); N3)

=ЕСЛИОШИБКА(IFS(
  И((ЕСЛИОШИБКА(НАЙТИ("JACOBS MONARCH"; Y3); "ошибка")<>"ошибка"); (ЕСЛИОШИБКА(НАЙТИ("MONARCH"; N3); "ошибка")<>"ошибка")); СЦЕПИТЬ("JACOBS "; N3);
  И((ЕСЛИОШИБКА(НАЙТИ("JACOBS MONARCH"; Y3); "ошибка")<>"ошибка"); (ЕСЛИОШИБКА(НАЙТИ("MONARCH"; N3); "ошибка")="ошибка")); СЦЕПИТЬ("JACOBS MONARCH "; N3);
  И((ЕСЛИОШИБКА(НАЙТИ("Jacobs Monarch"; Y3); "ошибка")<>"ошибка"); (ЕСЛИОШИБКА(НАЙТИ("MONARCH"; N3); "ошибка")<>"ошибка")); СЦЕПИТЬ("JACOBS "; N3);
  И((ЕСЛИОШИБКА(НАЙТИ("Jacobs Monarch"; Y3); "ошибка")<>"ошибка"); (ЕСЛИОШИБКА(НАЙТИ("MONARCH"; N3); "ошибка")="ошибка")); СЦЕПИТЬ("JACOBS MONARCH "; N3);
  И((ЕСЛИОШИБКА(НАЙТИ("JACOBS MILLICANO"; Y3); "ошибка")<>"ошибка"); (ЕСЛИОШИБКА(НАЙТИ("MILLICANO"; N3); "ошибка")<>"ошибка")); СЦЕПИТЬ("JACOBS "; N3);
  И((ЕСЛИОШИБКА(НАЙТИ("MONARCH MILIGRANO"; Y3); "ошибка")<>"ошибка"); (ЕСЛИОШИБКА(НАЙТИ("MILIGRANO"; N3); "ошибка")<>"ошибка")); СЦЕПИТЬ("MONARCH "; N3);
  И((ЕСЛИОШИБКА(НАЙТИ("JACOBS MONA"; Y3); "ошибка")<>"ошибка"); (ЕСЛИОШИБКА(НАЙТИ("MONA"; N3); "ошибка")="ошибка")); СЦЕПИТЬ("JACOBS MONARCH "; N3)
  ); N3)

MONARCH MILIGRANO


=ЕСЛИОШИБКА(IFS(
  ИЛИ(
    (ЕСЛИОШИБКА(НАЙТИ("рыш"; Y3); "ошибка")<>"ошибка"); 
    (ЕСЛИОШИБКА(НАЙТИ("такан"; Y3); "ошибка")<>"ошибка");
    (ЕСЛИОШИБКА(НАЙТИ("ахар"; Y3); "ошибка")<>"ошибка");
    (ЕСЛИОШИБКА(НАЙТИ("ахар"; Y3); "ошибка")<>"ошибка");
    (ЕСЛИОШИБКА(НАЙТИ("ПРОФФМИЛК"; Y3); "ошибка")<>"ошибка");
    (ЕСЛИОШИБКА(НАЙТИ("размеш"; Y3); "ошибка")<>"ошибка");
    (ЕСЛИОШИБКА(НАЙТИ("Размеш"; Y3); "ошибка")<>"ошибка");
    (ЕСЛИОШИБКА(НАЙТИ("азмеш"; Y3); "ошибка")<>"ошибка");
    (ЕСЛИОШИБКА(НАЙТИ("АЗМЕШ"; Y3); "ошибка")<>"ошибка");
    (ЕСЛИОШИБКА(НАЙТИ("редст"; Y3); "ошибка")<>"ошибка");
    (ЕСЛИОШИБКА(НАЙТИ("ахар"; Y3); "ошибка")<>"ошибка");
    (ЕСЛИОШИБКА(НАЙТИ("АХАР"; Y3); "ошибка")<>"ошибка");
    (ЕСЛИОШИБКА(НАЙТИ("SUGAR"; Y3); "ошибка")<>"ошибка");
    (ЕСЛИОШИБКА(НАЙТИ("осуда"; Y3); "ошибка")<>"ошибка")
    ); "NOTCOFFEE"); 
    "COFFEE")

Крышки
стакан
Посуда

редст
