import java.applet.*;
import java.awt.*;
import java.awt.event.*;
import java.lang.Math.*;

public class CalculatorApplet extends Applet
{
   public void init()
   {  
      setLayout(new BorderLayout());
      setBackground(Color.blue);

      result = 0;
	memory = 0;
	command = "=";
      lastCommand = "=";
      start = true;
	inputting = true;
	stack = new double[10];
	stackedCommand = new String[10];
	FONT = new Font("Tahoma", Font.BOLD, 20);
      font = new Font("Tahoma", Font.BOLD, 18);

      // add the display
      display = new TextField("0");
      display.setBackground(Color.white);
      display.setFont(FONT);
      display.setEditable(false);
      add(display, BorderLayout.NORTH);
      
      ActionListener insert = new InsertAction();
      ActionListener binary = new BinaryAction();
      ActionListener unary = new UnaryAction();


      keyboard = new Panel();
      keyboard.setLayout(new GridLayout(7,4,10,10));

	// add the keys
	addButton("\u221Ax", Color.cyan, unary);	// square root button
	addButton("x\u00b2", Color.cyan, unary);	// square button
	addButton("x^y", Color.cyan, binary);           // caret button
	addButton("log", Color.cyan, unary);            // logarithmic button

	addButton("(-)", Color.cyan, unary);           // unary minus
	addButton("sin", Color.cyan, unary);
	addButton("cos", Color.cyan, unary);
	addButton("tan", Color.cyan, unary);

      keyboard.setLayout(new GridLayout(8, 2));
        addButton("7", Color.yellow, insert);
        addButton("8", Color.yellow, insert);
        addButton("9", Color.yellow, insert);
	addButton("AC", Color.red, unary);
        addButton("OFF", Color.magenta, unary);

	addButton("4", Color.yellow, insert);
        addButton("5", Color.yellow, insert);
        addButton("6", Color.yellow, insert);
 	addButton("+", Color.lightGray, binary);
	addButton("-", Color.lightGray, binary);


	addButton("1", Color.yellow, insert);
        addButton("2", Color.yellow, insert);
        addButton("3", Color.yellow, insert);
	addButton("\u00d7", Color.lightGray, binary);	// multiply button
	addButton("\u00f7", Color.lightGray, binary);	// divide button

	addButton("0", Color.yellow, insert);
	addButton(".", Color.lightGray, insert);
	addButton(" ", Color.lightGray, binary);
	addButton("=", Color.green, binary);



	
	add(keyboard, BorderLayout.CENTER);


	// add lower panel

	panel = new Panel();
	GridBagLayout layout = new GridBagLayout();
	panel.setLayout(layout);
	GridBagConstraints constraints = new GridBagConstraints();
	constraints.ipady = 10;
	constraints.weightx = 100;
	
	// add angle mode selector
	
	mode = new Choice();
	mode.addItem("degrees");
	mode.addItem("radians");
	mode.addItem("grad");
	mode.addItemListener(new ItemListener(){
		public void itemStateChanged(ItemEvent evt) 
		{
			String command = (String)mode.getSelectedItem();
			if(command.equals("degrees")) factor = Math.PI/180;
			else if(command.equals("grad")) factor = Math.PI/200;
			else factor = 1;
		}
	});
	constraints.fill = GridBagConstraints.BOTH;
	layout.setConstraints(mode, constraints);
	panel.add(mode);

	constraints.fill = GridBagConstraints.NONE;
	constraints.anchor = GridBagConstraints.WEST;
	Label modeLabel = new Label(" mode");
	layout.setConstraints(modeLabel, constraints);
	panel.add(modeLabel);

	// add decimal places selector

	constraints.anchor = GridBagConstraints.EAST;	
	constraints.gridwidth = GridBagConstraints.RELATIVE;
	Label decimalLabel = new Label("decimal places");
	layout.setConstraints(decimalLabel, constraints);
	panel.add(decimalLabel);

	decimal = new Choice();
	decimal.addItem("0");
	decimal.addItem("1");
	decimal.addItem("2");
	decimal.addItem("3");
	decimal.addItem("4");
	decimal.addItem("many");
	decimal.select("2");
	decimal.addItemListener(new ItemListener(){
		public void itemStateChanged(ItemEvent evt)
		{
			dp = decimal.getSelectedIndex();
			double temp = result;
			answer(getBrackets(), result);
			result = temp;
		}
	});
	constraints.fill = GridBagConstraints.BOTH;
	constraints.gridwidth = GridBagConstraints.REMAINDER;
	layout.setConstraints(decimal, constraints);
	panel.add(decimal);


	// add memory display

	
	constraints.gridwidth = 1;
	constraints.gridheight = 1;
	constraints.ipady = 0;

	Label memLabel = new Label("memory");
	constraints.fill = GridBagConstraints.NONE;
	layout.setConstraints(memLabel, constraints);
	panel.add(memLabel);

	mem = new TextField("0");
	mem.setEditable(false);
	mem.setFont(new Font("SansSerif", Font.BOLD, 16));
		panel.add(mem);
	constraints.fill = GridBagConstraints.BOTH;
	constraints.gridwidth = GridBagConstraints.RELATIVE;
	layout.setConstraints(mem, constraints);
	panel.add(mem);
	constraints.gridwidth = GridBagConstraints.RELATIVE;
	Label blank = new Label();
	layout.setConstraints(blank, constraints);
	panel.add(blank);

	add(panel, BorderLayout.SOUTH);
   }

