import logging
from src.pipelines.weather_pipeline import run_weather_pipeline

logging.basicConfig(level=logging.INFO)

if __name__ == "__main__":

    df = run_weather_pipeline()

    print(df)