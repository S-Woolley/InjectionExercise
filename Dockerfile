# Use the official .NET SDK image to build the application
FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build
WORKDIR /app

# Copy the project files and restore dependencies
COPY *.sln .
COPY frontend/frontend.csproj ./frontend/
RUN dotnet restore ./frontend/frontend.csproj

# Copy the rest of the files and build the project
COPY . .
RUN dotnet build ./frontend/frontend.csproj -c Release -o /app/build
RUN dotnet publish ./frontend/frontend.csproj -c Release -o /app/publish

# Use the official .NET runtime image to run the application
FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS runtime
WORKDIR /app
COPY --from=build /app/publish .

# Expose the port the application runs on
EXPOSE 80
EXPOSE 443
# Start the application
ENTRYPOINT ["dotnet", "frontend.dll"]