public class AutoResumeThread extends Thread 
{ 
	private AutoResume m_mainThread; 
	public AutoResumeThread(AutoResume mainThread)
	{
		m_mainThread = mainThread; 
	}

	public void run() 
	{
		int nSleep = 0;
		while (m_mainThread.isPaused) 
		{
			try
			{ 
				System.out.println("Sleeping");
				sleep(1000);
			}
			catch (InterruptedException e) 
			{
				System.out.println(e.toString()); 
			}
			nSleep++; 
			if (nSleep == 5) 
			{	
				System.out.println("Requesting resume"); 
				nSleep = 0; 
				m_mainThread.resumeRequest(); 
			} 
		} 
	} 
} 