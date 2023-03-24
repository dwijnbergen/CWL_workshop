import argparse

# Parse arguments
parser = argparse.ArgumentParser()
parser.add_argument("input_file")
args = parser.parse_args()

# Read text file
try:
    with open(args.input_file, "r") as infile:
        input_text = infile.readlines()
except:
    quit(1)

# Count the occurences of each character
counts = {}
for line in input_text:
    for character in line:
        if character in counts.keys():
            counts[character] += 1
        else:
            counts[character] = 1

# Write the results to counts.txt
try:
    with open("counts.txt", "w") as outfile:
        for key in counts.keys():
            outfile.write(key + ": " + str(counts[key]) + "\n")
except:
    quit(1)