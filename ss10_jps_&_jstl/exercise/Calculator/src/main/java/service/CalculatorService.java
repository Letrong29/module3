package service;

public class Calculator {
    double firstOperand;
    double secondOperand;

    public Calculator() {
    }

    public Calculator(double first_Operand, double secondOperand) {
        this.firstOperand = first_Operand;
        this.secondOperand = secondOperand;
    }

    public double getFirstOperand() {
        return firstOperand;
    }

    public void setFirstOperand(double firstOperand) {
        this.firstOperand = firstOperand;
    }

    public double getSecondOperand() {
        return secondOperand;
    }

    public void setSecondOperand(double secondOperand) {
        this.secondOperand = secondOperand;
    }

    public String getAddition(double firstOperand, double secondOperand){
        double result = firstOperand + secondOperand;
        return ""+result;
    }

    public String getSubtraction(double firstOperand, double secondOperand){
        double result = firstOperand - secondOperand;
        return ""+result;
    }

    public String getMultiplication(double firstOperand, double secondOperand){
        double result = firstOperand * secondOperand;
        return ""+result;
    }

    public String getDivision(double firstOperand, double secondOperand){
        if (secondOperand != 0){
            double result = firstOperand / secondOperand;
            return result+"";
        }else {
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
