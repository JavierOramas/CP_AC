# create the binary destination folder
find -maxdepth 1 -mindepth 1  -type d -exec mkdir -p {}/binary \;
# assemble all the scripts
find -maxdepth 1 -mindepth 1  -type d -exec python assembler.py {}/{}.asm -o {}/binary \;
