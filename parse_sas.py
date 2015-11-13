def strip_comments(fh):
    for line in fh:
        line = line.strip()
        if line and (line[:2] != "/*" or line[0]=="*"):
            yield line

def parse_value(fh, start=""):
    d = {}
    for line in strip_comments(fh):
        line = start + line
        start = ""
        if line ==";":
            return d
        else:
            try:
                k, v = line.split("=", 1)
            except ValueError:
                remaining = parse_value(fh, line)
                return d.update(remaining) if remaining else d
            k = k.strip()
            v = v.strip("\"' ")
            d[k] = v

def pair(l):
    flag = False
    for c in l:
        if c:
            if c==";":
                return
            if c!='$':
                if flag:
                    yield (key, int(c))
                    flag = False
                else:
                    key = c
                    flag = True
                    continue

def aux(fh):
    for line in strip_comments(fh):
        l = line.split(" ")
        yield from pair(l)
        if l[-1]==";":
            return

def parse_length(fh):
    return {k: v for k, v in aux(fh)}

if __name__=="__main__":
    fh = open("2013/familyxx.sas")
    values = {}
    for line in strip_comments(fh):
        if "VALUE" in line:
            _, varname = line.split()
            values[varname] = parse_value(fh)
        if "LENGTH" in line:
            length = parse_length(fh)
        if "LABEL" in line:
            labels = parse_value(line)
