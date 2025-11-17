# ABS Braking Simulation Project

This repository contains the files and documentation for the **ABS (Anti-lock Braking System) Simulation** project completed as part of the **Automotive Electrical and Electronic Systems** course.


## Project Overview
The objective of this project is to model and simulate **vehicle longitudinal braking dynamics** using a **quarter-car model** and design a simple **ABS slip controller** that maintains wheel slip near the optimal region for maximum tire–road friction. The study compares **braking with and without ABS** across different road conditions and evaluates stopping distance, wheel/vehicle speed, braking torque, slip, and friction behavior.


## Key Simulation Steps
1. **System Modeling**
   - **Vehicle (quarter-car):** Longitudinal dynamics with braking force Ff, inertia Fi, and normal load N. Vehicle speed v obtained by integrating acceleration.
   - **Wheel:** Rotational dynamics with brake torque Tb opposing motion and contact force at radius rw; angular speed ωw from integration.
   - **Slip (s):** Computed from vehicle and wheel speeds; bounded in [0,1] with ε to avoid division by zero.

2. **Tire–Road Friction (μ–λ)**
   - Empirical model: μ(s) = c1(1 - e^(-c2*s)) - c3*s with parameter sets for **Dry**, **Wet**, **Snow**, and **Ice** conditions.
   - Target slip ≈ 20% (stable peak region).

3. **ABS Controller**
   - Simple **bang-bang slip controller** driving slip toward the 20% setpoint; active only when v ≥ vmin.
   - Includes first-order hydraulic dynamics (gain K = 1000, time constant T = 0.05 s) and torque saturation (Tb,max = 2000 Nm).

4. **Scenarios & Tasks**
   - Plot **μ–λ curves** for all road types.
   - From initial speed v0 = 33.33 m/s (≈120 km/h), simulate **hard braking to stop** for 25 s:
     - **Without ABS**
     - **With ABS**
   - Compare **braking torque, slip, μ, wheel/vehicle speeds, and stopping distance** for each road.


## Expected Outputs
- **Plots:** μ–λ curves (by road), Tb(t), s(t), μ(t), v(t), ωw(t), and distance.
- **Comparison:** ABS vs. no-ABS stopping behavior and stability across surfaces.


## Requirements
- **Software:** MATLAB R2022b with **Simulink**.


## Author
**Shahnaz Pourbarghi Sofiyani**

