# LicenciasBA — Cenat y Cepat

Sitio estático con las páginas para generar y pagar boletas CENAT/CEPAT.

Contenido principal:
- `index.html`, `licencias.html`, `boletas_generadas.html`, `pago_billetera.html`
- `style1.css`, `style2.css`
- `images/` (logos y foto de la responsable)
- `server.py` (servidor local simple, si lo usás)

Cómo probar localmente (Python):

```powershell
# desde la carpeta del proyecto
python server.py
# abrir http://localhost:8000/ (o la URL que use server.py)
```

Subir este proyecto a GitHub (Windows PowerShell):

1. Usá el script `push_to_github.ps1` incluido (abre PowerShell en esta carpeta):

```powershell
.\\push_to_github.ps1
```

2. El script te pedirá confirmar el remoto por defecto: `https://github.com/poder24358-jpg/cenatycepat.git`.
   - Si tu cuenta tiene 2FA, al hacer `git push` usa un Personal Access Token (PAT) como contraseña.

Notas:
- No incluyas archivos sensibles (.env) en el repo. Ya hay un `.gitignore` con patrones comunes.
- Si preferís usar `gh` (GitHub CLI) o SSH, puedo generarte la versión correspondiente.

Licencia: sin licencia (poné la que prefieras antes de publicar).
