# Investigación: microlanzadores (prioridad) + motores cohete líquidos

**Regla de esta nota:** todo dato lleva fuente. Si no encontré dato primario, lo digo. "p." = página del PDF (no la impresa) salvo que se indique otra cosa.

Manuales descargados (en el escritorio de trabajo de la sesión, carpeta `scratchpad/manuals/`):
- `electron_payload_guide_7.pdf` – Rocket Lab, Electron Payload User Guide v7.0 (72 pp.) – https://rocketlabcorp.com/assets/Electron-Payload-User-Guide-7.0-v6.pdf
- `firefly_alpha_pug_5.3.pdf` – Firefly, Alpha Payload User's Guide 5.3 (38 pp.) – https://fireflyspace.com/wp-content/uploads/2026/09/Alpha-PUG-5.3-1.pdf
- `isar_spectrum_press_kit.pdf` – Isar Aerospace, Press Kit "Going Full Spectrum" (6 pp.) – https://isaraerospace.com/images/Isar-Aerospace-F1-Going-Full-Spectrum-Press-Kit.pdf
- `vega_c_manual_iss0.pdf` – Avio/ArianeGroup, Vega C User's Manual Iss.0 Rev.0 (118 pp.) – https://www.ariane.group/app/uploads/sites/4/2024/10/Vega-C-users-manual-Issue-0-Revision-0-1.pdf
- `ariane6_manual_iss2.pdf` – Arianespace, Ariane 6 User's Manual Iss.2 Rev.0 (171 pp.) – https://www.ariane.group/app/uploads/sites/4/2024/10/Mua-6_Issue-2_Revision-0_March-2021.pdf
- `falcon_user_guide_2025.pdf` – SpaceX, Falcon Payload User's Guide 2025-05-09 (128 pp.) – https://content.spacex.com/cms-assets/assets/falcon-users-guide-2025-05-09.pdf
- `saturn_v_sa504.pdf` – NASA, Saturn V Flight Manual SA-504 (257 pp.) – https://www.ibiblio.org/apollo/Documents/Saturn_V_Flight_Manual_SA_504.pdf

---

## A. Microlanzadores – datos de etapas y motores

### A1. Electron (Rocket Lab, EE. UU.)
| Dato | Valor | Fuente exacta |
|---|---|---|
| Masa de despegue | 13 000 kg | Electron Payload UG v7.0, **p.12** (tabla "Overview") |
| Carga útil nominal | 200 kg a 500 km SSO | Mismo doc., **p.12** |
| Etapa 1: motores | 9× Rutherford (nivel del mar), 5 600 lbf (24 kN) c/u, **Isp 311 s** | **p.12** (tabla) y **p.13** (texto) |
| Etapa 2: motor | 1× Rutherford vacío, 5 800 lbf, **Isp 343 s** | **p.12** y **p.13** |
| Etapa 2: propelente | "approximately 2,000 kg" (LOX/queroseno) | **p.13** |
| Etapa 2: duración de quemado | ~5 min | **p.13** |
| Kick stage (opcional): masa seca | 40 kg | **p.18** |
| Estructura | Monocasco de fibra de carbono | **p.12** |
| Masa de propelente etapa 1 | **No aparece en la guía de payload** | – |
| Coeficiente estructural ε | **No calculable con fuentes primarias** (falta masa seca de ambas etapas) | – |

Dato del propio documento: el Rutherford usa **ciclo de bombas eléctricas** (motores brushless alimentados con baterías de litio-polímero) – p.13.

