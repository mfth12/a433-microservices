# Menggunakan image node versi 14
FROM node:14
# membuat dan menetapkan working directory di container
WORKDIR /app
# copy working directory host ke /app
COPY . .
# menambahkan environment variable
ENV NODE_ENV=production DB_HOST=item-db
# perintah run sebagai root, install dev dependensi, build
RUN npm install --production --unsafe-perm && npm run build
# menetapkan port8080 sebagai keluaran
EXPOSE 8080
# run node
CMD ["npm", "start"]