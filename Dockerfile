# This Docker file is intended for the CI
# A prerequisite is a published application in the .build/release  

FROM microsoft/dotnet:2.2-aspnetcore-runtime

EXPOSE 80
ENV ASPNETCORE_URLS http://+:80

WORKDIR /app
COPY src/OrchardCore.Mvc.Web/bin/Release/netcoreapp2.2/publish/ .

ENTRYPOINT ["dotnet", "OrchardCore.Cms.Web.dll"]