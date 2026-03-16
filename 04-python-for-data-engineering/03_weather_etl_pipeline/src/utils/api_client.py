import requests
import logging

def fetch_weather(city, lat, lon):

    try:
        logging.info(f"Fetching weather data for {city}")

        url = f"https://api.open-meteo.com/v1/forecast?latitude={lat}&longitude={lon}&current_weather=true"

        response = requests.get(url)
        data = response.json()

        weather = data["current_weather"]

        return {
            "city": city,
            "temperature": weather["temperature"],
            "wind_speed": weather["windspeed"],
            "wind_direction": weather["winddirection"],
            "time": weather["time"]
        }

    except Exception as e:
        logging.error(f"Error fetching data for {city}: {e}")
        return None