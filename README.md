# Transform 2021: Guide to PyVista

Welcome the PyVista workshop for the Transform 2021 Virtual Conference!

Links:

- [Live Stream](https://www.youtube.com/watch?v=FmNmRBsEBHE)
- [The Guide to PyVista for Geoscientists](https://banesullivan.com/pyvista/)
- [What is a PyVista Mesh?](https://docs.pyvista.org/getting-started/what-is-a-mesh.html)
- [PyVista Example Gallery](https://docs.pyvista.org/examples/index.html)
- [PyVista Support Forum](https://github.com/pyvista/pyvista-support)


## Getting Started

This workshop assumes you have anaconda on your machine. There is a provided
`environment.yml` file to create a conda virtual environment for installing PyVista and many other packages for the tutorials in this workshop.

1. Download entire repository
2. Run `conda env create --file=environment.yml`
3. Activate the environment: `conda activate t21-pyvista`

As a last resort, there is a MyBinder set up for this demo here: [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/banesullivan/transform-2021/HEAD)

MyBinder will be slow and not as responsive when 3D rendering so I advise against using it.

### Using pip instead

For those of you that do not use anaconda, I have added a `requirements.txt` file that can be used with `pip` to isntall everything. This demo will work best on Python 3.7.

```
pip install -r requirements.txt
```


## Andvanced (Docker)

There is also a docker image hosted on docker hub: https://hub.docker.com/repository/docker/banesullivan/transform-21

```
docker pull banesullivan/transform-21:latest
```

Run the docker image:

```
docker run -p 8878:8878 banesullivan/transform-21 jupyter lab --port=8878 --no-browser --ip=0.0.0.0 --allow-root
```

You'll also need to mount the docker image file system to share the notebooks with the image.

```
docker run -p 8878:8878 banesullivan/transform-21 jupyter lab --port=8878 --no-browser --ip=0.0.0.0 --allow-root -v t21:path/to/local/examples
```
