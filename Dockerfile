FROM mcr.microsoft.com/dotnet/core/sdk:3.0 AS build
WORKDIR /app

# copy csproj and restore as distinct layers
COPY *.sln .
COPY DotnetDockerDemo/*.csproj ./DotnetDockerDemo/
#RUN dotnet restore

# copy everything else and build app
COPY DotnetDockerDemo/. ./DotnetDockerDemo/
WORKDIR /app/DotnetDockerDemo
RUN dotnet publish -c Release -o out


FROM mcr.microsoft.com/dotnet/core/aspnet:3.0 AS runtime
WORKDIR /app
COPY --from=build /app/DotnetDockerDemo/out ./
ENTRYPOINT ["dotnet", "DotnetDockerDemo.dll"]
