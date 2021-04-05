# pyright_keras_weirdness
To create the docker image,

```docker build -t tf_import -f Dockerfile .```

Then do 

```
docker run -it tf_import bash
pyright keras_weirdness.py
```

This should show no errors, but currently has 1 error message of

```
/home/keras_weirdness.py:3:12 - error: "keras" is not a known member of module (reportGeneralTypeIssues)
```
