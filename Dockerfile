# Build Stage
FROM oven/bun:latest AS builder

WORKDIR /app

# Copy dependency files first for caching
COPY package.json bun.lock ./
RUN bun install

# Copy the rest of the application and build
COPY . .
RUN bun run build

# Production Stage
FROM oven/bun:latest

WORKDIR /app

# Copy the build output from the builder stage
COPY --from=builder /app/build ./build
COPY --from=builder /app/package.json ./

# Set environment to production
ENV NODE_ENV=production
# adapter-node uses port 3000 by default
ENV PORT=3000
EXPOSE 3000

# Start the production server
CMD ["bun", "run", "build/index.js"]
