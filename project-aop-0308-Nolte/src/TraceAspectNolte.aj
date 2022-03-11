public aspect TraceAspectNolte {
	
	pointcut classToTrace(): within(ComponentApp) || within(DataApp) || within (ServiceApp);
	
	before() classToTrace():
		System.out.println("[BGN]" + "String " + classToTrace() + ".getName()")
		System.out.println("[END]" + classToTrace())
}