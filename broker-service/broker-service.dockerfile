FROM scratch
EXPOSE 8080
COPY ./brokerApp /brokerApp
CMD [ "./brokerApp" ]