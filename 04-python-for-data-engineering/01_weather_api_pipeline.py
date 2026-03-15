import requests
import pandas as pd

# Weather API (Delhi)
url = "https://api.open-meteo.com/v1/forecast?latitude=28.61&longitude=77.20&current_weather=true"

# Extract data
response = requests.get(url)
data = response.json()

# Get current weather
weather = data["current_weather"]

weather_data = {
    "temperature": weather["temperature"],
    "wind_speed": weather["windspeed"],
    "wind_direction": weather["winddirection"],
    "time": weather["time"]
}

# Convert to DataFrame
df = pd.DataFrame([weather_data])

# Save to CSV
df.to_csv("weather_data.csv", index=False)

print("Weather data saved successfully!")