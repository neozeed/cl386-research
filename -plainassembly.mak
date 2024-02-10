
.c.obj:
        $(CC) $(INC) $(OPT) $(DEBUG) /c /Fa$*.asm $*.c
        ml /c $*.asm
        del $*.asm