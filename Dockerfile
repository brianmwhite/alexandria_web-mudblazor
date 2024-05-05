# Use the .NET 5.0 SDK Docker image to build the app
FROM mcr.microsoft.com/dotnet/sdk:8.0-alpine AS build
WORKDIR /source

# Copy csproj and restore
COPY . ./
RUN dotnet restore

# Copy everything else and build the app
COPY . .
RUN dotnet publish -c Release -o /app --no-restore

# Use the ASP.NET Core 3.1 runtime Docker image to run the app
FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine
WORKDIR /app
COPY --from=build /app ./
ENTRYPOINT ["dotnet", "web-mudblazor.dll"]