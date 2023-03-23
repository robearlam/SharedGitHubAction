FROM mcr.microsoft.com/dotnet/sdk:6.0-alpine

WORKDIR /

COPY .config/ .config/
COPY nuget.config nuget.config
COPY sitecore.json sitecore.json

RUN dotnet tool restore
RUN dotnet sitecore 
RUN dotnet sitecore --help