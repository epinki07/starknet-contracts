# ⛓️ StarkNet Contracts

> **🥇 1er Lugar — Starknet Buildathon 2025** · Proyecto "Rent Chain"

Contratos inteligentes escritos en **Cairo** para la red **StarkNet (Layer 2)**. Este repositorio contiene mis primeros contratos en blockchain y demuestra aprendizaje acelerado en desarrollo Web3.

## 📋 ¿Qué incluye?

### 🏦 DigitalVault

Almacén de secretos por dirección on-chain. Permite a usuarios guardar y recuperar información privada de forma descentralizada.

**Funcionalidades:**
- Guardar secretos asociados a una dirección
- Recuperar secretos solo si eres el dueño
- Eventos indexados para tracking

### 📋 MessageBoard

Tablero de mensajes descentralizado. Cualquier usuario puede publicar mensajes que quedan registrados on-chain.

**Funcionalidades:**
- Publicar mensajes públicos
- Leer historial completo de mensajes
- Eventos emitidos para cada mensaje

## 🛠️ Tech Stack

| Lenguaje | Red | Herramientas |
|----------|-----|--------------|
| Cairo 1.0 | StarkNet | Scarb |
| | Layer 2 | Starkli |
| | | Katana (local) |

## 🚀 Cómo correrlo localmente

### Prerrequisitos

```bash
# Instalar Scarb (package manager de Cairo)
curl --proto '=https' --tlsv1.2 -sSf https://docs.swmansion.com/scarb/install.sh | sh

# Verificar instalación
scarb --version
```

### Instalación

```bash
# Clonar repositorio
git clone https://github.com/epinki07/starknet-contracts.git
cd starknet-contracts

# Instalar dependencias
scarb build

# Correr tests (si aplica)
scarb test
```

### Deploy en testnet

```bash
# Configurar Starkli con tu wallet
starkli deploy target/dev/tu_contrato.json
```

## 📁 Estructura del proyecto

```
starknet-contracts/
├── src/
│   ├── lib.cairo             # Contrato principal
│   ├── digital_vault.cairo   # DigitalVault
│   └── message_board.cairo   # MessageBoard
├── Scarb.toml                # Configuración del proyecto
└── README.md
```

## 📖 Conceptos clave aprendidos

### Cairo / StarkNet

- **Sintaxis Cairo 1.0**: Rust-like, type-safe
- **StarkNet Account Abstraction**: Todo es un contrato
- **Events**: Para indexar y hacer queries off-chain
- **Storage**: Cómo persistir datos on-chain
- **Layer 2**: Scaling con Zero-Knowledge proofs

### Desarrollo Web3

- Wallets y gestión de cuentas
- Transacciones y gas fees
- Testnets vs Mainnet
- Exploradores de bloques (Voyager)

## 🏆 Resultado competitivo

Estos contratos fueron parte de **Rent Chain**, el proyecto que obtuvo el **1er Lugar** en el Starknet Buildathon 2025.

**Lo que validó el jurado:**
- Aprendizaje acelerado de tecnología nueva
- Ejecución bajo presión competitiva
- Comprensión de conceptos blockchain

## 💡 Qué aprendí

- Desarrollo de smart contracts en Cairo
- Arquitectura de aplicaciones descentralizadas (DApps)
- Integración frontend + blockchain
- Testing y deployment en StarkNet
- Cómo aprender tecnologías nuevas rápidamente

## 🔮 Próximos pasos

- [ ] Implementar NFTs (ERC721)
- [ ] Crear tokens (ERC20)
- [ ] Integrar con frontend React
- [ ] Deploy en StarkNet mainnet
- [ ] Explorar otros L2s (Arbitrum, Optimism)

## 🤝 Autor

**Diego Ramirez Magaña**  
Estudiante de Ingeniería en Software y Negocios Digitales  
Tecnológico del Software

- 📧 dramirezmagana@gmail.com
- 🔗 [LinkedIn](https://www.linkedin.com/in/diego-ramirez-maga%C3%B1a-b15022298/)
- 🐙 [GitHub](https://github.com/epinki07)

---

> **Nota**: Este repositorio muestra mi capacidad de aprender tecnologías nuevas de forma acelerada. Aunque blockchain no es mi foco principal (Java lo es), demuestra versatilidad y curiosidad técnica.
