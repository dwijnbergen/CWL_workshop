import argparse

# Parse arguments
parser = argparse.ArgumentParser()
parser.add_argument("text")
parser.add_argument("repetitions")
args = parser.parse_args()

# Convert repetitions to integer
try:
    text = args.text
    repetitions = int(args.repetitions)
except:
    quit(1)

# Create repeated repeated input text and write this to a file 
if repetitions > 0 and len(text) > 0:
    output_text = text * repetitions

    with open("output.txt", "w") as outfile:
        outfile.write(output_text)
else:
    quit(1)