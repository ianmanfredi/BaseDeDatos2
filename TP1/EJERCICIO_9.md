### **Ejercicio 9: Backup y Restore en MySQL utilizando MySQL Workbench**


### **1. Realizar el Backup**

1. **Abrir MySQL Workbench:**

   - Iniciar MySQL Workbench e ingresar a la conexión correspondiente al servidor de base de datos.

2. **Acceder a la herramienta de exportación:**

   - Ir al menú **"Server"** y seleccionar la opción **"Data Export"**.

3. **Seleccionar la base de datos:**

   - En el panel izquierdo, marcar la base de datos que se desea respaldar.
   - Marcar las opciones:
     - **"Dump Structure and Data"** (para exportar tanto la estructura como los datos).
     - Elegir **"Export to Self-Contained File"** y seleccionar la ruta de destino del archivo `.sql`.

4. **Iniciar la exportación:**
   - Hacer clic en el botón **"Start Export"**.
   - Verificar que se haya generado correctamente el archivo `.sql`.

### **2. Simulación de pérdida de datos**

1. **Eliminar la base de datos:**

   - Desde Workbench o mediante una consola SQL, ejecutar el siguiente comando para simular una pérdida total:

   ```sql
   DROP DATABASE nombre_de_la_base;
   ```

2. **Verificar la eliminación:**
   - Confirmar que la base de datos ya no aparece en la lista de esquemas.

### **3. Procedimiento para restaurar el Backup**

1. **Acceder a la herramienta de importación:**

   - Ir al menú **"Server"** y seleccionar la opción **"Data Import"**.

2. **Seleccionar el archivo de respaldo:**

   - Elegir la opción **"Import from Self-Contained File"**.
   - Seleccionar el archivo `.sql` que se había generado durante el backup.

3. **Seleccionar esquema destino:**

   - Crear un nuevo esquema (base de datos) desde el panel de esquemas, o dejar que el script del archivo `.sql` lo cree automáticamente si está incluido.

4. **Iniciar la importación:**
   - Hacer clic en **"Start Import"**.
   - Verificar que el proceso finalice sin errores.

### **4. Corroborar la restauración**

1. **Revisar estructura:**

   - Comprobar que todas las tablas hayan sido restauradas correctamente en el esquema.

2. **Consultar datos:**

   - Ejecutar consultas `SELECT` sobre las tablas para verificar que los registros coinciden con los datos originales.

   ```sql
   SELECT * FROM nombre_de_tabla LIMIT 10;
   ```