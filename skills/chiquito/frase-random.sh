#!/usr/bin/env bash
# Devuelve una o varias frases aleatorias del banco del ilustre.
# Uso:
#   ./frase-random.sh             -> 1 frase aleatoria
#   ./frase-random.sh 5           -> 5 frases aleatorias
#   ./frase-random.sh 3 fistro    -> 3 frases aleatorias que contengan "fistro" (case-insensitive)

set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
FRASES="${DIR}/frases.txt"

if [[ ! -f "${FRASES}" ]]; then
  echo "No encuentro el banco de frases en ${FRASES}, pecaorr" >&2
  exit 1
fi

n="${1:-1}"
filtro="${2:-}"

if ! [[ "${n}" =~ ^[0-9]+$ ]]; then
  echo "El primer argumento tiene que ser un número, fistro" >&2
  exit 1
fi

if [[ -n "${filtro}" ]]; then
  matches="$(grep -iF -- "${filtro}" "${FRASES}" || true)"
  if [[ -z "${matches}" ]]; then
    echo "No hay frases que contengan '${filtro}', pecaorrr. Prueba otro patrón." >&2
    exit 1
  fi
  printf '%s\n' "${matches}" | shuf -n "${n}"
else
  shuf -n "${n}" "${FRASES}"
fi
