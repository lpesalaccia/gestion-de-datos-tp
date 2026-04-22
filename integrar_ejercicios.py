#!/usr/bin/env python3
"""
Integra los inserts de ejercicios generados en el archivo principal
"""
import re

try:
    # Leer el archivo de ejercicios
    with open("ejercicios.sql", "r", encoding="utf-8") as f:
        exercises_content = f.read()
    
    # Leer el archivo principal
    with open("inserts_duolingo.sql", "r", encoding="utf-8") as f:
        main_content = f.read()
    
    # Patrón a reemplazar: desde "-- EJERCICIO ( )" hasta "-- ejercicio por nivel\nGO"
    pattern = r'(-- EJERCICIO \( \)\nINSERT INTO ejercicio.*?VALUES\n)\n(-- ejercicio por nivel\nGO)'
    
    # Construir el reemplazo
    replacement = exercises_content.rstrip() + "\n\nGO\n\n" + r"\2"
    
    # Ejecutar reemplazo
    new_content = re.sub(pattern, replacement, main_content, flags=re.DOTALL)
    
    # Guardar
    with open("inserts_duolingo.sql", "w", encoding="utf-8") as f:
        f.write(new_content)
    
    # Contar ejercicios
    import re as regex
    matches = regex.findall(r'\(\d+, \d+, \'(Selección múltiple|Ordenar palabras|Escucha|Pronunciación|Emparejar)\'', new_content)
    
    print(f"✓ Inserts de ejercicios integrados exitosamente")
    print(f"✓ Total de ejercicios: {len(matches):,}")
    print(f"✓ Archivo actualizado: inserts_duolingo.sql")
    
except FileNotFoundError as e:
    print(f"✗ Archivo no encontrado: {e}")
except Exception as e:
    print(f"✗ Error: {e}")
