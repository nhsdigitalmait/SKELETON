FROM nhsdigitalmait/tkw-x:a558e32
ARG USER_ID

RUN useradd -rm -u $USER_ID service
RUN mkdir /home/service/data/ && chown service:service /home/service/data/
COPY . /home/service/TKW/config/SKELETON
WORKDIR /home/service/TKW/config/SKELETON
RUN mkdir messages_for_validation && chown -R service:service .

#RUN sh set-all-configurations.sh


ENV trustStore=/home/service/TKW/config/SKELETON/certs/tls.jks
ENV trustStorePassword=default
ENV keyStore=/home/service/TKW/config/SKELETON/certs/tls.jks
ENV keyStorePassword=default
USER service

ENV TKWROOT=/home/service/TKW

ENTRYPOINT ["bash", "runtkwfhirvalidator.sh"]