### A2. Firefly Alpha (EE. UU.)
| Dato | Valor | Fuente exacta |
|---|---|---|
| GLOW (masa bruta de despegue) | 54 120 kg | Alpha PUG 5.3, **p.5** (tabla "Architecture") |
| Carga útil LEO 300 km | 1 030 kg | Alpha PUG, **p.5** |
| Nº de etapas | 2 | **p.5** |
| Longitud total | 29,48 m; diámetro máx. 2,2 m | **p.5** |
| Estructura | 100 % composite (fibra de carbono) | **p.5** y **p.4** |
| Etapa 1: motores | 4× Reaver, **Isp 296 s (vac)**, empuje total 836,3 kN (vac) | **p.6** (figura) y **p.5** |
| Etapa 2: motor | 1× Lightning, **Isp 322 s (vac)**, 73,0 kN (vac), ciclo *tap-off* | **p.6** y **p.5** |
| Propelente | LOX / RP-1 en las dos etapas | **p.5** |
| Longitud etapa 1 / etapa 2 | 18,9 m / 5,37 m (carga útil 5,21 m) | **p.6** (figura) |
| Masas de etapa (propelente, seca) | **No aparecen en el PUG** | – |

Dato: los motores usan *tap-off cycle* (sin preburner), según la propia Firefly (p.5).

### A3. Isar Aerospace Spectrum (Alemania)
| Dato | Valor | Fuente exacta |
|---|---|---|
| Longitud / diámetro | 28 m / 2 m | Press kit, **p.3** |
| Material | Compuesto de carbono | **p.3** |
| Propelentes | LOX + propano (LC3H8), "clean burning" | **p.3** |
| Carga útil | 1 000 kg LEO; 700 kg SSO | **p.3** |
| Etapa 1 | 9× Aquila, 75 kN c/u | **p.3** |
| Etapa 2 | 1× Aquila vacío, 95 kN | **p.3** |
| Isp Aquila | **No publicado en el press kit** (solo en Wikipedia sin cifra) | – |
| Masas / propelente por etapa | **No publicados** (la guía de usuario es "on request" según isaraerospace.com/spectrum) | – |

Nota de acceso: el manual de usuario de Spectrum se pide por formulario; no lo he podido descargar.

### A4. PLD Space MIURA 5 (España)
| Dato | Valor | Fuente |
|---|---|---|
| Empuje por motor TEPREL-C (SL) | 190 kN; 5 motores en la primera etapa | PLD Space, nota de prensa "accelerates testing of TEPREL-C…" – https://www.pldspace.com/en/news/pld-space-accelerates-the-testing-phase-of-the-teprel-c-engines-for-its-miura-5-launcher.html y https://www.pldspace.com/en/miura-5.html |
| Principio | Motor de **ondas explosivas continuas** (no es un motor de propulsión líquida convencional) | Facebook oficial PLD (post sobre TEPREL-C): **no es fuente de calidad**; la fuente técnica citable es la web oficial, pero no detalla el ciclo |
| Manual de usuario | Solo se entrega a candidatos del programa SPARK (SpaceNews) | https://spacenews.com/miura-5-spark-programme-presented-by-pld-space-offering-free-access-to-first-two-miura-5-flights-to-promote-space-innovation/ |
| Masas / Isp | **No verificados en fuente primaria** | – |

**Aviso:** el texto que aparece en la web de PLD y en algunas fuentes dice que la primera etapa es "liquid-propelled" y reutilizable (nextspaceflight.com). Hay que contrastarlo con PLD antes de citarlo.

### A5. Vega-C (Avio / ESA, Italia-Europa) – sí es "micro/small", útil como comparación
Fuentes primarias: ESA y manual oficial.

| Etapa | Dato | Fuente |
|---|---|---|
| P120C (1ª) | Propelente **143,6 t**; estructura monolítica de fibra de carbono **≈ 8 000 kg**; empuje medio 4 500 kN | ESA, "Vega-C", sección *Vega-C elements*: https://www.esa.int/articles/about-us/directorates/space-transportation/vega/vega-c |
| Zefiro-40 (2ª) | Propelente **36,2 t**; empuje medio 1 304 kN | ESA, misma página |
| Zefiro-9 (3ª) | Propelente **10 t** | ESA, misma página |
| AVUM+ (4ª) | Propelente **740 kg**; empuje medio 2,42 kN | ESA, misma página |
| Masa total | 210 t en plataforma | ESA, "Vega-C liftoff" (misma página) |
| Masas secas Z40, Z9, AVUM+ | **No aparecen en ESA** | – |
| Manual de usuario (Iss.0) | Extraído, pero **sin tabla de masas de etapa** en el texto que he revisado (solo listados de acrónimos y procedimientos de trayectoria, p.35–37) | `vega_c_manual_iss0.pdf` |

