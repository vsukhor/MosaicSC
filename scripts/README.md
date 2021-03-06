### Scripts


The Python 3 scripts here are useful for analysis of some simulation results reported in the logfile (read_log.py).  
While the actual logfile is to be generated by running the main application, exemplary files for testing the scripts are given in [../examples/example1](../examples/example1) directory. 

For convenience, the script is accompanied by the corresponding ipython notebook.

It is recommended that the work is done using Python virtual environment:

`$ cd ./scripts/`  
`$ python3 -m venv venv`  
`$ source ./venv/bin/activate`  
`(venv) $ pip install -r requirements.txt` 

Then, the script can be launched the ordinary way:

`(venv) $ python ./time_analysis/read_log.py`  

To install and use the notebook:
 
`(venv) $ pip install jupyter`  
`(venv) $ jupyter notebook ./time_analysis/read_log.ipynb` 

The scripts were tested with Python 3.7 and jupyter-notebook v. 6.0.3. 
