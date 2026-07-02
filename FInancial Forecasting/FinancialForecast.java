public class FinancialForecast {

    public static double futureValue(double currentValue,
                                     double growthRate,
                                     int years) {

        // Base Case
        if (years == 0) {

            return currentValue;
        }

        // Recursive Case
        return futureValue(currentValue * (1 + growthRate),
                           growthRate,
                           years - 1);
    }

    public static void main(String[] args) {

        double investment = 10000;

        double growthRate = 0.10;

        int years = 5;

        double result = futureValue(investment,
                                    growthRate,
                                    years);

        System.out.printf("Future Value after %d years = %.2f",
                           years,
                           result);
    }
}