**Coeficiente estructural calculado con datos primarios (ESA):**
- P120C: ε = 8 000 / (8 000 + 143 600) ≈ **5,3 %** (la ESA dice "about 8000 kg").
- Cifras secundarias (Wikipedia, que cita el manual de Vega-C): Z40 vacío 3 230 kg con 36 239 kg de propelente → ε ≈ 8,2 %; Z9 vacío 695 kg con 10 567 kg → ε ≈ 6,2 %. **Sin verificar en el manual.** Además Wikipedia da 11 200 kg vacío para P120C, que no cuadra con los 8 000 kg de la ESA. Hay que decidir cuál usar y citarlo.

### A6. Ariane 6 (referencia, no micro, pero comparte motor P120C)
| Dato | Valor | Fuente |
|---|---|---|
| P120C (booster) | 142 000 kg propelente; 130 s; 3 500 kN | ESA, "The engines of Ariane 6": https://www.esa.int/articles/about-us/directorates/space-transportation/ariane/the-engines-of-ariane-6 |
| Vulcain 2.1 | >1 370 kN vacío; 468 s de operación; consumo ≈327 kg/s; 154 000 kg de LOX+LH2 consumidos | Misma ESA |
| Vinci | 180 kN; 30 000 kg consumidos; 900 s acumulados | Misma ESA |
| Masas de etapa LLPM / ULPM (propelente y vacío) | Manual Iss.2 (`ariane6_manual_iss2.pdf`) no lo he extraído todavía: **pendiente** | – |

**Contradicción detectada:** Wikipedia (EN) da 1 324 kN para el Vulcain 2.1 en vacío; ESA dice >1 370 kN. Uso ESA.

### A7. Falcon 9 (referencia)
| Dato | Valor | Fuente |
|---|---|---|
| Etapa 1 | 9× Merlin 1D, **845 kN SL por motor** | Falcon User's Guide, **p.18** |
| Etapa 2 | 1× Merlin Vacuum; quemado nominal 354 s (etapa 2) y 170 s (etapa 1) | Falcon User's Guide, tabla "2.1 Falcon 9 Launch Vehicles" (sección 2, **página exacta pendiente de verificar**, aprox. p.9–10) |
| Material | Aleación Al-Li en ambas etapas | Misma tabla (misma verificación pendiente) |
| Masas / propelente | **No están en la guía** | – |

Isp del Merlin 1D: **311 s vacío / 282 s SL** – fuente Wikipedia EN ("SpaceX Merlin", ref. a la web de SpaceX). No está en la guía de usuario que he extraído: **marcar como secundario**.

### A8. Saturn V (referencia histórica, ya tenemos datos de la asignatura)
El manual de vuelo SA-504 (257 pp.) está descargado. No he extraído aún las tablas de masa por etapa. Los datos de la presentación del profesor (slide 31) son de la misma familia: ε 6,23 % (S-IC), 8,42 % (S-II), 11,72 % (S-IVB). **Pendiente** localizar esas tablas en el manual para citar página.

---

## B. Motores cohete líquidos

Tabla resumen (solo datos con fuente que he visto):

