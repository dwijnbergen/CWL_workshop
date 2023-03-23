cwlVersion: v1.0
class: CommandLineTool

requirements:
  InitialWorkDirRequirement:
    listing:
    - entryname: python_script
      entry:
        $include: ./3_create-text-file.py

baseCommand: ["python3", "python_script"]

inputs:
  text:
    type: string
    inputBinding:
      position: 1
  repetitions:
    type: int
    inputBinding:
      position: 2

outputs:
  repeated_text_file:
    type: File
    outputBinding:
      glob: output.txt