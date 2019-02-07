import csv
datafile = "./Experiments/CPS/code/dice_results.csv"
data = list(csv.reader(open(datafile)))
#print(data)
data2d = {}
# Create a  dictionary (data2d) where the Key is the GroundTruth file
# The value is a list of (ExtractionFile, DICE) pairs
# The order of ExtractionFiles, is always Watershed, BET, neoBET
# row[0] contains the GroundTruth file
# row[1] contains the Brain Extraction result file name
# row[2] contains the DICE score for row[0] vs row[1]
for row in data:
    try:
        if row[0] in data2d:
            data2d[row[0]].append([row[1],row[2]])
        else:
            data2d[row[0]] = [[row[1],row[2]]]
    except:
        print("there is a problem with the following row:")
        print(row)

# Print Header
print("GroundTruth,Watershed,BET,neoBET")
for ground, vals in data2d.items():
    dices = ""
    for extraction,dice in vals:
        dices = dices + "," + dice
    row = ground + dices
    print(row)
