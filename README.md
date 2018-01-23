# ccminer-in-docker

This is a Dockerfile to build a ccminer container on your Linux hosts.
Forked form `kahiroka/ccminer-in-docker`
It use a fork of ccminer by todd1251 with the support of `x16r` algo (ravencoin).
You should use it only for the `x16r` algo.
Mine other ones with kahiroka version.

# Deps

NVIDIA/nvidia-docker

https://github.com/NVIDIA/nvidia-docker

# Usage

```bash
nvidia-docker run --rm --name=rvnminer -d x16r-miner \
  -a x16r \ 
  --url="stratum+tcp://rvn.suprnova.cc:6666" \
  --userpass="<worker user name>:<pwd>"
```

You can check the output of ccminer with:

```bash
docker logs -f rvnminer
```

If there is no problem, you can stop this container as below.

```bash
docker kill ccminer
```
