@echo off
:: create the binary destination folder
FOR /D %%P IN (*) DO if not exist ".\%%P\binary" mkdir ".\%%P\binary"
:: assemble all the scripts
FOR /D %%P IN (*) DO python assembler.py ".\%%P\%%P.asm" -o ".\%%P\binary"
