-- ============================================================
--  SmartPlate — Final Database Schema
--  Farmingdale State College — BCS 430 Senior Capstone (2026)
--  Team: Eunice Akinmade, Derek Mendez, James Kelley,
--        Marvin Cabrera, Sivakumar Nirmalakumar
--
--  Demo login: demo@smartplate.com / password
-- ============================================================

-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 09, 2026 at 03:46 PM
-- Server version: 8.0.45
-- PHP Version: 8.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smart_plate_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat_conversations`
--

CREATE TABLE `chat_conversations` (
                                      `id` int NOT NULL,
                                      `user_id` int NOT NULL,
                                      `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                                      `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chat_conversations`
--


-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

CREATE TABLE `chat_messages` (
                                 `id` int NOT NULL,
                                 `conversation_id` int NOT NULL,
                                 `role` enum('user','assistant') COLLATE utf8mb4_general_ci NOT NULL,
                                 `content` text COLLATE utf8mb4_general_ci NOT NULL,
                                 `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chat_messages`
--


-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
                             `id` int NOT NULL,
                             `user_id` int NOT NULL,
                             `meal_id` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
                             `meal_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
                             `meal_thumb` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
                             `meal_category` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
                             `meal_area` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
                             `saved_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favorites`
--


-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
                               `ingredient_id` int NOT NULL,
                               `meal_id` int NOT NULL,
                               `ingredient_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
                               `amount` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`ingredient_id`, `meal_id`, `ingredient_name`, `amount`) VALUES
                                                                                        (1, 1, 'Gala Apples', '2 whole'),
                                                                                        (2, 1, 'Cinnamon', '1 tsp'),
                                                                                        (3, 2, 'Chicken Breast', '6 oz'),
                                                                                        (4, 2, 'BBQ Sauce', '2 tbsp'),
                                                                                        (5, 2, 'Roasted Corn', '1/4 cup'),
                                                                                        (6, 3, 'Romaine Lettuce', '3 cups'),
                                                                                        (7, 3, 'Parmesan', '2 tbsp'),
                                                                                        (8, 3, 'Croutons', '1/2 cup'),
                                                                                        (9, 4, 'Baby Carrots', '1 lb'),
                                                                                        (10, 4, 'Honey', '2 tbsp'),
                                                                                        (11, 4, 'Fresh Parsley', '1 tsp'),
                                                                                        (12, 5, 'Cheddar Cheese', '2 oz'),
                                                                                        (13, 5, 'Gouda', '2 oz'),
                                                                                        (14, 5, 'Whole Wheat Crackers', '5 pcs'),
                                                                                        (15, 6, 'Herb Chicken', '1 breast'),
                                                                                        (16, 6, 'Quinoa', '1/2 cup'),
                                                                                        (17, 6, 'Red Onion', '1/4 cup'),
                                                                                        (18, 7, 'Farm Fresh Eggs', '2 large'),
                                                                                        (19, 7, 'Black Pepper', 'pinch'),
                                                                                        (20, 8, 'Lasagna Sheets', '3 layers'),
                                                                                        (21, 8, 'Ricotta', '1/2 cup'),
                                                                                        (22, 8, 'Marinara Sauce', '1 cup'),
                                                                                        (23, 9, 'White Fish', '6 oz'),
                                                                                        (24, 9, 'Lemon Zest', '1 tsp'),
                                                                                        (25, 9, 'Dill', '1/2 tsp'),
                                                                                        (26, 10, 'Large Eggs', '3 total'),
                                                                                        (27, 10, 'Bell Peppers', '1/4 cup'),
                                                                                        (28, 10, 'Onions', '2 tbsp'),
                                                                                        (29, 11, 'Buttermilk Batter', '1 cup'),
                                                                                        (30, 11, 'Maple Syrup', '2 tbsp'),
                                                                                        (31, 11, 'Mixed Berries', '1/4 cup'),
                                                                                        (32, 12, 'Flour Tortilla', '1 large'),
                                                                                        (33, 12, 'Mexican Cheese', '1/2 cup'),
                                                                                        (34, 12, 'Salsa', '2 tbsp'),
                                                                                        (35, 13, 'Steamed White Rice', '1 cup'),
                                                                                        (36, 13, 'Soy Sauce', '1 tsp'),
                                                                                        (37, 13, 'Sesame Seeds', '1 tsp'),
                                                                                        (38, 14, 'Corn Tortillas', '2 units'),
                                                                                        (39, 14, 'Lean Ground Beef', '4 oz'),
                                                                                        (40, 14, 'Fresh Salsa', '2 tbsp'),
                                                                                        (41, 15, 'Broccoli & Carrots', '1 cup'),
                                                                                        (42, 15, 'Snap Peas', '1/2 cup'),
                                                                                        (43, 15, 'Zucchini', '1/2 cup'),
                                                                                        (44, 16, 'Greek Yogurt', '1 cup'),
                                                                                        (45, 16, 'Walnuts', '2 tbsp'),
                                                                                        (46, 16, 'Honey', '1 tbsp'),
                                                                                        (47, 17, 'Penne Pasta', '2 cups'),
                                                                                        (48, 17, 'Mozzarella', '1/2 cup'),
                                                                                        (49, 17, 'Marinara', '1 cup');

