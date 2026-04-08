FROM ghcr.io/9001/copyparty-ac@sha256:059c7e2c75a4d2402ccc23febc281b87dc80ec2ba2dcb23de1f666f0b33b9b74
# version 1.20.13

ADD copyparty.conf /cfg/copyparty.conf

WORKDIR /state
EXPOSE  3923
ENTRYPOINT ["/bin/ash", "/z/cpp.sh", "-c", "/z/initcfg"]
