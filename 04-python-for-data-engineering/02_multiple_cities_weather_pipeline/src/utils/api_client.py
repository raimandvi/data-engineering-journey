import requests

def fetch_weather(lat, lon):
    
    url = f"https://api.open-meteo.com/v1/forecast latitude={lat}&longitude={lon}&current_weather=true"
    
    response = requests.get(url)
    
    return response.json()