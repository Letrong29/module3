package service;

public class CalculatorService {
    public String getAddition(double firstOperand, double secondOperand) {
        double result = firstOperand + secondOperand;
        return "" + result;
    }

    public String getSubtraction(double firstOperand, double secondOperand) {
        double result = firstOperand - secondOperand;
        return "" + result;
    }

    public String getMultiplication(double firstOperand, double secondOperand) {
        double result = firstOperand * secondOperand;
        return "" + result;
    }

    public String getDivision(double firstOperand, double secondOperand) {
        if (secondOperand != 0) {
            double result = firstOperand / secondOperand;
            return result + "";
        } else {
            return "The divisor is not equal to 0";
        }
    }

    public String calculate(double firstOperand, double secondOperand, String operator) {
        String result = "";
        switch (operator) {
            case "+":
                result = getAddition(firstOperand, secondOperand);
                break;
            case "-":
                result = getSubtraction(firstOperand, secondOperand);
                break;
            case "*":
                result = getMultiplication(firstOperand, secondOperand);
                break;
            case "/":
                result = getDivision(firstOperand, secondOperand);
                break;
        }
        return result;
    }
}
