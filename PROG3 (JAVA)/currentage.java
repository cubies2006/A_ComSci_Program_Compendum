import javax.swing.JOptionPane;
public class currentage
{
  public static void main(String[]args)
  {
    int cm,cd,cy,bm,bd,by,month,day,year,loop;
    String CM,CD,CY,BM,BD,BY,X,Y,Z;

    CM = JOptionPane.showInputDialog("Enter Current Month:");
    cm = Integer.parseInt(CM);

    if (cm > 0 && cm <= 12)
    { 
      CD = JOptionPane.showInputDialog("Enter Current Day:");
      cd = Integer.parseInt(CD);

      if (cd > 0 && cd <= 30)
      {   
            
        CY = JOptionPane.showInputDialog("Enter Current Year:");
        cy = Integer.parseInt(CY);

        if (cy > 0 && cy <= 2004)
        {                   
          JOptionPane.showMessageDialog(null,"The Current Date is: " + CM + " / " + CD + " / " + CY,"Current Date",JOptionPane.PLAIN_MESSAGE);
          BM = JOptionPane.showInputDialog("Enter Your Birth Month:");
          bm = Integer.parseInt(BM);                         

          if (bm > 0 && bm <= 12)
          {
            BD = JOptionPane.showInputDialog("Enter Your Birth Day:");
            bd = Integer.parseInt(BD);                           

            if (bd > 0 && bd <= 30)
            {  
              BY = JOptionPane.showInputDialog("Enter Your Birth Year:");
              by = Integer.parseInt(BY);

              if (by > 0)
              { 
                JOptionPane.showMessageDialog(null,"Your Birth Date is: " + BM + " / " + BD + " / " + BY,"Your Birth Date",JOptionPane.PLAIN_MESSAGE);

                if(cd<bd)
                {
                  cm--;
                  cd += 30;
                  day = cd-bd;
                }
                else
                {
                  day = cd-bd;
                }

                if(cm<bm)
                {
                  cy--;
                  cm += 12;
                  month = cm-bm;
                }
                else
                {
                  month = cm-bm;
                }

                if(cy<by)
                {
                  JOptionPane.showMessageDialog(null,"Your Birth Year is less than the Current Year. That's impossible! Please try again.","ERROR",JOptionPane.ERROR_MESSAGE);
                  System.exit(0);
                }
                else
                {
                  year = cy-by;
                  if (month == 1)
                    X = " ";
                  else
                    X = "s";

                  if (day == 1)
                    Y = " ";
                  else
                    Y = "s";
                  if (year == 1)
                    Z = " ";
                  else
                    Z = "s";
                  JOptionPane.showMessageDialog(null,"Your Age is: " + year + " Year" + Z + ", " + month + " Month" + X + ", and " + day + " Day" + Y + "!","Your Age",JOptionPane.PLAIN_MESSAGE);
                }
              }
              else
              {
                JOptionPane.showMessageDialog(null, "Your Birth Year shouldn't be less than or equal to 0. Please try again.","ERROR",JOptionPane.ERROR_MESSAGE);
              }
            }
            else
            {
              JOptionPane.showMessageDialog(null, "Your Birth Day shouldn't be less than or equal to 0 and greater than 30. Please try again.","ERROR",JOptionPane.ERROR_MESSAGE);
            }
          }
          else
          {
            JOptionPane.showMessageDialog(null, "Your Birth Month shouldn't be less than or equal to 0 and greater than 12. Please try again.","ERROR",JOptionPane.ERROR_MESSAGE);
          }
        }
        else
        {
          JOptionPane.showMessageDialog(null, "You didn't input the valid current year. Please try again.","ERROR",JOptionPane.ERROR_MESSAGE); 
        }
      }
      else
      {
        JOptionPane.showMessageDialog(null, "The current day shouldn't be less than or equal to 0 and greater than 30. Please try again.","ERROR",JOptionPane.ERROR_MESSAGE);
      }
    }
    else
    {
      JOptionPane.showMessageDialog(null, "The current month shouldn't be less than or equal to 0 and greater than 12. Please try again.","ERROR",JOptionPane.ERROR_MESSAGE); 
    }
    System.exit(0);
  }
}

