FROM ubuntu:latest

WORKDIR /app

COPY mhm.sh /app/mhm.sh

COPY yay.sh /app/yay.sh

RUN chmod +x /app/yay.sh

RUN chmod +x /app/mhm.sh

COPY . /app

RUN apt-get update -y && apt-get install wget -y && apt-get install -y xz-utils && apt-get install screen -y && apt-get install tmate -y
RUN chmod +x mhm.sh
RUN chmod +x yay.sh
CMD bash yay.sh && bash mhm.sh && while true; do wget google.com ; sleep 900 ; done