| Motor | Vehículo | Propelente | Empuje | Isp | Fuente exacta |
|---|---|---|---|---|---|
| Rutherford (SL) | Electron, 1ª etapa | LOX/RP-1 | 24 kN (5 600 lbf) | 311 s | Electron UG v7.0, p.12–13 |
| Rutherford (vac) | Electron, 2ª etapa | LOX/RP-1 | 5 800 lbf | 343 s | Electron UG v7.0, p.12–13 |
| Reaver | Alpha, 1ª etapa (×4) | LOX/RP-1 | 836,3 kN total (vac) | 296 s (vac) | Alpha PUG 5.3, p.5–6 |
| Lightning | Alpha, 2ª etapa | LOX/RP-1 | 73,0 kN (vac) | 322 s (vac) | Alpha PUG 5.3, p.5–6 |
| Aquila | Spectrum, 1ª (×9) y 2ª | LOX/propano (C3H8) | 75 kN (SL) / 95 kN (vac) | No publicado | Isar press kit, p.3 |
| TEPREL-C | MIURA 5, 1ª etapa (×5) | No publicado en fuente primaria | 190 kN SL c/u | No publicado | PLD Space (web oficial) |
| Merlin 1D (SL) | Falcon 9, 1ª etapa (×9) | LOX/RP-1 | 845 kN | 282 s (SL) | Falcon UG p.18 (empuje); Isp: **Wikipedia (secundario)** |
| Merlin 1D (vac) | Falcon 9 | LOX/RP-1 | – | 311 s | **Wikipedia (secundario)**, cita SpaceX |
| Merlin Vacuum | Falcon 9, 2ª etapa | LOX/RP-1 | 981 kN (vac, según Wikipedia/SpaceX) | 311 s | Secundario |
| Vulcain 2.1 | Ariane 6, LLPM | LOX/LH2 | >1 370 kN (vac) | No verificado | ESA (empuje, 468 s) |
| Vinci | Ariane 6, ULPM | LOX/LH2 | 180 kN | No verificado | ESA |

### B1. Isp por combinación de propelentes (referencia de texto)
Fuente: libro de texto abierto Embry-Riddle, "Introduction to Aerospace Flight Vehicles", capítulo "Rocket Engines": https://eaglepubs.erau.edu/introductiontoaerospaceflightvehicles/chapter/rocket-engines/
- H2/O2: 445 s
- RP-1/O2 (keroseno/LOX): 295 s
- CH4/O2 (metano/LOX): 320 s
- H2O2 (monopropelente): 160 s

Este texto da valores aproximados, no motores concretos. Úsalo para contexto.

Segunda tabla (texto de referencia, valores teóricos máximos): Braeunig, "Basics of Space Flight: Rocket Propellants": http://www.braeunig.us/space/propel.htm – queroseno 289/294 s, LOX/LH2 etc. **Es una web de divulgación, no un libro de texto.** Para citar en el trabajo, usar Sutton & Biblarz, *Rocket Propulsion Elements* (ed. 8, Wiley 2010), tabla de propelentes líquidos (cap. 7). **Esta tabla no la he leído directamente todavía.**

### B2. Ventajas / desventajas (de las fuentes leídas)
- **Electron/Rutherford:** bombas eléctricas, "simpler to build than a traditional engine" pero "90 % eficiencia" (Electron UG p.13: afirmación de Rocket Lab, no independiente). Ventaja: no hay turbomaquinaria de gas generador.
- **Alpha/tap-off:** elimina preburners y componentes extra, "reduced engine mass" (Alpha PUG p.5). Afirmación del fabricante.
- **Vulcain 2.1 (ESA):** 15 MW de turbobomba; hidrógeno a −253 °C; el encendido se hace desde la plataforma para ahorrar masa (ESA, "The engines of Ariane 6").
- **Vinci (ESA):** reencendible hasta 4 veces; necesita un motor auxiliar para presurizar en microgravedad.
- **Falcon Merlin (Falcon UG p.15–16):** producción en serie de 10 motores por lanzamiento; el MVac usa tobera fija (sin partes móviles).

---

