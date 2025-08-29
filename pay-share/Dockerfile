# Stage 1: Build Angular app
FROM node:18 AS build

WORKDIR /app

COPY package*.json ./
RUN npm install -g @angular/cli@17 \
    && npm install --force

COPY . .

RUN npm run build --prod

# Stage 2: Nginx to serve build
FROM nginx:alpine

COPY --from=build /app/dist/payshare/browser /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
