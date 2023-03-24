cwlVersion: v1.0
class: CommandLineTool

requirements:
  InitialWorkDirRequirement:
    listing:
    - entryname: analyze-text-script
      entry:
        $include: ./4_analyze-text-file.py

baseCommand: ["python3", "analyze-text-script"]

inputs:
  input_file:
    type: File
    inputBinding:
      position: 1

outputs:
  output_file:
    type: File
    outputBinding:
      glob: counts.txt