cwlVersion: v1.0
class: Workflow

inputs:
  text:
    type: string
  repetitions:
    type: int

outputs:
  count_file:
    type: File
    outputSource:
      analyze_text_file/output_file

steps:
  create_text_file:
    run: 3_create-text-file.cwl
    in:
      text: text
      repetitions: repetitions
    out:
      [output_file]

  analyze_text_file:
    run: 4_analyze-text-file.cwl
    in:
       input_file: create_text_file/output_file
    out:
      [output_file]