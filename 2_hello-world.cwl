cwlVersion: v1.0
class: CommandLineTool

requirements:
  InitialWorkDirRequirement:
    listing:
    - entryname: hello_world_script
      entry:
        $include: ./2_hello-world.py

baseCommand: ["python3", "hello_world_script"]

inputs: []
outputs: []