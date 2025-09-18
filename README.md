# Week 3 – Z-Transform (MATLAB Practice)

## Task 1 – MATLAB Programming

### A1 – Finite Sequences → Polynomials

**(i)** \(x[n] = \{1, 2, 5\}\), en \(n=0,1,2\):

\[
X(z) = 1 + 2z^{-1} + 5z^{-2}
\]

**(ii)** \(x[n] = \{0, 3, 0, 4\}\), en \(n=0,1,2,3\):

\[
X(z) = 3z^{-1} + 4z^{-3}
\]

✅ Finite sequences always converge → ROC = todo el plano-Z excepto posibles \(z=0, \infty\).

---

### A2 – Infinite Sequences & ROC

**(a)** \(x[n] = (0.6)^n u[n]\):

\[
X(z) = \frac{1}{1 - 0.6z^{-1}}, \quad \text{ROC: } |z| > 0.6
\]

**(b)** \(x[n] = (-0.8)^n u[n]\):

\[
X(z) = \frac{1}{1 + 0.8z^{-1}}, \quad \text{ROC: } |z| > 0.8
\]

**(c)** \(x[n] = -(0.9)^n u[-n-1]\):

\[
X(z) = \frac{-1}{1 - 0.9z}, \quad \text{ROC: } |z| < 0.9
\]

📌 **Reflexión:** La ROC siempre depende de los **polos** y determina para qué valores de \(|z|\) la suma converge. Polos marcan las fronteras de la ROC.

---

### A3 – Properties: Linearity & Shifting

**Linearity:**  
\[
Z\{2x_1[n] - 3x_2[n]\} = 2\frac{1}{1 - 0.5z^{-1}} - 3\frac{1}{1 + 0.5z^{-1}}
\]

**Shifting:**  
\[
Z\{x_1[n-3]\} = z^{-3} \cdot \frac{1}{1 - 0.5z^{-1}}
\]

✅ Verificado con MATLAB `ztrans`.

---

### A4 – Inverse Z-Transform

**(a)**  
\[
X(z) = \frac{1}{1 - 0.7z^{-1}} \quad \Rightarrow \quad x[n] = (0.7)^n u[n]
\]

**(b)**  
\[
X(z) = \frac{1 - 0.5z^{-1}}{1 - 0.8z^{-1}} 
\]

MATLAB da como resultado una combinación de secuencias geométricas →  
\[
x[n] = (0.8)^n u[n] - 0.5(0.8)^{n-1} u[n-1]
\]

---

### A5 – H(z), Poles/Zeros & Frequency Response

Dado:
\[
H(z) = \frac{1 - 2.4z^{-1} + 2.88z^{-2}}{1 - 0.8z^{-1} + 0.64z^{-2}}
\]

**(a) Pole-Zero Plot:**
- Ceros: soluciones del numerador.  
- Polos: soluciones del denominador.  

*(Insertar aquí captura `zplane`)*

**(b) Magnitude & Phase Response:**

*(Insertar aquí captura `freqz` con 512 puntos)*

**(c) Tipo de filtro:**
El diagrama muestra que:
- La magnitud es alta en bajas frecuencias y cae en altas.  
- Los polos están cerca de la circunferencia unitaria en bajas frecuencias.  
👉 El filtro se comporta como **low-pass filter**.  

---

## Task 2 – GitHub Submission

- Código MATLAB subido a este repositorio (`.m` files).  
- Este README.md incluye fórmulas y explicaciones.  
- Capturas añadidas en carpeta `/figures`.  

---

## Task 3 – Technical Blog (Optional)

Blog post publicado en Medium / Dev.to (opcional).  
Incluye explicación intuitiva del Z-transform, ejemplos en MATLAB y reflexiones sobre ROC, polos y ceros.  
👉 *(Si lo haces, añade aquí el link al post)*  

---

## Reflexiones Finales

- Las secuencias finitas siempre producen polinomios fáciles de manejar.  
- La ROC es esencial para distinguir entre secuencias causales y anticausales.  
- Polos y ceros explican la estabilidad y el tipo de filtro.  
- MATLAB permite verificar fórmulas y visualizar filtros en segundos.  

