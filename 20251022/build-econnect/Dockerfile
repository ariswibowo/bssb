FROM mcr.microsoft.com/dotnet/aspnet:6.0-alpine3.19

# Enable Globalization Support
RUN apk add icu-libs
ENV DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=false

RUN mkdir -p /home/EConnect/

WORKDIR /home/EConnect

COPY PublishOutput /home/EConnect/
