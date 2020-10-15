# Use the base image created and maintained by mhart
# It has a bare minimum installation the server and the libraries needed for an expressjs server.
FROM mhart/alpine-node
COPY index.js .
EXPOSE 8000
CMD node index.js
