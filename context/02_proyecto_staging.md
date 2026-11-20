# Proyecto / Assignment: Staging (LAB1)

Fuente: `LAB1/Staging Assignment.pdf` (1 pág.) + audios (`Recording 2` raíz, `02_.../Recording 2`, `Recording 4`, `Recording 5`).

## Enunciado (PDF)
Calcular el **GLOM (gross mass at lift-off) mínimo** de un cohete de **2 etapas** para llegar a una órbita circular:
1. Investigar brevemente una **altura LEO** que usen clientes y una **capacidad de payload**.
2. Asumir conocidas las **velocidades de escape (c_i = Isp·g0) y coeficientes estructurales (ε_i)** de ambas etapas.
3. Resolver el **Staging Problem** para minimizar el GLOM (**Design Problem**).
Esquema: entradas ΔV_TOT, m_pay, ε_i, c_i → bloque *Design Problem* → salidas Λ_i, λ_i, m_01.

## Lo que añade el profesor en audio
- Este es "el primer lab". La parte 1 (ésta) es fácil; **hay una segunda parte más larga** (llegará después, "te daré exactamente el ejercicio"; lo que dice sobre trayectoria/ΔV real es el lazo iterativo, ver abajo).
- Libertad: puedes usar **2 o 3 etapas, "tantas como quieras"**; recomienda probar con 1 etapa para ver lo pesado que queda, y hacer un trade-off complejidad vs. rendimiento.
- Busca valores **realistas** de Isp y ε (puedes poner lo que quieras pero justificado). Elige tú altura y masa de payload.
- **Justifica y motiva tu solución**: no hace falta explicar cada paso de la fórmula, pero demuestra que sabes lo que haces.
- Entrega: "para el final de la semana". Grupos: avisar al profesor con los grupos hechos (se recomienda en persona/grupo; también individual posible). El profesor abrirá un Excel para apuntar grupos. **Fecha/formato exacto de entrega no está en el audio** → confirmar.
- Usar **MATLAB `fzero`** para el multiplicador de Lagrange.

## Método (Design Problem)
Datos: ΔV_mission, m_pl, N, c_i = Isp_i·g0, ε_i.
ΔV_mission = v_circular(h) + pérdidas (≈1.5–2 km/s en LEO), con v_c = √(μ/(R_E+h)).

Minimizar  ln(M0/m_pl) = −Σ ln λ_i = Σ ln[ (1−ε_i)Λ_i / (1−ε_iΛ_i) ]  (equivale a maximizar λ_tot = Πλ_i), con
- λ_i = (1 − ε_iΛ_i) / ((1 − ε_i)Λ_i)   (payload ratio por etapa)
- Restricción: Σ c_i ln Λ_i = ΔV_mission
- Lagrange ⇒ **Λ_i = (p c_i − 1) / (ε_i p c_i)**
- Sustituyendo en la restricción: **Σ c_i ln[(p c_i − 1)/(ε_i p c_i)] = ΔV** → ecuación no lineal en p (resolver con `fzero`).
- Guess inicial (etapas idénticas, mismo ΔV): **p₀ = 1 / ( c (1 − ε e^{ΔV/(N c)}) )**
- Comprobar que es mínimo (segunda derivada > 0).
- Después: Λ_i → λ_i → λ_tot = Πλ_i → **M0 = m_pl/λ_tot**; masa por etapa M0i = (Πλ de las siguientes)…; propelente M_pi = M0i(1−1/Λ_i); ΔV_i = c_i ln Λ_i.

(Relaciones útiles: φ=(1−ε)(1−λ); Λ=1/(1−φ)=1/(ε(1−λ)+λ); ΔV_max = −g0 Isp ln ε.)

## Lazo completo de ingeniería (idea del profesor, Rec.4)
h → ΔV aprox (7 + 2 km/s) → staging → M0 → análisis de trayectoria (U5/futuro) → ΔV real (p.ej. 11 km/s) → ¿factible? No → subir ΔV, redimensionar, repetir.

## Verificación hecha (Python, no es tu entrega)
Con los datos de la slide (ΔV=9700 m/s, m_pl=1500 kg, Isp 400/430 s, ε 10 %/13 %):
- Λ = [3.546, 3.074], λ = [0.2023, 0.2245], ΔV_i = [4965, 4735] m/s ✔ (coincide con slide)
- **GLOM ≈ 33.0 t** (slide: 32 986 kg ✔). 1 etapa (ε=8 %): ≈ 317 t (slide: 312 t) → ~10× más pesado.

## Ideas para la entrega
1. Elegir caso: p.ej. LEO 500 km SSO/polar, payload (la slide de U1 usa 1500 kg; micro-launcher 10–25 kg a 200–300 km también aparece en U1).
2. Justificar Isp/ε con referencias (Falcon 9, Electron, Vega…; Saturn V: ε 6–12 %).
3. Implementar `staging.m` (función `f(p)` + `fzero`), tabla por etapa, comparar N=1,2,3.
4. Análisis de sensibilidad (ε₂ pesa más que ε₁; ΔV, payload) y comentar ΔV_max como chequeo de viabilidad.
