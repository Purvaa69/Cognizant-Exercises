package singleton;

public class Logger {

    // Create only one object
    private static Logger instance;

    // Private constructor
    private Logger() {
        System.out.println("Logger Created");
    }

    // Public method to get the object
    public static Logger getInstance() {

        if (instance == null) {
            instance = new Logger();
        }

        return instance;
    }

    public void log(String message) {
        System.out.println("LOG: " + message);
    }
}