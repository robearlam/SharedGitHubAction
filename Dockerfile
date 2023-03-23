FROM mcr.microsoft.com/dotnet/sdk:6.0-alpine

WORKDIR /

COPY .config/ .config/
COPY nuget.config nuget.config

RUN dotnet tool restore