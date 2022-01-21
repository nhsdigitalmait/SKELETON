FROM nhsdigitalmait/tkw-x:a558e32
ARG USER_ID

RUN useradd -rm -u $USER_ID service
RUN mkdir /home/service/data/ && chown service:service /home/service/data/
VOLUME /home/service/data
VOLUME /home/service/certs
COPY . /home/service/TKW/config/SKELETON
WORKDIR /home/service/TKW/config/SKELETON
RUN mkdir simulator_saved_messages messages_for_validation transmitter_sent_messages  && chown -R service:service .

RUN sh set-all-configurations.sh

ENV trustStore=default
ENV trustStorePassword=default
ENV keyStore=default
ENV keyStorePassword=default
USER service
ENTRYPOINT ["bash", "runtkwfhirvalidator.sh"]

