## API server
1. Create api server
```
$ docker compose run api sh
```

2. Initialize the module
```
# go mod init [your project name]
```

3. Create a golang project as you like. But main.go file is required

4. Add to the Dockerfile
```
# api/Dockerfile
# base image
FROM golang:1.21.5-alpine3.19

# working directory
WORKDIR /api

EXPOSE 8080

COPY . .

RUN go mod download

RUN go build -o main .

CMD ["go", "run", "main.go"]
```

5. Start up api server
```
$ docker compose up api --build
```

## Frontend
1. Into frontend server
```
$ docker compose run frontend sh
```

2. Remove Dockerfile
```
# rm Dockerfile
```

3. Create Next.js app
```
# npx create-next-app@latest .
```

If you get the following error
```
npm install has failed.
```
Execute the following command
```
# npm i
```

4. Re-create Dockerfile
```
# touch Dockerfile
```

5. Add to the Dockerfile
```
# frontend/Dockerfile
# base image
FROM node:20.10.0-alpine3.19
# working directoy
WORKDIR /app

EXPOSE 3000

COPY . .

RUN npm i

RUN npm run build

CMD ["npm","run","dev"]
```

6. Start frontend server
```
$ docker compose up frontend --build
```