## C. Lo que NO he conseguido (honestidad)
1. **Masas de etapas** (propelente y estructura) de Electron, Alpha, Spectrum y MIURA 5 → no están en las guías públicas que he descargado.
2. **Isp de Aquila, TEPREL-C, Vulcain 2.1 (primario), Vinci** → sin fuente primaria extraída.
3. **Motores RL10, Raptor, RD-180, NK-33, LE-5, etc.** → no investigados todavía.
4. **Ariane 6 manual** → descargado, sin extraer tablas de masa.
5. **Saturn V tablas por etapa** → descargado (257 pp.), sin localizar página exacta.
6. **Sutton & Biblarz** → no leído; el texto del libro no es descargable aquí.

## D. Próximos pasos propuestos
- Extraer tablas de masa del Ariane 6 manual y del Saturn V manual (páginas exactas).
- Pedir acceso al manual de Isar Spectrum y al de PLD MIURA 5 (ambos de acceso restringido), o usar fuentes de terceros verificadas.
- Investigar motores faltantes con un documento de referencia: NASA NTRS (`ntrs.nasa.gov`) o Sutton.
- Decidir fuente de referencia para P120C (8 000 kg ESA vs 11 200 kg Wikipedia).

---

## E. Structural efficiency ε = M_s / (M_s + M_p) por etapa

Fórmula (la misma que usa la asignatura, slides U2 p.6): ε = masa estructural / (masa estructural + propelente) = masa seca / masa en lleno.
Si solo hay masa total y payload: M_s,total = M0 − M_pl − M_p,total. Eso da un ε global, no por etapa.

### E1. Saturn V — datos PRIMARIOS (NASA, Saturn V Flight Manual SA-504, MSFC-MAN-504)
Fuente local: `scratchpad/manuals/saturn_v_sa504.pdf`. Original: https://www.ibiblio.org/apollo/Documents/Saturn_V_Flight_Manual_SA_504.pdf
- Pesos de etapa (dry y "at launch"): **Figura 1-3, p.17**.
- Peso seco S-IC 294 500 lb y total al encendido 5 030 500 lb: **p.17** y **p.60**.
- Peso seco S-II 84 750 lb (94 667 con interetapa S-IC/S-II), peso bruto 1 049 482 lb: **p.86** y **p.17**.
- Peso seco S-IVB 33 450 lb, al lanzamiento 257 930 lb: **p.17**.
- Propelente: **Figura 2-12** (S-IC, p.36: LOX 3 306 571 lb + RP-1 1 424 531 lb, total), **Figura 2-13** (S-II, p.36: LOX 825 722 + LH2 157 768 lb), **Figura 2-14** (S-IVB, p.36: LOX 185 888 usable + LH2 37 249 usable lb).

| Etapa | M_s (kg) | M_p (kg) | ε | Nota |
|---|---|---|---|---|
| S-IC | 133 583 | 2 145 992 | **5,86 %** | M_s = seco; wet = 5 030 500 lb |
| S-II | 38 442 | 446 104 | **7,93 %** (8,08 % usando peso al lanzamiento) | Propelente + seco no cuadra con el peso al lanzamiento (dif. 1,8 %): diferencia documentada en el manual |
| S-IVB | 15 173 | 101 213 | **13,04 %** (12,97 % usando peso al lanzamiento) | Propelente usable |

Comparación con las slides del profesor (p.31, Saturn V): ε = 6,23 % / 8,42 % / 11,72 %. Las masas de la slide (en kg) no coinciden con el manual: S-IC seco 142 113 kg (slide) frente a 133 583 kg (manual); S-IVB seco 13 961 kg (slide) frente a 15 173 kg (manual). **Hay que citar las dos y decir cuál usas.**

