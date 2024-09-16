#include "faultInjection.h"

	handle arg1;  // Handle for the argument of task */
	handle arg2;  // Handle for the argument of task */

	s_setval_value value_for_arg1; // To hold value
	s_setval_delay delay_for_arg1; // To hold delay

	s_acc_value value_of_arg2;  // To hold value of arg2


static PLI_INT32 injectFault ()
{


	arg1 = acc_handle_by_name ((char*)acc_fetch_tfarg_str(1), null);
	// Print actual strings
	
	io_printf("The value of %s is ", acc_fetch_fullname (arg1));
	io_printf("Net value: %s\n", acc_fetch_value (arg1,"%b", null));


	arg2 = acc_handle_tfarg(2);
		
	// Get value of arg2 into value_of_arg2
	value_of_arg2.format = accScalarVal;
	acc_fetch_value (arg2, "%%", &value_of_arg2);

	// Prepare a data
	value_for_arg1.format = accScalarVal;
	value_for_arg1.value.scalar = value_of_arg2.value.scalar;

	delay_for_arg1.model = accForceFlag;
	delay_for_arg1.time.type = accSimTime;
	delay_for_arg1.time.low = 0;
	delay_for_arg1.time.high = 0;

	// Put it in arg1
	acc_set_value (arg1, &value_for_arg1, &delay_for_arg1);

    acc_close();
	return 0;

}



static PLI_INT32 removeFault ()
{
	acc_initialize();
	arg1 = acc_handle_by_name ((char*)acc_fetch_tfarg_str(1), null);
	// Print actual strings
	io_printf("The value of %s is ", acc_fetch_fullname (arg1));
	io_printf("Net value: %s\n", acc_fetch_value (arg1,"%b", null));

	// Prepare a data
	value_for_arg1.format = accScalarVal;

	delay_for_arg1.model = accReleaseFlag;

	// Put it in arg1
	acc_set_value (arg1, &value_for_arg1, &delay_for_arg1);

    acc_close();
	return 0;
}


extern "C" __declspec(dllexport) s_tfcell veriusertfs[] = {
	{usertask, 0, 0, 0, injectFault, 0, "$inject"}, 
	{usertask, 0, 0, 0, removeFault, 0, "$remove"}, 
	{0}
};