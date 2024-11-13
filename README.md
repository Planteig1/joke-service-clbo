# Joke Service

A simple microservice that serves jokes through RESTful API endpoints.

## Description
This service provides various endpoints to retrieve jokes, including options to get all jokes, a random joke, or a specific joke by ID.

## Setup

### Running with Docker
1. Build the Docker image:
```bash
docker build -t joke-service .
```

2. Run the container:
```bash
docker run -p 5000:80 joke-service
```

### Running without Docker
1. Install dependencies:
```bash
pip install -r requirements.txt
```

2. Run the application:
```bash
python app.py
```

The service will be available at `http://localhost:5000`

## API Endpoints

### Get All Jokes
- **URL**: `/api/jokes`
- **Method**: `GET`
- **Response**: Array of joke objects
```json
[
    {
        "id": 1,
        "setup": "Why don't programmers like nature?",
        "punchline": "It has too many bugs!"
    },
    {
        "id": 2,
        "setup": "What do you call a bear with no teeth?",
        "punchline": "A gummy bear!"
    }
]
```

### Get Random Joke
- **URL**: `/api/jokes/random`
- **Method**: `GET`
- **Response**: Single joke object
```json
{
    "id": 1,
    "setup": "Why don't programmers like nature?",
    "punchline": "It has too many bugs!"
}
```

### Get Joke by ID
- **URL**: `/api/jokes/<id>`
- **Method**: `GET`
- **URL Parameters**: `id=[integer]`
- **Success Response**:
```json
{
    "id": 1,
    "setup": "Why don't programmers like nature?",
    "punchline": "It has too many bugs!"
}
```
- **Error Response** (404 Not Found):
```json
{
    "error": "Joke not found"
}
```

### Health Check
- **URL**: `/health`
- **Method**: `GET`
- **Response**:
```json
{
    "status": "healthy"
}
```

## Project Structure
```
joke_service/
├── app.py              # Main application file
├── requirements.txt    # Python dependencies
├── Dockerfile         # Docker configuration
├── .dockerignore     # Docker build exclusions
└── README.md         # Documentation
