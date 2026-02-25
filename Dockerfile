FROM node:20-bookworm-slim

WORKDIR /app

# 1 Copy ONLY dependecy manifests first
COPY package*.json ./ 

# 2 Install dependencies (clean, reproducible)
RUN npm ci

# 3 Copy application source code
COPY . .

ENV NODE_ENV=production

EXPOSE 3000

CMD ["npm","start"]

