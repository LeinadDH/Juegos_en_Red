## **¿Cómo se inicializa un repositorio en Git?**
- Abre Git Bash en tu ordenador.
- Navega hasta el directorio donde deseas inicializar tu repositorio usando el comando "cd" (change directory).
- Una vez que estés en el directorio correcto, ejecuta el siguiente comando para inicializar tu repositorio de Git:

```sh
git init
```

Este comando creará un nuevo repositorio de Git en el directorio actual.
- Agrega tus archivos al repositorio usando el comando "add"

```sh
git add
```

Este comando agrega todos los archivos en el directorio actual al área de preparación.

- Realiza tu primer commit usando el comando "commit":

```sh
git commit -m "Primer commit"
```

Este comando confirmará los cambios en el área de preparación y los guardará en el historial de cambios de tu repositorio de Git.

¡Listo! Ahora tienes un repositorio de Git inicializado en Git Bash y listo para utilizar.

---

## **¿Cómo creas un repositorio en GitHub?**

- Abre Git Bash en tu ordenador.
- Navega hasta el directorio donde deseas inicializar tu repositorio usando el comando "cd" (change directory).
- Una vez que estés en el directorio correcto, ejecuta el siguiente comando para inicializar tu repositorio de Git: 

```sh
git init
```
Este comando creará un nuevo repositorio de Git en el directorio actual

- Ahora, crea un nuevo repositorio en GitHub. Haz clic en el botón "New Repository" en la página principal de GitHub.

- Asigna un nombre a tu repositorio y haz clic en el botón "Create Repository"
- Copia la URL del repositorio que acabas de crear en GitHub.
- Regresa a Git Bash y ejecuta el siguiente comando con la URL que copiaste:

```sh
git remote add origin <URL_del_repositorio>
```

Este comando conectará tu repositorio de Git local con tu repositorio remoto en GitHub.

- Agrega tus archivos y realiza tu primer commit:

```sh
git add .
git commit -m "Primer commit"
```

- Finalmente, empuja tus cambios al repositorio remoto en GitHub

```sh
git push -u origin main
```

Esto subirá tus archivos y commits al repositorio en línea y los sincronizará con tu repositorio local. Ahora ya tienes un repositorio de GitHub totalmente configurado y listo para usar desde Git Bash.

---

## **¿Cómo vinculas un repositorio local de Git con uno remoto en GitHub?**

- Abre Git Bash en tu ordenador
- Navega hasta el directorio del repositorio local usando el comando "cd" (change directory).
- Una vez que estés en el directorio correcto, ejecuta el siguiente comando para agregar la URL del repositorio remoto:

```sh
git remote add origin <URL_del_repositorio>
```

Puedes encontrar la URL en la página principal del repositorio en GitHub.

- Verifica que el repositorio remoto se haya agregado correctamente usando el siguiente comando:

```sh
git remote -v
```

Esto mostrará la URL del repositorio remoto que acabas de agregar.

- Ahora, empuja los cambios locales al repositorio remoto en GitHub:

```sh
git push -u origin main
```

Esto subirá tus archivos y commits al repositorio en línea y los sincronizará con tu repositorio local. Si tu rama principal se llama de manera diferente, reemplaza "main" con el nombre correcto de tu rama.

¡Listo! Ahora tienes un repositorio local de Git vinculado con uno remoto en GitHub desde Git Bash. Los cambios que realices localmente se reflejarán automáticamente en el repositorio remoto en GitHub después de haber hecho el push.

---

## **¿Cuál es el flujo básico de trabajo en Git y GitHub?**

1. Crear un repositorio: Inicializa un repositorio local de Git en tu ordenador o crea un repositorio en línea en GitHub.

1. Trabajar en el código: Desarrolla tu código fuente y realiza los cambios necesarios en tu repositorio local.

1. Agregar y confirmar cambios: Agrega los archivos modificados al área de preparación de Git usando el comando "git add". Luego, confirma los cambios realizados en el área de preparación usando el comando "git commit".

1. Empujar los cambios: Empuja los cambios confirmados en tu repositorio local al repositorio remoto en GitHub usando el comando "git push".

1. Fusionar cambios: Si trabajas en equipo, es posible que otros hayan hecho cambios en el mismo repositorio. Para incorporar estos cambios en tu repositorio local, debes fusionar los cambios usando el comando "git pull" y luego resolver cualquier conflicto que pueda surgir.

1. Crear ramas: Si deseas trabajar en nuevas funcionalidades o correcciones de errores sin afectar el código principal, puedes crear una rama utilizando el comando "git branch" y luego cambiarte a ella usando el comando "git checkout".

1. Fusionar ramas: Cuando hayas completado tus cambios en una rama, puedes fusionarla con la rama principal utilizando el comando "git merge".

1. Trabajar con problemas: Si encuentras un problema en el código, puedes crear un problema en GitHub para rastrear el problema y colaborar con otros para solucionarlo.


