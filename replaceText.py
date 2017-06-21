replacements = {'class1,':'0', 'class2,':'1'}

with open('/Users/minhnguyen/StreamingAlgo/StreamDM/streamDM/data/randomtreedata_100.arff') as infile, open('/Users/minhnguyen/StreamingAlgo/StreamDM/streamDM/data/randomtreedata_100_new.arff', 'w') as outfile:
    for line in infile:
        for src, target in replacements.iteritems():
            line = line.replace(src, target)
        outfile.write(line)

