Feature: enter text

    Scenario Outline: enter text-box

      Given User is at the text page
      When User enters FullName as <>
      And yo ingreso "Rodas"  en el campo Last Name
      And yo ingreso "fran"  en el campo User Name
      And yo ingreso "@Fran1234"  en el campo Password
      And yo hago clic en el checkbox del recaptcha de "no soy un robot"
      And yo presiono el botón "registrar"
      Then mostrara una ventana de alerta "usuario registrado "