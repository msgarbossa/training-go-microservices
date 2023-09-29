FROM scratch
EXPOSE 80
COPY ./mailerApp /mailerApp
COPY templates /templates
CMD [ "./mailerApp" ]