import pandas as pd
import logging

from src.config.cities import cities
from src.utils.api_client import fetch_weather


def run_weather_pipeline():

    weather_list = []

    for city, (lat, lon) in cities.items():

        weather_data = fetch_weather(city, lat, lon)

        if weather_data:
            weather_list.append(weather_data)

    df = pd.DataFrame(weather_list)

    df.to_csv("data/multiple_cities_weather.csv", index=False)

    logging.info("Weather ETL pipeline completed successfully")

    return df