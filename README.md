# ABS Braking Simulation Project

This repository contains the files and documentation for the **ABS (Anti-lock Braking System) Simulation** project completed as part of the **Simulation and Modeling** course.

---

## Project Overview
The objective of this project is to model and simulate **vehicle longitudinal braking dynamics** using a **quarter-car model** and design a simple **ABS slip controller** that maintains wheel slip near the optimal region for maximum tire–road friction. The study compares **braking with and without ABS** across different road conditions and evaluates stopping distance, wheel/vehicle speed, braking torque, slip, and friction behavior.

---

## Files
- **Simulation assignment-2.pdf** – Problem statement, equations, block diagrams, and simulation tasks.
- **Models/** – Simulink models for the *Vehicle*, *Wheel*, *Slip*, *Friction* (μ–λ), and *ABS Controller* subsystems.
- **Scripts/** – MATLAB files for parameters, runs, and plotting (e.g., `parameters.m`, `simulate_abs.m`, `plot_results.m`).
- **Results/** – Generated plots for μ–λ curves and time histories (torque, slip, speeds, distance).

---

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

---

## Parameters (excerpt)
- mv = 1400 kg, Jw = 0.01 kg·m², rw = 0.32 m, g = 9.8 m/s²
- v0 = 33.33 m/s, vmin = 1.5 m/s, K = 1000, T = 0.05 s, Tb,max = 2000 Nm
- Road types: **Dry**, **Wet**, **Snow**, **Ice** with (c1, c2, c3) per the μ–λ table.

---

## Expected Outputs
- **Plots:** μ–λ curves (by road), Tb(t), s(t), μ(t), v(t), ωw(t), and distance.
- **Comparison:** ABS vs. no-ABS stopping behavior and stability across surfaces.

---

## Requirements
- **Software:** MATLAB R2022b (or later) with **Simulink**.

---

## Author
**Shahnaz Pourbarghi Sofiyani**
Student ID: 400100876