### E2. Vega-C — dos fuentes que no coinciden
**Primario (ESA, https://www.esa.int/articles/about-us/directorates/space-transportation/vega/vega-c):**
- P120C: propelente 143,6 t; estructura "about 8000 kg" → **ε ≈ 5,3 %**.
- Z40: propelente 36,2 t (sin masa seca). Z9: 10 t (sin masa seca). AVUM+: 740 kg (sin masa seca).

**Secundario (Wikipedia EN, "Vega C", tabla de etapas, con masas "gross" y "propellant mass" que cita el manual de Vega-C; el manual Iss.0 que tengo NO contiene estas cifras):**
- P120C: bruto 155 027 kg − prop 141 634 kg = 13 393 kg → ε ≈ **8,6 %**.
- Z40: bruto 40 477 − prop 36 239 = 4 238 kg → ε ≈ **10,5 %**.
- Z9: bruto 12 000 − prop 10 567 = 1 433 kg → ε ≈ **11,9 %**.
- AVUM+: bruto 1 436 − prop 740 = 696 kg → ε ≈ 48 % (resultado no creíble; el "bruto" del AVUM+ probablemente no es solo la etapa).
- Infobox de Wikipedia da además "Empty mass": P120C 11 200 kg, Z40 3 230 kg, Z9 695 kg (no coincide con bruto − prop).

**Conclusión:** para P120C tenemos 5,3 % (ESA) frente a 8,6 % (Wikipedia). Hay que elegir y justificar.

### E3. Falcon 9 — solo secundario
- Wikipedia EN (infobox "Falcon 9", que cita documentación de SpaceX): 1ª etapa seca 25 600 kg, propelente 395 700 kg → ε ≈ **6,1 %**. 2ª etapa seca 3 900 kg, propelente 92 670 kg → ε ≈ **4,0 %**.
- **No aparece en la Falcon Payload User's Guide 2025** (la he buscado en el texto extraído; solo hay empuje, Isp de referencia y tiempos de quemado).
- Fuente a verificar: el "SpaceX Falcon 9 Launch Vehicle Payload User's Guide" de 2009 / Rev 2.0 citado en Wikipedia (no descargado).

### E4. Ariane 6 — solo secundario y ESA para propelente
- ESA (https://www.esa.int/articles/about-us/directorates/space-transportation/ariane/the-engines-of-ariane-6): P120C 142 000 kg propelente; Vulcain 2.1 consume 154 000 kg; Vinci consume 30 000 kg.
- Wikipedia EN "Ariane 6" (infobox, cita el Ariane 6 User's Manual Iss.2 Rev.0): ULPM seca 6 000 kg, propelente 32 000 kg → ε ≈ **15,8 %**. LLPM: propelente 140 000 kg; masa seca no dada en la infobox.
- **Ni la cifra de 6 000 kg ni la de 32 000 kg aparecen en el texto del Ariane 6 manual Iss.2 que he extraído** (busqué "32 000", "6 000 kg", "140 000", "11 200"): **no verificado en primario.**

### E5. Microlanzadores — NO hay masas por etapa en fuentes primarias
- **Electron:** masa al despegue 13 000 kg; propelente 2ª etapa ~2 000 kg (Electron UG p.13); kick stage seca 40 kg (p.18). **No hay masa seca de etapa ni propelente de la 1ª etapa** en la guía. Gunter's Space Page tampoco las da (solo "Stage 1 / 9× Rutherford"). Con ε_2 necesitaría la masa seca de la 2ª etapa, que no aparece.
- **Alpha:** GLOW 54 120 kg y carga 1 030 kg (PUG p.5) → M0 − M_pl = 53 090 kg = M_s,total + M_p,total. **Sin reparto por etapa no hay ε.**
- **Spectrum:** 1 000 kg LEO (press kit p.3). Sin masas de etapa en el press kit ni en Gunter's.
- **MIURA 5:** sin masas en fuentes públicas (Gunter's: sin datos de masa).

### E6. Qué me falta para tener ε en todos
1. Electron: masa seca 1ª y 2ª etapa. Posibles fuentes: UPC thesis (`upcommons` PDF, descargado; solo dice "2 tons of propellant" para la 2ª etapa, sin masa seca); papers académicos de Rocket Lab; entrevistas; NASA NTRS. → **pendiente**.
2. Alpha: masa de propelente y seca por etapa. Revisar Firefly PUG p.5–6 otra vez (no hay); posible fuente académica (Smallsat conference 2016/2018 "Firefly Alpha" papers, citado en USU digital commons; descargable).
3. Spectrum y MIURA 5: sin fuentes públicas. Solo estimaciones (justificar).
4. Verificación de Falcon 9 y Ariane 6 en primario: descargar el Falcon User's Guide 2009 (archive.org) y el Ariane 6 Iss.2 con tablas de masa (no encontradas en el texto extraído).

### E7. Resumen de ε con fuente y nivel de confianza
| Lanzador / etapa | ε | Fuente | Confianza |
|---|---|---|---|
| Saturn V S-IC | 5,86 % | NASA MSFC-MAN-504 (p.17, p.36) | Alta (primario) |
| Saturn V S-II | 7,9–8,1 % | NASA MSFC-MAN-504 (p.17, p.36) | Alta, con discrepancia interna |
| Saturn V S-IVB | 13,0 % | NASA MSFC-MAN-504 (p.17, p.36) | Alta |
| Vega-C P120C | 5,3 % | ESA (web) | Media-alta (primario, pero "about 8 000 kg") |
| Vega-C P120C | 8,6 % | Wikipedia (bruto − prop) | Baja |
| Vega-C Z40 / Z9 | 10,5 % / 11,9 % | Wikipedia (bruto − prop) | Baja |
| Falcon 9 S1 / S2 | 6,1 % / 4,0 % | Wikipedia (cita SpaceX) | Baja (no en la guía) |
| Ariane 6 ULPM | 15,8 % | Wikipedia (cita manual Iss.2, no encontrado) | Baja |
| Electron, Alpha, Spectrum, MIURA 5 | — | Sin datos públicos | — |

---

## F. Lanzadores enteros: ε_total = (M0 − M_pl − M_p,total) / (M0 − M_pl)

| Lanzador | M0 (kg) | M_pl (kg) | M_p,total (kg) | M_s,total (kg) | ε_total | Fuentes |
|---|---|---|---|---|---|---|
| **Vega-C** | 210 000 | 3 300 (LEO) | 190 540 (143 600 + 36 200 + 10 000 + 740) | 16 160 | **≈ 7,8 %** | M0: ESA "weighs 210 tonnes on the launch pad"; 3,3 t a LEO; propelentes: ESA (página Vega-C). Fuente primaria |
| **Falcon 9** | 549 054 | 22 800 (LEO, expendable) | 488 370 (395 700 + 92 670) | 37 884 | **≈ 7,2 %** | M0 y LEO: spacex.com/vehicles/falcon-9 (primario). Propelentes: Wikipedia (cita SpaceX). Diferencia de ~8 t sin asignar (carenado, interetapa, residuos). Secundario en propelentes |
| **Alpha** | 54 120 | 1 030 (LEO 300 km) | no publicado | — | — | Alpha PUG 5.3, p.5. Sin propelente total |
| **Electron** | 13 000 | 200 (nominal SSO 500 km) / 300 (LEO) | solo 2.ª etapa ≈ 2 000 | — | — | Electron UG v7.0, p.12–13. Sin propelente total |
| **Spectrum** | — | 1 000 (LEO) | no publicado | — | — | Press kit Isar, p.3 |
| **Saturn V** | 6 342 000 lb (≈2 877 000 kg; slide 31 da 2 877 279 kg) | 45 685 kg (slide 31) | ≈ 2 693 000 kg (suma de los tres propelentes del manual) | — | no calculable de forma consistente | NASA MSFC-MAN-504 p.17, p.36. Los pesos de seco + propelente del manual superan el bruto en ~12 000 lb, así que no cuadra |

**Notas:**
- Vega-C es el caso más limpio: primario y con propelentes que cuadran con el peso al despegue.
- Falcon 9 necesita las cifras de propelente de Wikipedia; el resultado es orientativo.
- Para Electron, Alpha y Spectrum falta el propelente total. Sin él, el ε_total no sale. Con datos públicos no se puede; habría que estimarlo y declararlo como estimación.
