# iruby-notebook
 a minimum IRuby Notebook docker env

## Installation

1. Install docker.

2. Run this command from your terminal.

  ```
  docker run -i -t -p 8888:8888 kozo2/iruby-notebook /bin/bash -c "/opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser"
  ```

## Usage
Open ```localhost:8888``` with your web browser.
