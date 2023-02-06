import static javax.swing.JOptionPane.*;
import javax.swing.JPasswordField;

final StringDict credentials =new StringDict(new String[] {  "liverking"}
, new String[] {
  "8675209"}
);

 JPasswordField pwd = new JPasswordField();

{
  println(credentials);
}

void draw() {
   
  if (frameCount == 1); 

  String user = username();

  if (user == null)           exit();
  else if (!"".equals(user))  passw(user);
}

String username() {
  String name = showInputDialog("Please enter username:");

  if (name == null)
   exit();

  else if ("".equals(name))
    showMessageDialog(null, "Please enter username."
      , "Alert", ERROR_MESSAGE);

  else if (!credentials.hasKey(name = name.toLowerCase()))
    showMessageDialog(null, "Unknown username." + (name = "")
      , "Alert", ERROR_MESSAGE);

  return name;
}

boolean passw(String name) {
  boolean loggedin = false;
  //pwd.setText("");

  int selection = showConfirmDialog(null, pwd
    , "Enter password:", OK_CANCEL_OPTION);

  if (selection != OK_OPTION) {
    showMessageDialog(null, "Please try again."
      , "Alert", ERROR_MESSAGE);

    return true;
  }

  String move = String.valueOf(pwd.getPassword());
  move = new String(pwd.getPassword());

  if ("".equals(move))
    showMessageDialog(null, "Please try again."
      , "Alert", ERROR_MESSAGE);

  else if (credentials.get(name).equals(move)) {
    showMessageDialog(null, "Welcome " + name + "!\n"
      , "Info", INFORMATION_MESSAGE);

  }

  else
    showMessageDialog(null, "Password incorrect!"
      , "Alert", ERROR_MESSAGE);
  return false;
}