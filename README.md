# 🌱 8051 Based Automatic Irrigation System

A hardware-implemented automatic irrigation system using the 8051 microcontroller programmed in Assembly (Keil A51). The system monitors soil moisture and controls a water pump accordingly.

---

## 📌 Project Overview

This project implements a soil moisture-based irrigation controller. 

When soil becomes dry, the system automatically activates a water pump through a relay. When soil moisture is sufficient, the pump is turned off. LED indicators show the soil condition status.

This project was fully implemented on hardware.

---

## 🎯 Objectives

- Automate irrigation process
- Conserve water
- Reduce manual intervention
- Implement embedded decision-based control

---

## 🛠 Hardware Components

- 8051 Microcontroller (AT89S52 / AT89C51)
- Soil Moisture Sensor Module (Digital Output)
- Relay Module
- Water Pump
- Dry Soil LED
- Wet Soil LED
- 5V Power Supply

---

## 🔌 Pin Configuration

| Component | 8051 Pin |
|-----------|----------|
| Soil Sensor Output | P1.0 |
| Dry LED | P2.0 |
| Wet LED | P2.1 |
| Water Pump (Relay) | P2.2 |

---

## ⚙️ Working Logic

- If P1.0 = HIGH → Soil is Dry  
  - Dry LED ON  
  - Wet LED OFF  
  - Pump ON  

- If P1.0 = LOW → Soil is Wet  
  - Dry LED OFF  
  - Wet LED ON  
  - Pump OFF  

The system continuously monitors soil condition using polling.

---

## 💻 Software Details

- Developed in Keil uVision
- Language: 8051 Assembly (A51)
- Polling-based architecture
- Nested loop delay implementation

---

## 🧠 Key Technical Concepts

- Port configuration in 8051
- Bit-level branching (JB instruction)
- Subroutine design (ACALL/RET)
- Relay-based high voltage isolation
- Real-time embedded control logic

---

## 🔬 Testing Results

- Water pump activates only when soil is dry
- Water conservation achieved
- Stable relay switching
- Accurate LED indication

---

## 🚀 Future Enhancements

- LCD display integration
- IoT-based remote monitoring
- GSM alert system
- Multi-sensor integration

---

## 👨‍💻 Developed By

Gaurav Singh Rana  
B.Tech – Electronics and Communication Engineering  
Lovely Professional University
