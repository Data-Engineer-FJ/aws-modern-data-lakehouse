#!/bin/bash

# 🚀 AWS Data Lakehouse Setup Script - Fredy Johel
# Este script automatiza la instalación de AWS CLI y la creación del Bucket S3

echo "📋 Iniciando configuración del entorno AWS..."

# 1. Instalación de AWS CLI v2
echo "📦 Instalando AWS CLI v2..."
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
rm -rf awscliv2.zip aws/

# 2. Verificación de versión
aws --version

# 3. Instrucción para configuración manual
echo "🔑 Por favor, ejecuta 'aws configure' para ingresar tus credenciales (Access Key, Secret Key, Region)."

# 4. Creación del Bucket S3 (Infraestructura)
# Nota: Se usa el nombre único validado en el proyecto
echo "🗄️ Creando Bucket S3..."
aws s3 mb s3://data-lakehouse-engineer-2026

# 5. Sincronización inicial de la capa Silver
# Se asume que el script se ejecuta desde la raíz del proyecto
echo "☁️ Sincronizando datos locales a S3..."
aws s3 sync data/silver/ s3://data-lakehouse-engineer-2026/silver/

echo "✅ Configuración completada exitosamente."