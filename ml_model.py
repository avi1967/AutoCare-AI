import pandas as pd
from sklearn.ensemble import RandomForestClassifier
import pickle

data = pd.read_csv("vehicle_data.csv")

X = data[["age", "mileage", "engine_temp", "error_count"]]
y = data["risk"]

model = RandomForestClassifier(
    n_estimators=100,
    max_depth=5,
    random_state=42
)

model.fit(X, y)

with open("model.pkl", "wb") as f:
    pickle.dump(model, f)

print("Random Forest model trained")
