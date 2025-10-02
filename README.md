Fruityvice Flutter App

A simple Flutter app that fetches fruit data from the Fruityvice API and displays details such as family, 
order, genus, and nutrition values. The app also includes dark theme support with a toggle in the settings.


	•	📋 List of fruits fetched from Fruityvice API
  
	•	🌓 Toggle between Light / Dark theme in settings
  
	•	📱 Platform-specific switches (Material on Android, Cupertino on iOS)
  
	•	🔄 State management with Provider


lib/

├── models/          # Data models (Fruit, Nutritions)

├── pages/           # UI screens (Fruit list, detail, settings, main)

├── providers/       # State management (FruitProvider, SettingsProvider)

├── services/        # API service (Fruityvice API calls)

