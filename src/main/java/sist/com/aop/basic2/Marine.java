package sist.com.aop.basic2;

public class Marine implements Unit{
		
	private Command command;

	public Command getCommand() {
		return command;
	}

	public void setCommand(Command command) {
		this.command = command;
	}

	public Marine(Command command) {
		super();
		this.command = command;
	}

	public Marine() {
		super();
	}

	@Override
	public void doCommand() {
		// TODO Auto-generated method stub
		
		command.command();
		
	}
	
	

}
