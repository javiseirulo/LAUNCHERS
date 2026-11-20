# Teoría por unidades

## U1 – Requisitos
- Requisito = enunciado inequívoco, verificable, medible y necesario. Características: verificable, necesario ("nice to have" no es requisito), único, positivo, objetivo, comprensible, conciso, trazable.
- Dominio del problema (stakeholder) vs dominio de la solución (sistema). Error típico: el requisito ya dicta la solución.
- Caso **X-34 / FASTRAC**: el motor se entregó como GFE "use-as-is"; los requisitos del vehículo (lanzamiento horizontal) no fluyeron al motor (probado en vertical) → nunca voló con motor. Lección: flujo de requisitos y responsabilidad.
- Requisitos de misión (órbita, masa, precio, precisión, cadencia, base) → concepto (nº etapas, Isp, ε, límite de aceleración) → ΔV requerido, staging, distribución de masa.
- **Tsiolkovsky**: ΔV = g0·Isp·ln(m_i/m_f) (sin drag, sin gravedad, empuje en la velocidad).
- Vuelo real: ΔV_tot = v_f + ∫D/m dt + ∫g sinγ dt → pérdidas por drag y gravedad (+ presión). Ejemplo: grav 991, drag 509.6, presión 286.4 → 1787 m/s. Regla: ΔV_tot ≈ v_orbit + 1.5–2 km/s.
- 1 etapa vs 2 para 1500 kg y ΔV 9.7 km/s: 312 t vs 33 t (10×).

## U2 – Staging (la base del proyecto)
- Parámetros: λ=M_u/M0 (0.01–0.2), ε=M_s/(M_s+M_p) (0.08–0.5, menor=mejor), φ=M_p/M0 (0.5–0.9), Λ=M0/(M_u+M_s) (2–10).
- φ=(1−ε)(1−λ); Λ=1/(1−φ)=1/(ε(1−λ)+λ); λ=(1−εΛ)/((1−ε)Λ).
- ΔV = c ln Λ = −c ln[ε(1−λ)+λ]; ΔV_max = −c ln ε (λ→0), estimación de viabilidad.
- Multietapa: M0i = M_ui+M_si+M_pi, M_ui = M0,i+1; λ_tot=Πλ_i; ΔV_tot=Σc_i ln Λ_i.
- **Design problem** (minimizar GLOM dado ΔV y payload) vs **Performance problem** (dada M0, maximizar ΔV; solución en λ_i con ν: λ_i* = νε_i/((c_i−ν)(1−ε_i)); Σ ln λ_i = ln λ_tot).
- Casos analíticos: c_i constante (ν/(c−ν) = [λ_tot Π(1−ε_i)/Πε_i]^{1/N}), ε constante (λ_i=λ_tot^{1/N}, mismos ΔV).
- Con 2 etapas: mejorar ε₂ tiene mucho más impacto que ε₁ (por eso la 2ª etapa es la más optimizada).
- Más etapas = mejor en teoría, pero: choque de separación, coste de sistemas de separación, complejidad.
- Saturn V: ΔV por etapa 3386/4728/4197 m/s (28/38/34 %) → repartir ΔV en partes parecidas es buen guess.
- Annex: Lagrange: ∇f = −λ∇g; ejemplo f=x²+y², x+y=1 (solución x=y=½).

## U3 – Subsistemas (importante para examen)
- Segmento vuelo (estructura, propulsión, aviónica) y tierra (rango, TM/TC, integración, pad, GSE).
- Estructura: carga, perfil aerodinámico (↓ΔV_drag), contenedor de propelente, protección payload. Materiales: Al-Li (Falcon 9, Ariane 6), acero inox (Starship), CFRP (Electron, Vega-C casings, Spectrum). Cargas: QSL, vibración aleatoria, shock, acústica, térmico, tip-off.
- Propulsión: tobera (cámara ≈reposo → garganta Mach 1 → divergente supersónico); Isp líquido ≈300 s; tobera adaptada (p_e = p_atm).
- **Sólido**: simple, denso, estable, barato; bajo Isp, difícil de apagar/controlar ΔV, TVC con tobera flexible (±7°), 5 fases de empuje (alto → bajar por max-Q → subir → bajar → cola).
- **Líquido**: turbobomba+cámara+tobera+líneas; mayor Isp, throttling/reencendido, reutilizable, gimbal ±15°; complejo, criogénicos, sloshing, inestabilidad de combustión.
- Ciclos: presurizado (poco empuje), expander (<300 kN), gas-generator (abierto, simple, menos Isp), staged combustion (cerrado, alto Isp/empuje, más complejo; ORSC/FRSC). Rutherford: bombas eléctricas.
- Aviónica/GNC: INS (navegación) → OBC (guiado) → TVC (control). OBDH: adquisición, formateo, transmisión (GPS, encoder TM, transmisor, antenas S/L).
- Seguridad: FTS (tradicional vs **autónomo AFTS**; SpaceX desde 2017: hasta 48 lanzamientos/año, −50 % coste de range); Ariane 501 (1996).

