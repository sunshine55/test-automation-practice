FROM node:24-bookworm

RUN npx -y playwright@latest install --with-deps