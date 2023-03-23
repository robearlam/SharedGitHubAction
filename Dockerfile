FROM mcr.microsoft.com/dotnet/sdk:6.0-alpine

WORKDIR /

COPY .config/ .config/

RUN dotnet tool restore