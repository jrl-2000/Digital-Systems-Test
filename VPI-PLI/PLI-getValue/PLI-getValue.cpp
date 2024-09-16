#include "PLI-getValue.h"

static PLI_INT32 get_value ()
{
	handle arg1;
	s_setval_value value_of_arg1;
	acc_initialize();

	arg1 = acc_handle_tfarg(1);

	value_of_arg1.format = accScalarVal;

	acc_fetch_value (arg1, "%%", &value_of_arg1);

	io_printf("The value of %s is ", acc_fetch_fullname (arg1));
	io_printf (" %d \n", value_of_arg1.value.scalar);
	acc_close();
	return 0;
}

extern "C" __declspec(dllexport) s_tfcell veriusertfs[] = {
	{usertask, 0, 0, 0, get_value, 0, "$getValue"}, 
	{0}
};