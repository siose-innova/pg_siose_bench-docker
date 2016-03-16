
FROM benizar/siose_2005_bench
MAINTAINER Benito Zaragozi <benizar@gmail.com>


# packages needed for compilation
RUN apt-get update

RUN apt-get install build-essential checkinstall git postgresql-server-dev-9.5


# download and compile pg_siose_bench
RUN git clone https://github.com/labgeo/pg_siose_bench.git &&\
	cd pg_siose_bench &&\ 
	make &&\ 
	make install &&\
	cd .. &&\
	rm -Rf pg_siose_bench

# clean packages
# RUN apt-get remove build-essential checkinstall git unzip postgresql-server-dev-9.5
