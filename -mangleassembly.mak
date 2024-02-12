.c.obj:
        $(CC) $(INC) $(OPT) $(DEBUG) /c /Fa$*.a $*.c
        sed -e "s/FLAT://g" $*.a > $*.a1
        sed -e "s/DQ\t[0-9a-f]*r/&XMMMMMMX/g" $*.a1 \
        | sed -e "s/rXMMMMMMX/H/g" \
        | sed -e "s/call \t\[/call DWORD PTR\[/g" \
	| sed -e "s/call \t_/call \tDWORD PTR _/g" \
	| sed -e "s/\tSHORT $I/\t $I/g" \
	| sed -e "s/PUBLIC\t__real@/;PUBLIC\t__real@/g" \
	| sed -e "s/_ftol2/_ftol/g" > $*.asm
        ml /c $*.asm
        del $*.a $*.a1 $*.asm