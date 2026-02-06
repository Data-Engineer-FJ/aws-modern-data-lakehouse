# 🚀 AWS Modern Data Lakehouse: Guía Maestra de Ingeniería

**Autor:** Fredy Johel  
**Nivel:** Senior Data Engineer  
**Stack:** PySpark, AWS CLI, Amazon S3, AWS Glue, Amazon Athena.

Este repositorio documenta la construcción de un pipeline de datos **end-to-end**, migrando un entorno local de **PySpark SQL** hacia una arquitectura **Lakehouse en AWS**.

---

## 🏗️ 1. Arquitectura de la Solución

El proyecto implementa la **Arquitectura de Medallón** para garantizar la calidad y trazabilidad del dato:

* **🥉 Capa Bronze (Ingesta):** Definición de contratos de datos mediante `StructType`.
* **🥈 Capa Silver (Procesamiento):** Limpieza, tipado estricto y optimización en **Parquet**.
* **🥇 Capa de Consumo:** Orquestación con **AWS Glue** y consultas serverless en **Amazon Athena**.



---

## 🛠️ 2. Preparación e Instalación (Paso a Paso)

### 2.1 Instalación de AWS CLI v2 en Ubuntu
```bash
curl "[https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip](https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip)" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
aws --version
