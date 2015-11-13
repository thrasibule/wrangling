def skip_comments(fh, debug=False):
    for line in fh:
        line = line.strip()
        if line and line[:2] != "/*" and line[0]!="*":
            if debug:
                print(line)
            yield line

def coroutine(f):
    def start(*args, **kwargs):
        g = f(*args, **kwargs)
        next(g)
        return g
    return start

def parse_value(g, d=None, accu=""):
    if d is None:
        d = {}
    line = next(g)
    if line == ";":
        return d
    line = accu + line
    k, v = line.split("=", 1)
    v = v.strip()
    if v and (v[-1] == v[0]):
        d[k.strip()] = v[1:-1]
        return parse_value(g, d)
    else:
        return parse_value(g, d, line)

@coroutine
def co_parse_value(target):
    line = ""
    while True:
        line += (yield)
        k, v = line.split("=", 1)
        v = v.strip()
        if v and (v[-1] == v[0]):
            target.send((k.strip() , v[1:-1]))
            line = ""

@coroutine
def co_collect_dict(d):
    while True:
        (k, v) = (yield)
        d[k] = v

def parse_value2(g):
    d = {}
    t = co_collect_dict(d)
    aux = co_parse_value(t)
    for line in iter(lambda: next(g), ';'):
        aux.send(line)
    return d

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

def aux(g):
    for line in g:
        l = line.split(" ")
        yield from pair(l)
        if l[-1]==";":
            return

def parse_length(g):
    return list(aux(g))

@coroutine
def co_parse_length(target):
    while True:
        line = (yield)
        l = line.split(" ")
        for c in l:
            if c and c!='$':
                target.send(c)
@coroutine
def co_collect_pair(l):
    while True:
        l.append(((yield), int((yield))))

def parse_length2(g):
    l = []
    pair = co_collect_pair(l)
    aux = co_parse_length(pair)
    for line in g:
        aux.send(line)
        if line[-1]==';':
            break
    return l

def parse_sas(filename):
    with open(filename) as fh:
        g = skip_comments(fh)
        values = {}
        for line in fh:
            if "VALUE" in line:
                _, varname = line.split()
                values[varname] = parse_value2(fh)
            if "LENGTH" in line:
                lengths = parse_length2(fh)
            if "LABEL" in line:
                labels = parse_value2(fh)
    return values, lengths, labels

if __name__=="__main__":
    import glob, os, json
    for f in glob.glob("2013/*.sas"):
        fname = os.path.splitext(f)[0]
        with open(fname + '.json', 'w') as fh:
            values, lengths, labels = parse_sas(f)
            json.dump({'values': values,
                       'lengths': lengths,
                       'labels': labels}, fh)