## U4 – Lanzamiento desde el satélite (importante para examen)
- Cambio de mentalidad: eres el **LV Interface Systems Engineer** del propietario del satélite (SCO).
- Selección de LSP: geopolítica, disponibilidad, justificación técnica, coste, riesgo, sinergias. Flujo: **NDA → RFQ/RFP → BAFO → IRD → LSA → ICD**. RFQ = precio y info básica a varios LSP; RFP = lista corta, propuesta técnica completa; BAFO = última oferta; IRD = requisitos del SCO; LSA = contrato; **ICD prima sobre todo**.
- Modalidades: dedicado (más flexible y caro), main/lead passenger, secundario, rideshare (barato, menos control; CubeSats/constelaciones). Comparar solo propuestas de la misma modalidad.
- Requisitos LSP→S/C: distinguir lo estrictamente requerido (con prueba) de la info ambiental (pasa al equipo S/C).
  - Mecánicos: masa/CoM/inercia, usable volume, **frecuencia fundamental** (> la del LV; p.ej. 50 Hz long., 100 Hz transv.), **QSL** (carga estática equivalente, p.ej. ±5.8 g axial/±2.3 g lateral; test sinusoidal 5–10 ciclos), **vibración aleatoria** (PSD g²/Hz), **shock** (SRS; nunca a FM/PFM, solo a modelos estructurales), **power inhibit** (killing switch).
  - Térmicos (T(t) caliente/frío; TVAC suele cubrirlo), EMC/RF (emisividad; no transmitir hasta separación+2 min), despliegue (dirección, tip-off ≈1.5 °/s, PoC), propulsión (sin tanques impresos 3D en F9, MEOP en vibración, regla del 15 %, leak test), venteo (≤3.6 kPa/s), interfaz (POD vs separation ring + clampband, accommodation: main deck/tower/hexa, autonomía de baterías).
- Sin LSP decidido: usar **envolvente** de niveles. Si no cumples un requisito: RFD/RFW; si imposible, descartar LSP.
- Campaña: llegada/aclimatación → standalone ops (health check, llenado, baterías, leak check) → integración con kick stage → combined test → encapsulación → mating → FIST → **WDR** → lanzamiento.
- Selección: puntuación ponderada (geopolítica, disponibilidad, FMECA/riesgo, coste, técnico); riesgo alto con micro-lanzadores nuevos (plazos).

## U5 – Dinámica 6 DOF
- Simulación vs mundo real: dinámica/cinemática, navegación, guiado, control.
- Fuerzas: gravedad (hasta J2), drag, presión de tobera (empuje); sustentación/buoyancy normalmente despreciadas. T = ṁ Isp g0 + (p_e−p_a)A_e.
- Ecuaciones simples en inercial (mv̇ = T+G+D) pero las fuerzas viven en sistemas distintos: **local** (gravedad), **intrínseco** (drag, eje Z // velocidad relativa), **cuerpo** (empuje). α = ángulo de ataque, β = sideslip, γ = flight path angle.
- Ecuaciones en intrínsecas con coordenadas esféricas (Anexo A); con Tierra en reposo se simplifican.
- Rotación: T = I ω̇ + ω×Iω en ejes cuerpo; cinemática con Euler (roll/pitch/yaw) o **cuaterniones** (Q = cos(θ/2)+sin(θ/2)e).
- Efectos extra: **bending** (modos flexibles 5–100 Hz vs rígido 2–5 Hz; IMU en nodo de bending; filtros notch/LP en navegación y control; frecuencias cambian con el tiempo), **tail-wag-dog** (aceleración del gimbal → fuerza y par), **sloshing** (modelo péndulo), **masa/inercia variable** (pares extra).
- Ecuaciones modales: M q̈ + C q̇ + K q = F; sólo fuerzas TVC (puntuales, alta frecuencia) excitan bending; se consideran ~3 primeros modos.
- Guiado ignora slosh/bending; navegación los filtra; control los suprime.
