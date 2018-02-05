FROM sagemath/sagemath:8.0-2
#RUN sudo apt-get install pandoc

# Inspired from https://mybinder.readthedocs.io/en/latest/dockerfile.html#preparing-your-dockerfile
# Make sure the contents of our repo are in ${HOME}
COPY . ${HOME}

RUN sage -i pandoc && sage -pip install . && make ipynb
