.c.obj:
        $(CC) $(INC) $(OPT) $(DEBUG) /c /Fa$*.a $*.c
	  sed -e "s/_ftol2/_ftol/g" $*.a \
	| sed -e "s/PUBLIC\t__real@/;PUBLIC\t__real@/g" > $*.asm
        ml /c $*.asm
        del $*.a $*.a1 $*.asm