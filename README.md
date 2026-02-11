# BANK PROJECT

This project was created to monitor changes in currencies.

## PROJECT STRUCTURE

```plaintext

lib
├── core
│   └── network
│       └── exchange
│           ├── exchange_api_base.dart
│           └── retrofit
│               ├── exchange_retrofit_api.dart
│               └── exchange_retrofit_api.g.dart
├── di
│   └── di.dart
├── features
│   ├── exchange
│   │   ├── data
│   │   │   ├── data_source
│   │   │   │   ├── exchange_data_source.dart
│   │   │   │   └── models
│   │   │   │       └── exchange_dto
│   │   │   │           ├── exchange_dto.dart
│   │   │   │           └── exchange_dto.g.dart
│   │   │   └── repository
│   │   │       ├── entities
│   │   │       │   └── exchange_entity.dart
│   │   │       └── exchange_repository.dart
│   │   └── presentation
│   │       ├── bloc
│   │       │   ├── exchange_bloc.dart
│   │       │   ├── exchange_event.dart
│   │       │   └── exchange_state.dart
│   │       └── ui
│   │           ├── screens
│   │           │   └── exchange_page.dart
│   │           └── widgets
│   │               ├── exchange_exception_text.dart
│   │               ├── exchange_item.dart
│   │               └── exchange_item_text.dart
│   ├── home_page
│   │   ├── cubit
│   │   │   ├── locale_cubit.dart
│   │   │   └── theme_cubit.dart
│   │   └── presentation
│   │       └── ui
│   │           ├── screens
│   │           │   └── home_page.dart
│   │           └── widgets
│   │               └── home_page_button.dart
│   └── settings
│       └── presentation
│           └── ui
│               ├── screens
│               │   └── settings_page.dart
│               └── widgets
│                   └── settings_button.dart
├── l10n
│   └── app_localization.dart
├── main.dart
├── router
│   ├── app_router.dart
│   └── page_names.dart
└── theme
    └── theme.dart

```

## PROJECT TECHNOLOGIES

- Navigation - go_router
- State Management - flutter_bloc (bloc, cubit)
- DI - get_it
- API - https://min-api.cryptocompare.com
- Networking - Dio + Retrofit
