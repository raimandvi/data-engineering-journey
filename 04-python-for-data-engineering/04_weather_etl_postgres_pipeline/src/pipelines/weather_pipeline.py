import pandas as pd
from src.config.cities import CITIES
from src.utils.api_client import fetch_weather
from src.db.db_connection import get_connection

def run_pipeline():

    weather_data = []

    for city, coord in CITIES.items():
        data = fetch_weather(coord["lat"], coord["lon"])

        weather_data.append({
            "city": city,
            "temperature": data["temperature"],
            "wind_speed": data["windspeed"],
            "wind_direction": data["winddirection"],
            "time": data["time"]
        })

    df = pd.DataFrame(weather_data)

    load_to_db(df)


def load_to_db(df):

    conn = get_connection()
    cursor = conn.cursor()

    for _, row in df.iterrows():
        cursor.execute("""
            INSERT INTO weather_data (city, temperature, wind_speed, wind_direction, time)
            VALUES (%s, %s, %s, %s, %s)
        """, (
            row["city"],
            row["temperature"],
            row["wind_speed"],
            row["wind_direction"],
            row["time"]
        ))

    conn.commit()
    cursor.close()
    conn.close()