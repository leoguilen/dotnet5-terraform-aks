FROM mcr.microsoft.com/dotnet/sdk:5.0-alpine AS dotnet_restore_domain_rule
COPY "Sample.sln" "Sample.sln"
COPY "src/Sample.csproj" "src/Sample.csproj"
RUN dotnet restore "Sample.sln" --no-cache

FROM dotnet_restore_domain_rule AS dotnet_publish
COPY . .
RUN dotnet publish "src/Sample.csproj" -c Release -o /app

FROM mcr.microsoft.com/dotnet/aspnet:5.0-alpine
WORKDIR /app
COPY --from=dotnet_publish /app .

EXPOSE 8080
ENV ASPNETCORE_URLS=http://+:8080

ENTRYPOINT ["dotnet", "Sample.dll"]