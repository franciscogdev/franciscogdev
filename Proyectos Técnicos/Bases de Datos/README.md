Este proyecto contiene el diseño y la implementación de una base de datos orientada a la gestión de un Service Desk, enfocada en el registro, seguimiento y resolución de incidentes y solicitudes de soporte técnico.

La base de datos está pensada para simular un entorno real de mesa de servicios, siguiendo buenas prácticas de modelado y organización de scripts SQL.

🧱 Estructura del proyecto

Los scripts están organizados para ejecutarse en el siguiente orden:

02_create_tables.sql
Contiene la creación de las tablas principales del sistema, incluyendo entidades como usuarios, tickets, estados y categorías.

03_insert_data.sql
Incluye datos de prueba para poblar las tablas y permitir la validación del modelo y las consultas.

04_stored_procedures.sql
Define procedimientos almacenados para operaciones comunes del Service Desk, como la creación de tickets, actualización de estados y consultas de seguimiento.

⚙️ Tecnologías utilizadas

Motor de base de datos: SQL Server

Lenguaje: T-SQL

Entorno: Diseño orientado a sistemas de mesa de ayuda (Service Desk)
