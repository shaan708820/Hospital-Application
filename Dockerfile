FROM node:18-alpine
WorkDIR /usr/src/app
COPY src/backend/package*.json ./src/backend/
RUN cd src/backend && npm install --production
COPY src/ ./src/
EXPOSE 5000
CMD ["node", "src/backend/app.js"]