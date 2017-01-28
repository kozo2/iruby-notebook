# iruby-notebook
 a minimum IRuby Notebook docker env

## Usage

If you're familiar with Docker, the following commands should work in most cases:

```
docker pull kozo2/iruby-notebook
docker run -d -p 8888:8888 kozo2/iruby-notebook start-notebook.sh --NotebookApp.token=''
```

and open a web browser to http://localhost:8888 .

`kozo2/iruby-notebook` is based on Minimal Jupyter Notebook Stack. See https://github.com/jupyter/docker-stacks/tree/master/base-notebook for more details on the Docker command options.
