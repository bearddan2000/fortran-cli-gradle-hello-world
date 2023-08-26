FROM gradle

WORKDIR /home/gradle

COPY bin .

RUN apt update

# the gradle task requires a compiler
RUN apt install -y gfortran

ENTRYPOINT "gradle"

# build - runs the script top to bottom
CMD ["build"]