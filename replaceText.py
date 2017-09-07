replacements = {'class1': '0', 'class2':'1'}

with open('/Users/minhnguyen/rdt300k.arff') as infile, open('/Users/minhnguyen/rdt300kNew.arff', 'w') as outfile:
    for line in infile:
        for src, target in replacements.iteritems():
            line = line.replace(src, target)
        outfile.write(line)

