# Pick base
FROM python:3.11-slim
# WORK DIR SETUP / create virtual folder
WORKDIR /app
# copy from my folder to container
COPY main.py .
# install FASTAPI i server uvicorn
RUN pip install fastapi uvicorn 
# server should listen on port 
EXPOSE 8000
# run server when container start 
CMD ["uvicorn","main:app","--host","0.0.0.0","--port","8000"]