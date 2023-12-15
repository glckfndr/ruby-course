def x
  caller
end

def y
  x
end

def z
  y
end
RE = /(.*):(\d+):in `(.*)'/
callers = z
source, line, method = RE.match(callers[3]).captures
puts method
