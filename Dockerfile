#Client
FROM node:18 AS builder
WORKDIR /app

COPY client/package*.json ./client/
COPY client/ ./client/

RUN cd client && npm install 
# Server
FROM node:18
WORKDIR /app

COPY server/package*.json ./server/
COPY server/ ./server/

RUN cd server && npm install

# COPY --from=builder /app/client/dist ./server/public

EXPOSE 3000

CMD ["npm", "run ","start"]