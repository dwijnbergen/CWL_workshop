import argparse

# Parse arguments
parser = argparse.ArgumentParser()
parser.add_argument("text")
parser.add_argument("repetitions")
args = parser.parse_args()
try:
    text = args.text
    repetitions = int(args.repetitions)
except:
    quit(1)

# Write file with the repeated input text
if repetitions > 0 and len(text) > 0:
    output_text = text * repetitions

    with open("output.txt", "w") as outfile:
        outfile.write(output_text)
else:
    quit(1)