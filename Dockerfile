FROM python:3.9
#copy files to image
WORKDIR /pythonproject
COPY requirements.txt .
#install requirments
RUN pip install -r requirements.txt
COPY . .

#windows docker desktop
#when you use docker desktop windows these line need to run on unix base 
RUN tr -d '\r' < run.sh > run_unix.sh
RUN chmod 777 run_unix.sh
ENTRYPOINT [ "./run_unix.sh" ]

#linux and mac
#these comands need for docker linux base like linux or mac os
#RUN chmod 777 run.sh 
#ENTRYPOINT [ "./run.sh" ]
