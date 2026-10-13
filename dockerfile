FROM alpine/git AS source
WORKDIR /source
RUN git clone --depth 1 https://github.com/balpreet787/assignment2Devops.git .

FROM node:22-alpine
WORKDIR /app
COPY --from=source /source/package.json /source/server.js /source/index.html ./
EXPOSE 3000
CMD ["npm", "start"]
