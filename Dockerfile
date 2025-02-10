# Stage 1: Build stage
FROM node:18-alpine AS builder
WORKDIR /app
# Copy package files and install dependencies
COPY package.json package-lock.json* ./
# Copy the .env file for use during build (if needed)
COPY .env .
RUN npm install --production
# Copy the rest of the source code and build
COPY . .
RUN npm run build

# Stage 2: Run stage
FROM node:18-alpine AS runner
WORKDIR /app

COPY --from=builder /app/.next ./.next
COPY --from=builder /app/public ./public
COPY --from=builder /app/package.json ./package.json
COPY --from=builder /app/node_modules ./node_modules
# Copy the .env file to make environment variables available at runtime
COPY --from=builder /app/.env .
EXPOSE 3000
CMD ["npm", "run", "start"]