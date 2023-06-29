FROM python:3.9
#copy files to image
WORKDIR /pythonproject
COPY requirements.txt .
#install requirments
RUN pip install -r requirements.txt
COPY . .
RUN chmod 777 run.sh
ENTRYPOINT [ "./run.sh" ]
#CMD [ "./run.sh" ]