   /**
      Adds a button to the center panel.
      @param label the button label
      @param listener the button listener
   */
   private void addButton(String label, Color color, ActionListener listener)
   {  
      Button button = new Button(label);
	button.setBackground(color);
	if(color==color.yellow || color==color.lightGray)
		button.setFont(FONT);
	else
		button.setFont(font);
	button.addActionListener(listener);
      keyboard.add(button);
   }

   /**
      This action inserts the button action string to the
      end of the display text.
   */
   private class InsertAction implements ActionListener
   {
      public void actionPerformed(ActionEvent evt)
      {
         String input = evt.getActionCommand();

         if (start) 
         {
            display.setText("");
            start = false;
		inputting = true;
         }
         display.setText(display.getText() + input);
      }
   }

   /**
      This action executes the command that the button
      action string denotes.
   */
   private class BinaryAction implements ActionListener
   {
      public void actionPerformed(ActionEvent evt)
      {  
         command = evt.getActionCommand();


         if (start)
         {  
            if (command.equals("-") && stored==0) 
            { 
               display.setText(command); 
               start = false;
		   command = "="; 
            }
            else 
               lastCommand = command;
         }
         else
         {  
	       	if(inputting)
				calculate((Double.valueOf(display.getText())).doubleValue());
			else
            		calculate(result);
            	
			if (command.equals(")"))
			{
				lastCommand = stackedCommand[level]; 
				stored = stack[level]; 
				level--;
				start = false;
				answer(getBrackets(), result);
			}
			else
			{
				lastCommand = command;
				start = true;
			}
            	
			inputting = false;
         }
      }		
   }

   // carries out unary operations
   public class UnaryAction implements ActionListener
   {
   	public void actionPerformed(ActionEvent evt)
   	{
		command = evt.getActionCommand();
		try
		{
			if(inputting)
				operate((Double.valueOf(display.getText())).doubleValue());
			else
				operate(result);
		}
		catch(NumberFormatException e)
		{
			display.setText("0");
		}
   	}
   }

	
   /**
      Carries out the pending calculation. 
      @param x the value to be accumulated with the prior result.
   */
   public void calculate(double x)
   {	
	if (lastCommand.equals("=")) { result = x; }
        else if (lastCommand.equals("+")) result = stored + x;
        else if (lastCommand.equals("-")) result = stored - x;
        else if (lastCommand.equals("\u00d7")) result = stored * x;
        else if (lastCommand.equals("\u00f7")) result = stored / x;     
	else if (lastCommand.equals("x^y")) result = Math.pow(stored, x);

	stored = result;	
	answer(getBrackets(), result);
	Toolkit.getDefaultToolkit().beep();
	trace("calculate");
   }

   public void operate(double x)
   {
	start = false;
	inputting = false; 
	
	if (command.equals("x\u00b2")) result = x*x;
        else if (command.equals("(-)")) result = x * -1;
	else if (command.equals("\u221Ax")) result = Math.sqrt(x);
	else if (command.equals("sin")) result = Math.sin(factor*x);
	else if (command.equals("cos" )) result = Math.cos(factor*x);
	else if (command.equals("tan")) result = Math.tan(factor*x);
	else if (command.equals("log")) result = Math.log(x)/Math.log(10);

	if (command.equals("AC")) 
		{	
			if(result==0) 
			{ stored = 0; inputting = true; level = 0; memory = 0; mem.setText("0");}
			else result = 0; 
			start = true; 
		}

	else if (command.equals("OFF")) 
		{	
			System.exit(0);
		}		
				
      answer(getBrackets(), result);	
	Toolkit.getDefaultToolkit().beep();
	trace("operate");
   }

   private double factorial(double x)
   {
	int n = (int)x;
	if(n-x!=0  || n<0) return Double.NaN;
	if(n<2) return 1;
	else return n*factorial(n-1);
   }

   // attaches brackets to display

   private String getBrackets()
   {
	StringBuffer brackets = new StringBuffer("");
	for(int i=0; i<level; i++)
		brackets.append("(");
	brackets.append(" ");
	return brackets.toString();
   }

   /**
      Rounds off and displays result of calculation. 
      @param result the accurate value to be rounded.
   */

   private void answer(String brackets, double result)
   {
	// rounds off display to the required number of decimal places

	if(Double.isNaN(result) || Double.isInfinite(result))
	{
		display.setText("Error");
		return;
	}
	if(dp>4)
	{
	  	display.setText(brackets + result);
		return;
	}
	else
	{
		double mult = Math.pow(10, (double)dp);
		double ans = (double)Math.round(Math.abs(result)*mult);
		ans /= mult;
		if(result<0) ans = -ans;
		display.setText(brackets + ans);
	}
   }

	public void trace(String function)
	{
		System.out.println();
		System.out.println(function);
		System.out.println("command= " + command);	
		System.out.println("lastCommand= " + lastCommand);
		System.out.println("stackedCommand= " + stackedCommand[level]);
		System.out.println("result = " + result);
		System.out.println("stored = " + stored);
		System.out.println("stack = " + stack[level]);
	}

   
   private Font FONT, font;
   private TextField display, mem;
   private Panel panel, keyboard;
   private double result, stored, memory, stack[];
   private String command, lastCommand, stackedCommand[];
   private boolean start, inputting;
   int level = 0;
   private Choice mode, decimal;
   private int dp = 2;	// number of decimal places
   private double factor = Math.PI/180;
}




