RetroGamingStats is a database-driven project designed to track and manage game statistics for retro gaming enthusiasts. The database uses MySQL to store and retrieve data efficiently, showcasing a structured approach to database design, querying, and management.

This project highlights the integration of SQL operations with a practical use case—tracking retro games played, playtime, and high scores—making it a perfect example of how data can enhance the gaming experience.


Features 🚀

• Game Stats Tracking: Monitor retro games played, total playtime, and high scores.

• CRUD Operations: Implemented operations for creating, reading, updating, and deleting data.

• Relational Database Design: Demonstrates relationships between tables for products, customers, and gaming statistics.

• Advanced Queries: Utilises aggregation, grouping, and sorting to generate insights like top games or average scores.

• Sample Data Included: Preloaded tables with sample data for demonstration and testing purposes.


Database Structure 🗄️

The RetroGamingStats database consists of the following tables:

1. Games: Stores information about retro games, including title, genre, and release year.

2. Players: Tracks player information, such as name, age, and gaming preferences.

3. Stats: Holds records of game sessions, including playtime, high scores, and timestamps.

4. Products (Optional): Includes retro gaming-related merchandise for demonstration purposes.



How It Works ⚙️

1. Data Management: Tables are designed to ensure clean relationships, preventing redundancy and ensuring referential integrity.

2. Query Examples:

• Find the most-played retro game.

• Calculate the average high score for a specific game.

• Generate leaderboards sorted by high scores or total playtime.

3. Customisation: The database can be easily expanded with additional fields or tables to suit more advanced gaming analytics.



Key Learning Objectives 📚

This project was created to:

• Showcase MySQL proficiency, including table creation, advanced queries, and referential actions.

• Demonstrate how databases can be used to manage and analyse data in a real-world scenario.

• Highlight skills in database design, optimisation, and SQL scripting.



Getting Started 🔧

Prerequisites:

• MySQL Server: Install a local or remote MySQL server.

• A MySQL client (e.g., MySQL Workbench, phpMyAdmin, or terminal).



Setup:

1. Clone this repository:

git clone https://github.com/your-username/RetroGamingStats.git


2. Import the SQL file into your MySQL server:

mysql -u your-username -p your-database < RetroGamingStats.sql


3. Explore the data and run the provided queries.

Future Enhancements 🌟

• Integration with a front-end app to visualise stats in real time.

• Incorporate APIs for game metadata (e.g., release dates, images).

• Add multiplayer game statistics for broader insights.
