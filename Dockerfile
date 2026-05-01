FROM n8nio/n8n:latest

# Set environment variables
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV NODE_ENV=production

# Important for Render
ENV WEBHOOK_URL=https://your-app-name.onrender.com
ENV N8N_EDITOR_BASE_URL=https://your-app-name.onrender.com

# Timezone (optional but recommended)
ENV GENERIC_TIMEZONE=Asia/Kolkata

# Create n8n directory
RUN mkdir -p /home/node/.n8n
WORKDIR /home/node

# Expose port
EXPOSE 5678

# Start n8n
CMD ["n8n"]
