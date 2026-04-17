# StarkNet Contracts

Contratos inteligentes escritos en Cairo para la red StarkNet (Layer 2). Desarrollados como parte del proyecto Rent Chain, que obtuvo el primer lugar en el Starknet Buildathon 2025.

## Contratos incluidos

**DigitalVault** — Almacena secretos asociados a una direccion en la blockchain. Solo el dueno de la direccion puede leerlos. Los eventos permiten indexar la actividad off-chain.

**MessageBoard** — Tablero de mensajes publico donde cualquier usuario puede publicar. Cada mensaje queda registrado on-chain con su emisor.

## Como correrlo

```bash
# Instalar Scarb (package manager de Cairo)
curl --proto '=https' --tlsv1.2 -sSf https://docs.swmansion.com/scarb/install.sh | sh

git clone https://github.com/epinki07/starknet-contracts.git
cd starknet-contracts

scarb build
scarb test
```

## Estructura

```
starknet-contracts/
├── src/
│   ├── lib.cairo
│   ├── digital_vault.cairo
│   └── message_board.cairo
└── Scarb.toml
```

## Tech Stack

Cairo 1.0, StarkNet, Scarb, Starkli. Para pruebas locales: Katana.

## Contexto

Estos contratos son la base tecnica de Rent Chain, la propuesta de renta descentralizada con la que obtuvimos el primer lugar en el Starknet Buildathon 2025. Blockchain no es mi enfoque principal (Java lo es), pero este proyecto muestra capacidad de aprender tecnologias nuevas cuando el contexto lo requiere.

## Autor

Diego Ramirez Magana — [LinkedIn](https://www.linkedin.com/in/diego-ramirez-maga%C3%B1a-b15022298/) | [GitHub](https://github.com/epinki07) | dramirezmagana@gmail.com