-- --------------------------------------------------------

--
-- Table structure for table `meal_plans`
--

CREATE TABLE `meal_plans` (
                              `meal_plan_id` int NOT NULL,
                              `user_id` int DEFAULT NULL,
                              `start_date` date DEFAULT NULL,
                              `days` int DEFAULT NULL,
                              `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                              `plan_date` date DEFAULT NULL,
                              `meal_type` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
                              `meal_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
                              `description` text COLLATE utf8mb4_general_ci,
                              `emoji` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meal_plans`
--


-- --------------------------------------------------------

--
-- Table structure for table `nutrition_logs`
--

CREATE TABLE `nutrition_logs` (
                                  `id` int NOT NULL,
                                  `user_id` int NOT NULL,
                                  `log_date` date DEFAULT NULL,
                                  `meal_type` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
                                  `food_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
                                  `calories` decimal(8,2) DEFAULT '0.00',
                                  `carbs_g` decimal(8,2) DEFAULT '0.00',
                                  `protein_g` decimal(8,2) DEFAULT '0.00',
                                  `fat_g` decimal(8,2) DEFAULT '0.00',
                                  `source` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
                                  `logged_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nutrition_logs`
--


-- --------------------------------------------------------

--
-- Table structure for table `ready_meals`
--

CREATE TABLE `ready_meals` (
                               `meal_id` int NOT NULL,
                               `meal_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
                               `meal_image` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ready_meals`
--

INSERT INTO `ready_meals` (`meal_id`, `meal_name`, `meal_image`) VALUES
                                                                     (1, 'Apple Cinnamon Oatmeal', 'AppleSmartPlate.jpg'),
                                                                     (2, 'Barbecue Grilled Chicken', 'BBQSmartPlate.jpg'),
                                                                     (3, 'Chicken Caesar Salad', 'CaesarSmartPlate.jpg'),
                                                                     (4, 'Roasted Carrots', 'CarrotSmartPlate.jpg'),
                                                                     (5, 'Mac and Cheese', 'CheeseSmartPlate.jpg'),
                                                                     (6, 'Mediterranean Chicken Bowl', 'ChickenSmartPlate.jpg'),
                                                                     (7, 'Egg Roll', 'EggSmartPlate.jpg'),
                                                                     (8, 'Lasagna', 'LasagnaSmartPlate.jpg'),
                                                                     (9, 'Lemon-Spiced Salmon', 'LemonSmartPlate.jpg'),
                                                                     (10, 'Vegetarian Omelette', 'OmeletteSmartPlate.jpg'),
                                                                     (11, 'Protein Pancakes', 'PancakeSmartPlate.jpg'),
                                                                     (12, 'Chicken Quesadilla', 'QuesadillaSmartPlate.jpg'),
                                                                     (13, 'Protein Rice Bowl', 'RiceSmartPlate.jpg'),
                                                                     (14, 'Beef Tacos', 'TacoSmartPlate.jpg'),
                                                                     (15, 'Quinoa/Roasted Veg Bowl', 'VegetableSmartPlate.jpg'),
                                                                     (16, 'Fruit/Yogurt Bowl', 'YogurtSmartPlate.jpg'),
                                                                     (17, 'Healthy Baked Ziti', 'ZitiSmartPlate.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_lists`
--

CREATE TABLE `shopping_lists` (
                                  `id` int NOT NULL,
                                  `user_id` int NOT NULL,
                                  `list_json` json DEFAULT NULL,
                                  `unchecked_items` json DEFAULT (_utf8mb4'[]'),
                                  `generated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shopping_lists`
--


-- --------------------------------------------------------

--
-- Table structure for table `shopping_list_recipes`
--

CREATE TABLE `shopping_list_recipes` (
                                         `id` int NOT NULL,
                                         `user_id` int NOT NULL,
                                         `meal_id` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
                                         `meal_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
                                         `added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shopping_list_recipes`
--


-- --------------------------------------------------------

--
-- Table structure for table `survey`
--

CREATE TABLE `survey` (
                          `id` int NOT NULL,
                          `user_id` int NOT NULL,
                          `meal_preference` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
                          `meals_per_day` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
                          `cooking_level` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
                          `flexibility` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
                          `dietary_restrictions` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
                          `foods_to_avoid` text COLLATE utf8mb4_general_ci,
                          `submitted_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `survey`
--


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
                         `user_id` int NOT NULL,
                         `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
                         `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
                         `password_hash` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
                         `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `password_hash`, `created_at`) VALUES
    (1, 'Demo User', 'demo@smartplate.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uYutWFxZW', '2026-01-01 00:00:00');


-- --------------------------------------------------------

--
-- Table structure for table `user_preferences`
--

CREATE TABLE `user_preferences` (
                                    `id` int NOT NULL,
                                    `user_id` int DEFAULT NULL,
                                    `dietary_restrictions` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
                                    `allergies` text COLLATE utf8mb4_general_ci,
                                    `calorie_goal` int DEFAULT NULL,
                                    `protein_goal` int DEFAULT NULL,
                                    `carbs_goal` int DEFAULT NULL,
                                    `fat_goal` int DEFAULT NULL,
                                    `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                                    `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                                    `meal_preference` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
                                    `meals_per_day` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
                                    `cooking_level` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
                                    `flexibility` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
                                    `foods_to_avoid` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_preferences`
--


--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat_conversations`
--
ALTER TABLE `chat_conversations`
    ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `chat_messages`
--
ALTER TABLE `chat_messages`
    ADD PRIMARY KEY (`id`),
  ADD KEY `conversation_id` (`conversation_id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
    ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`meal_id`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
    ADD PRIMARY KEY (`ingredient_id`),
  ADD KEY `meal_id` (`meal_id`);

--
-- Indexes for table `meal_plans`
--
ALTER TABLE `meal_plans`
    ADD PRIMARY KEY (`meal_plan_id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`plan_date`,`meal_type`);

--
-- Indexes for table `nutrition_logs`
--
ALTER TABLE `nutrition_logs`
    ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `ready_meals`
--
ALTER TABLE `ready_meals`
    ADD PRIMARY KEY (`meal_id`);

--
-- Indexes for table `shopping_lists`
--
ALTER TABLE `shopping_lists`
    ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `shopping_list_recipes`
--
ALTER TABLE `shopping_list_recipes`
    ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`meal_id`);

--
-- Indexes for table `survey`
--
ALTER TABLE `survey`
    ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
    ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_preferences`
--
ALTER TABLE `user_preferences`
    ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat_conversations`
--
ALTER TABLE `chat_conversations`
    MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `chat_messages`
--
ALTER TABLE `chat_messages`
    MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
    MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
    MODIFY `ingredient_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `meal_plans`
--
ALTER TABLE `meal_plans`
    MODIFY `meal_plan_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `nutrition_logs`
--
ALTER TABLE `nutrition_logs`
    MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ready_meals`
--
ALTER TABLE `ready_meals`
    MODIFY `meal_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `shopping_lists`
--
ALTER TABLE `shopping_lists`
    MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `shopping_list_recipes`
--
ALTER TABLE `shopping_list_recipes`
    MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `survey`
--
ALTER TABLE `survey`
    MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
    MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_preferences`
--
ALTER TABLE `user_preferences`
    MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chat_conversations`
--
ALTER TABLE `chat_conversations`
    ADD CONSTRAINT `chat_conversations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `chat_messages`
--
ALTER TABLE `chat_messages`
    ADD CONSTRAINT `chat_messages_ibfk_1` FOREIGN KEY (`conversation_id`) REFERENCES `chat_conversations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
    ADD CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `ingredients`
--
ALTER TABLE `ingredients`
    ADD CONSTRAINT `ingredients_ibfk_1` FOREIGN KEY (`meal_id`) REFERENCES `ready_meals` (`meal_id`) ON DELETE CASCADE;

--
-- Constraints for table `meal_plans`
--
ALTER TABLE `meal_plans`
    ADD CONSTRAINT `meal_plans_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `nutrition_logs`
--
ALTER TABLE `nutrition_logs`
    ADD CONSTRAINT `nutrition_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `shopping_lists`
--
ALTER TABLE `shopping_lists`
    ADD CONSTRAINT `shopping_lists_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `shopping_list_recipes`
--
ALTER TABLE `shopping_list_recipes`
    ADD CONSTRAINT `shopping_list_recipes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `survey`
--
ALTER TABLE `survey`
    ADD CONSTRAINT `survey_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_preferences`
--
ALTER TABLE `user_preferences`
    ADD CONSTRAINT `user_preferences_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;