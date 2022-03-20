FROM alpine
RUN apk update  
RUN apk add nano vim gcc nasm gdb 
RUN apk add python3
# RUN apk add py3-pip
# RUN pip install numpy 
# RUN pip install pytesseract
RUN adduser -D alp 
USER alp
WORKDIR /home/alp
COPY --chown=alp:alp . .
