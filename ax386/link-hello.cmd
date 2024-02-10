link /NODEFAULTLIB:libc.lib /NODEFAULTLIB:OLDNAMES.LIB  -out:hello.exe hello.obj -entry:mainCRTStartup LIBC.LIB KERNEL32.LIB 
