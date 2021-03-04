# Download files from Google Drive via the command line

This is to help you download files from Google Drive on anya system that has `docker` installed.

It makes use of [`gdown`](https://pypi.org/project/gdown/) but is packaged in a container.

This repo makes sure that the data owner of the downloaded data is the current user and not `root`.

## Usage

1/ Build the image

```
make build
```

2/ Download from URL

for instance: `https://drive.google.com/u/1/uc?id=17-FCstm8Fz3bDzFgTmOWHa_c39lTR_1P`

```
make download URL="<your url>"
```