FROM postgres:14.1

ENV POSRGRES_PASSWORD postgres
ENV POSTGRES_USER postgres
ENV POSTGRES_DB favla

ADD script.sql /docker-entrypoint-initdb.d/
#COPY provision.sh /opt/
#RUN ["chmod", "+x", "/opt/provision.sh"]
#RUN bash -c "/opt/provision.sh"