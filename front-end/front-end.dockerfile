FROM scratch
EXPOSE 80
COPY ./frontApp /frontApp
COPY ./cmd/web/templates /cmd/web/templates
CMD [ "./frontApp" ]