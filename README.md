# Common Workflow Language


## Preparation
### Install CWL
```
sudo apt intall cwltool
```

### Download CWL and Python code
Download the python and CWL files, and put these in one directory. Run the following commands from the same directory.

## Run examples
### Example 1: Hello world!
```
cwl-runner 1_hello-world.cwl
```
### Example 2: Hello world in python
```
cwl-runner 2_hello-world.cwl
```
### Example 3: Create a text file
```
cwl-runner 3_create-text-file.cwl --text CWL --repetitions 20
```
or
```
cwl-runner 3_create-text-file.cwl 3_test.yml
```
### Example 4: analyze a text file
```
cwl-runner 4_analyze-text-file.cwl --input_file output.txt
```
### Example 5: Combine steps into a workflow
```
cwl-runner 5_workflow.cwl 3_test.yml
```
