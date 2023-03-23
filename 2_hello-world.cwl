cwlVersion: v1.0
class: CommandLineTool

requirements:
  InitialWorkDirRequirement:
    listing:
    - entryname: hello-world-script
      entry:
        $include: ./2_hello-world.py

baseCommand: ["python3", "hello-world-script"]

inputs: []
outputs: []