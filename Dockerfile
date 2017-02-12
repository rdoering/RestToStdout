FROM google/dart

WORKDIR /bin

ADD pubspec.* /bin/
RUN pub get
ADD . /bin
RUN pub get --offline

CMD []
ENTRYPOINT ["/usr/bin/dart", "server.dart"]