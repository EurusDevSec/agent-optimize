# PROJECT ARCHITECTURE & TECH STACK

## 1. Core Tech Stack
- **Language**: [Specify: TypeScript / Python / Go / Rust]
- **Framework**: [Specify: Next.js / FastAPI / Express / Spring]
- **Database & Cache**: [Specify: PostgreSQL / Redis / SQLite]
- **Testing Framework**: [Specify: Vitest / pytest / Jest]

## 2. Directory Layout & Layer Topology
- `src/api/`: Request controllers & route handlers.
- `src/services/`: Core business logic & domain rules.
- `src/models/`: Database schemas & ORM entities.
- `src/utils/`: Shared helper functions and static utilities.

## 3. System Workflows & Data Flow
- **Request Flow**: Client Request → Middleware / Auth → Service Layer → DB / Cache → API Response.
- **State Management**: Stateless API design with Redis caching layer.
