import binascii

text = "sh"
hex_text = binascii.hexlify(text.encode()).decode()
print(hex_text) 

parts = [text[i:i+4] for i in range(0, len(text), 4)]
for part in parts:
    hex_part = binascii.hexlify(part.encode()).decode()

    little_endian = ''.join(reversed([hex_part[i:i+2] for i in range(0, len(hex_part), 2)]))
    print(f"0x{little_endian}")