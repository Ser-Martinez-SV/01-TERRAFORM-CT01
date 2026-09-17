## ¿Por qué Git Bash utiliza export y PowerShell utiliza $env:?
Porque son dos shells (terminales diferentes).

## Si aws sts get-caller-identity funciona, ¿significa que podremos crear cualquier recurso de AWS?
No, quiere decir que aws te reconoce como usuario de AWS pero no necesariamente quiere decir que podamos hacer cualqiuier cosa.

## ¿terraform validate comprueba que nuestras credenciales de AWS Academy funcionan?
No, comprueba que la configuración en main.tf es correcta

## Cierra la terminal de VS Code, abre una nueva y ejecuta aws sts get-caller-identity. Observa qué ocurre con las variables de entorno que habías configurado.
Las variables configuradas desaparecen en la nueva terminal ya que son variables de sesión