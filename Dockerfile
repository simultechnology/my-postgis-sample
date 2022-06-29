FROM postgis/postgis:14-3.2
RUN apt-get update -y && apt-get install postgis -y