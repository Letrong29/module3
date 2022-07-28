package model;

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

    public void setFirst_Operand(double first_Operand) {
        this.firstOperand = first_Operand;
    }

    public double getSecondOperand() {
        return secondOperand;
    }

    public void setSecondOperand(double secondOperand) {
        this.secondOperand = secondOperand;
    }

    public double getAddition(double firstOperand, double secondOperand){
        double addition = firstOperand + secondOperand;
        return addition;
    }

    public double getSubtraction(double firstOperand, double secondOperand){
        double subtraction = firstOperand - secondOperand;
        return subtraction;
    }

    public double getMultiplication(double firstOperand, double secondOperand){
        double multiplication = firstOperand * secondOperand;
        return multiplication;
    }

    public double getDivision(double firstOperand, double secondOperand){
        double division = firstOperand / secondOperand;
        return division;
    }

    public double calculate(double firstOperand, double secondOperand, String operator) {
        double result = 0;
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
