FROM chatwoot/chatwoot:v4.8.0
LABEL maintainer="TuxTech"
LABEL description="Chatwoot customizado para Baileys (Evolution API)"
WORKDIR /app
COPY entrypoint.baileys.sh /entrypoint.baileys.sh
RUN chmod +x /entrypoint.baileys.sh
ENV CHATWOOT_BAILEYS_ENABLED=true
ENTRYPOINT ["/entrypoint.baileys.sh"]
CMD ["bundle","exec","rails","s","-p","3000","-b","0.0.0.0"]
