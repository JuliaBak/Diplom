package com.diplomlate.diplomlate.DBConnection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

public class StatementsDB {

    static String username;
    static int userpassword, mealID;


    public static void selectStatement(Connection connection) throws SQLException {
        String selectMeals = "SELECT * FROM users";
        Statement statSelect = connection.createStatement();

        ResultSet resultSelect = statSelect.executeQuery(selectMeals);
        try {
            while(resultSelect.next())
            {
                System.out.print(resultSelect.getInt("user_id") +" ");
                System.out.print(resultSelect.getString( "user_name") +" "); //выводим название блюда
                System.out.print(resultSelect.getInt("user_password") +" \n"); //выводим цену блюда
            }
        }
        catch (NullPointerException exert)
        {
            System.out.println("There is no stuff");
        }

        resultSelect.close();
        statSelect.close();
    }

    public static void insertStatement(Connection connection, Scanner scanner) throws SQLException {
        String insertUser;
        Statement statInsert = connection.createStatement();

       // System.out.println("Enter user's id:");
       // mealID = scanner.nextInt();

        System.out.println("Please enter meal's name:"); //считываем введенное название блюда
        username = scanner.next();

        System.out.println("Enter meal's password:"); //считываем введенное цену блюда
        userpassword = scanner.nextInt();

        // выполняем запрос на введение данных
        insertUser = "INSERT INTO diplomdb.users (user_name, user_password) VALUES ('" + username + "', '" + userpassword +"');";

        //выведем подтверждение изменения столбца
        int rows = statInsert.executeUpdate(insertUser);
        System.out.printf(" Updated %d rows - true \n", rows);

        statInsert.close();

    }

    public static void deleteStat(Connection connection, Scanner scanner) throws SQLException {
        String deleteS;
        Statement deleteStat = connection.createStatement();

        System.out.println("Please enter user's name:");
        username = scanner.next(); //считываем название юлда, которое хотим удалить

        deleteS = "DELETE FROM diplomdb.users WHERE user_name='" + username + "';";

        int rows = deleteStat.executeUpdate(deleteS);
        System.out.printf("Deleted %d rows \n", rows);

        deleteStat.close();
    }

    public static void getAveragePrice(Connection connection) throws SQLException {
        //вывод средней цены за блюдо
        double averagePrice;
        int count = 0;
        int totalPrice = 0;

        Statement getPriceStat = connection.createStatement();
        String selectMeals = "SELECT * FROM users";
        ResultSet resultSelect = getPriceStat.executeQuery(selectMeals);

        while(resultSelect.next())
        {
            count++;
            totalPrice += (resultSelect.getInt("price_meal")); //выводим цену блюда
        }

        averagePrice = (double) totalPrice/count;
        System.out.println("Average price per meal: " + averagePrice);

        getPriceStat.close();
    }
}

