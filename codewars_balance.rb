$b1="1000.00!=

125 Market !=:125.45
126 Hardware =34.95
127 Video! 7.45
128 Book :14.32
129 Gasoline ::16.10
"

def balance(b)
	res = b.gsub /[!=:]/, ""
	res.split("\n")
end

p balance($b1)
