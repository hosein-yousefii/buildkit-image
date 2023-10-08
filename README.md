# buildkit-image

Rootless buildkit daemon image.

[![GitHub license](https://img.shields.io/github/license/hosein-yousefii/buildkit-image)](https://github.com/hosein-yousefii/buildkit-image/blob/master/LICENSE)
![LinkedIn](https://shields.io/badge/style-hoseinyousefii-black?logo=linkedin&label=LinkedIn&link=https://www.linkedin.com/in/hoseinyousefi)

## Requirements

* Create certificates for buildkit daemon using the create-certs.sh.
```
./create-certs.sh buildkitd.home.local 127.0.0.1

```

* Add your private registry certificate in .certs folder. I use Harbor so, my image is Harbor-ca.cert which in your case could be different.


## Usage

* Make sure everything in Dockerfile is good then build and push.

```
docker build . -t buildkit-image:1.0.0
```

Now you are able to use it in Kubernetes or any where you like.

Follow this link for more information:
[Implement Buildkit in Kubernetes](https://medium.com/@hosseinyousefi/buildkit-deep-dive-part3-implement-buildkit-in-kubernetes-and-build-images-in-tekton-using-af042133486f).



Copyright 2023 Hosein Yousefi <yousefi.hosein.o@gmail.com>
