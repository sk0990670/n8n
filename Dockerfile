FROM n8nio/n8n:latest

ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV NODE_ENV=production

# URLs (Railway will auto assign domain)
ENV WEBHOOK_URL=https://your-app.up.railway.app
ENV N8N_EDITOR_BASE_URL=https://your-app.up.railway.app

ENV GENERIC_TIMEZONE=Asia/Kolkata

EXPOSE 5678

CMD ["n8n"]
