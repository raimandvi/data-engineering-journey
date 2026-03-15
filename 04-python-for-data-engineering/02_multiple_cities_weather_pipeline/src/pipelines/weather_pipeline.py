# weather_pipeline.py

import pandas as pd
from src.utils.api_client import fetch_weather
from src.config.cities import cities

def run_pipeline():

    weather_list = []

    for city, (lat, lon) in cities.items():

        data = fetch_weather(lat, lon)

        weather = data["current_weather"]

        weather_data = {
            "city": city,
            "temperature": weather["temperature"],
            "wind_speed": weather["windspeed"],
            "wind_direction": weather["winddirection"],
            "time": weather["time"]
        }

        weather_list.append(weather_data)

    df = pd.DataFrame(weather_list)

    df.to_csv("multiple_cities_weather.csv", index=False)