# Common Workflow Language


## Preparation
### Install CWL
```
sudo apt intall cwltool
```

### Download CWL and Python code
Download the python and CWL files from this repository, and put these in one directory. Run the following commands from the same directory.

## Run example workflows
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

## For non Linux users (Google Colab)
Download the notebook, CWL and python code from this repository.

Open the [Google Colab](https://colab.research.google.com/) website, and wait for it to connect to a runtime.

Upload the notebook (File -> Upload Notebook).

Upload the CWL and Python code in the default folder (in the left side bar: Directory icon -> Upload file icon).

Run the examples.

## More information
[CWL User Guide](https://www.commonwl.org/user_guide/)

[CWL Documentation](https://www.commonwl.org/v1.2/)
