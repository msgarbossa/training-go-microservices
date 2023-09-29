FROM scratch
EXPOSE 8080
COPY ./listenerApp /listenerApp
CMD [ "./listenerApp" ]