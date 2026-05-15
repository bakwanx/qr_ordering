# IPOT Customer QR Ordering App

A robust, Clean Architecture-based Flutter application for a QR-based customer ordering system. This project simulates a real-world restaurant ordering flow: scan a QR code, browse the menu, customize items, manage a cart, and track order status in real-time.

## Features

- **QR Scanner:** Uses the device camera to scan table QR codes.
- **Menu Browser:** Dynamically loads a restaurant's menu based on the scanned table. Features category tabs, a search bar, and responsive grid/list layouts for mobile and tablet.
- **Cart Management:** Add items with specific customizations, adjust quantities, and calculate subtotals. Features a robust local state mechanism preventing data loss during navigation.
- **Order Placement & Tracking:** Submit orders to the backend, view a confirmation summary, and track the order's real-time progress (Pending → Confirmed → Preparing → Ready → Served) via background polling.
- **Responsive & Accessible:** Adapts to phone and tablet sizes seamlessly. Includes semantic labels for screen readers and shimmer loading effects for slow networks.

## Architecture

This project strictly adheres to **Clean Architecture** principles to separate concerns, improve testability, and ensure scalability.

### Layers

1.  **Domain Layer (Inner-most):**
    - Contains Entities (pure Dart objects representing business logic).
    - Contains abstract Repositories (contracts for data operations).
    - Contains Use Cases (single-responsibility classes orchestrating business logic).
2.  **Data Layer:**
    - Contains Models (DTOs with JSON serialization).
    - Contains Data Sources (e.g., `Dio` network calls to the backend).
    - Contains Repository Implementations (mapping Models to Entities and handling `Either<Failure, T>` returns).
3.  **Presentation Layer (Outer-most):**
    - Contains UI (Pages, Widgets).
    - Contains State Management (`flutter_bloc` / Cubits combined with `freezed` for immutable states).

### Tech Stack

- **Framework:** Flutter
- **State Management:** `flutter_bloc` (Cubit) + `freezed`
- **Dependency Injection:** `get_it`
- **Routing:** `go_router` (Feature-based routing)
- **Networking:** `dio` (with global error interceptors)
- **Environment:** `envied` (obfuscated secrets)
- **Testing:** `flutter_test`, `bloc_test`, `mocktail`

## Setup & Installation

### Prerequisites

- Flutter SDK (^3.8.0)
- Dart SDK
- FVM (Flutter Version Management - optional but recommended)
- clone mock backend service:

```bash
git clone https://github.com/bakwanx/qr_ordering_be.git
cd qr_ordering_be
pnpm install
pnpm dev
```

### 1. Environment Variables

Create a `.env` file in the `qr_ordering` root directory:

```env
BASE_URL=http://localhost:3000/api/v1
API_VERSION=v1
```

then replace localhost with IP_ADDRESS

### 2. Generate Code

This project heavily relies on code generation for immutable states (`freezed`), JSON serialization (`json_serializable`), and environment obfuscation (`envied`).

Navigate to the `qr_ordering` folder and run:

```bash
flutter pub get
dart run build_runner build -d
```

### 3. Run the App

Ensure your local Node.js backend (`qr_ordering_be`) is running on port 3000.

```bash
flutter run
```

## Testing

The project includes unit tests for Cubit logic, state transitions, and mappers.
To run the test suite:

```bash
flutter test
```

## Directory Structure

Features are modularized by domain to ensure high cohesion.

```text
lib/
├── core/                   # Shared infrastructure (DI, Routing, Network, Theme)
├── features/
│   ├── scanner/            # QR Scanning & Table Validation
│   ├── menu/               # Browsing items, categories, and search
│   ├── cart/               # Cart state, customization, subtotals
│   └── order/              # Order submission and background tracking polling
└── app.dart                # Main App Shell & GoRouter setup
```
