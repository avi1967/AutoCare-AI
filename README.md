# 🚗 Predictive-AutoAssist
### AI-Driven Predictive Maintenance & Service Scheduling Platform

Predictive AutoAssist is a full-stack predictive maintenance prototype for the automotive domain.  
It integrates a supervised machine learning model to predict vehicle failure risk and
automates customer engagement and service scheduling through a web-based interface.

---

## ✨ Key Features

- ML-based vehicle failure risk prediction
- Web dashboard for OEMs and service centers
- Proactive AI chat simulation for customers
- Automated service scheduling workflow
- End-to-end working prototype using Flask

---

## 🧠 AI / ML Overview

- Trained a **Logistic Regression** model using vehicle health data:
  - Vehicle age
  - Mileage
  - Engine temperature
  - Error count
- The ML model predicts **High Risk / Low Risk**
- Predictions trigger alerts, customer notifications, and service scheduling

---

## 🛠️ Tech Stack

- **Frontend:** HTML, CSS  
- **Backend:** Python, Flask  
- **Machine Learning:** scikit-learn, pandas  
- **Data:** CSV (training), JSON (runtime)

---

## 📂 Project Structure

predictive-maintenance-prototype/
├── app.py
├── ml_model.py
├── model.pkl
├── vehicle_data.csv
├── vehicles.json
├── requirements.txt
├── templates/
│ ├── dashboard.html
│ ├── chat.html
│ ├── schedule.html
│ └── confirmation.html
└── static/
└── style.css


---

## 📽️ Demo Flow

https://drive.google.com/file/d/1zmvRo1WUd7gMPTaEdcr4srne3wGMml7X/view?usp=sharing

View vehicle risk levels on dashboard

ML model flags high-risk vehicles

AI chat notifies customer

Service appointment is scheduled

Confirmation screen displayed

## 🚀 Future Scope

Real-time IoT integration

Advanced predictive models

Cloud deployment

Mobile app interface

## Architecture Diagram
<img width="512" height="512" alt="System_Architecture" src="https://github.com/user-attachments/assets/2c26e14c-e023-4941-afce-164023869773" />


## Flowchart
<img width="301" height="512" alt="Flowchart" src="https://github.com/user-attachments/assets/0d4e879f-9664-462a-a34b-31a5eced1e1f" />

