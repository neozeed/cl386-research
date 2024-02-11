.c.obj:
        $(CC) $(INC) $(OPT) $(DEBUG) /c /Fa$*.a $*.c
        wsl sed -e 's/FLAT://g' $*.a > $*.a1
        wsl sed -e "s/DQ\t[0-9a-f]*r/&XMMMMMMX/g" $*.a1 \
        | wsl sed -e "s/rXMMMMMMX/H/g" \
        | wsl sed -e 's/call \t\[/call DWORD PTR\[/g' \
	| wsl sed -e 's/call \t_/call \tDWORD PTR _/g' \
	| wsl sed -e 's/\tSHORT $I/\t $I/g' \
	| wsl sed -e 's/PUBLIC\t__real@/;PUBLIC\t__real@/g' \
	| wsl sed -e 's/_ftol2/_ftol/g' > $*.asm
        ml /c $*.asm
        del $*.a $*.a1 $*.asm
