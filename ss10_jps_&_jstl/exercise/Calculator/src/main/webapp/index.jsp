<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 7/28/2022
  Time: 3:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <h1>Simple Calculator</h1>

  <form action="/Calculator" method="post">
    <p>First operand</p>
    <input name="firstOperand" type="text"><br>

    <p>Operator</p>
    <select name="operator" id="operator">
      <option value="+">Addition</option>
      <option value="-">Subtraction</option>
      <option value="*">Multiplication</option>
      <option value="/">Division</option>
    </select><br>

    <p>Second operand</p>
    <input name="secondOperand" type="text"><br>

    <button type="submit">Calculate</button>
  </form>
  </body>
</html>
