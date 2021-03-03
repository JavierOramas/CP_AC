# To add a new cell, type '# %%'
# To add a new markdown cell, type '# %% [markdown]'
# %% [markdown]
# # II. Sistemas de Números
# Existen distintos métodos para los cambios de bases, el objetivo de esta clase práctica es que tú, estudiante, investigues sobre la conversión de bases y demuestres los resultados mediante la resolución de ejercicios.
# 
#     1. Convierta los siguientes valores binarios a la base decimal:
#         a. 0000 0001
#         b. 0000 0010
#         c. 0000 1111
#         d. 0001 0000
#         e. 1101 0101
#         f. 1001 1001
#         g. 0111 1111

# %%
numbers = [
    '00000001',
    '00000010',
    '00001111',
    '00010000',
    '11010101',
    '10011001',
    '01111111'
    ]


# %%
def bin_to_dec(num):
    sol = 0
    for i,val in enumerate(num):
        if val == '1':
            sol += 2**(len(num)-i-1)
    return sol


# %%
for i in numbers:
    print(bin_to_dec(i))

# %% [markdown]
#     2. Convierta los siguientes valores hexadecimales a la base decimal:
#     
#         a. 09          
#         b. 0A          
#         c. 0F                      
#         d. 10          
#         e. 1F          
#         f. FF           
#         g. F0F0         
#         h. BEBE        
#         i. CAFE       
#         j. FFFFFFFF    
#         k. BEBECAFE   

# %%
def hex_to_dec(num):
    return int(num,16)


# %%
nums = [
    '09',
    '0A',
    '0F',
    '10',
    '1F',
    'FF',
    'F0F0',
    'BEBE',
    'CAFE',
    'FFFFFFFF',
    'BEBECAFE'
]

for i in nums:
    print(hex_to_dec(i))

# %% [markdown]
#     3. Convierta los siguientes valores decimales a la base hexadecimal y a la binaria:
#         a. 1
#         b. 2
#         c. 3
#         d. 8
#         e. 15
#         f. 136
#         g. 255
#         h. 256
#         i. 247
#         j. 232
#         k. 127

# %%
nums = [
    1,
    2,
    3,
    8,
    15,
    136,
    255,
    256,
    247,
    232,
    127,
]

def dec_to_bin(num):
    return bin(num)[2:].upper()

def dec_to_hex(num):
    return hex(num)[2:].upper()

for i in nums:
    print(dec_to_hex(i))
    print(dec_to_bin(i))

# %% [markdown]
#     4. Convierta los siguientes valores hexadecimales a binarios y viceversa:
#         a. 1111 0000
#         b. 0001 0000
#         c. 1111 0111
#         d. FFFF
#         e. AAAA
#         f. F0F0
#         g. FEFA
#         h. CAFE

# %%
bin_nums = [
    '1111 0000',
    '0001 0000',
    '1111 0111'
]

hex_nums = [
    'FFFF',
    'AAAA',
    'F0F0',
    'FEFA',
    'CAFE'
]

for i in bin_nums:
    print(dec_to_hex(bin_to_dec(i)))

for i in hex_nums:
    print(dec_to_bin(hex_to_dec(i)))


# %%



