#include <stdlib.h>    /* ANSI C standard library */
#include <stdio.h>     /* ANSI C standard input/output library */
#include "vpi_user.h"  /* IEEE 1364 PLI VPI routine library  */
#include "veriuser.h"  /* IEEE 1364 PLI TF routine library  */
                       /* using TF routines for simulation control */

/* prototypes of the PLI application routines */
int  inject_calltf();
int  remove_calltf();


void inject_register()
{
  s_vpi_systf_data tf_data;

  tf_data.type        = vpiSysTask;
  tf_data.tfname      = "$VPI-inject";
  tf_data.calltf      = inject_calltf;
  tf_data.compiletf   = NULL;
  tf_data.sizetf      = NULL;
  vpi_register_systf(&tf_data);
  return;
}

void remove_register()
{
  s_vpi_systf_data tf_data;

  tf_data.type        = vpiSysTask;
  tf_data.tfname      = "$VPI-remove";
  tf_data.calltf      = remove_calltf;
  tf_data.compiletf   = NULL;
  tf_data.sizetf      = NULL;
  vpi_register_systf(&tf_data);
  return;
}

/**********************************************************************
 * calltf routine
 *********************************************************************/


int inject_calltf(char *user_data)
{

	vpiHandle systfref, args_iter, argh, argh1;
	struct t_vpi_value argval;
	int value;
 
  // Obtain a handle to the argument list
	systfref = vpi_handle(vpiSysTfCall, NULL);
	args_iter = vpi_iterate(vpiArgument, systfref);
 
  // Grab the value of the first argument
	argh1 = vpi_scan(args_iter);
	argval.format = vpiIntVal;
	vpi_get_value(argh1, &argval);
	value = argval.value.integer;
	vpi_printf("Net Value: %d\n", value);

	argh = vpi_scan(args_iter);
	argval.format = vpiScalarVal;
	vpi_get_value(argh, &argval);
	vpi_put_value(argh1, &argval, NULL, vpiForceFlag);
	if (argval.value.scalar == vpi0)
		vpi_printf("Injected Value: 0\n");
	else if (argval.value.scalar == vpi1)
		vpi_printf("Injected Value: 1\n");
	else if (argval.value.scalar == vpiZ)
		vpi_printf("Injected Value: Z\n");
	else if (argval.value.scalar == vpiX)
		vpi_printf("Injected Value: X\n");
	
  // Cleanup and return
	vpi_free_object(args_iter);
	return 0;

}

int remove_calltf(char *user_data)
{

	vpiHandle systfref, args_iter, argh;
	struct t_vpi_value argval;
	int value;
 
  // Obtain a handle to the argument list
	systfref = vpi_handle(vpiSysTfCall, NULL);
	args_iter = vpi_iterate(vpiArgument, systfref);
 
  // Grab the value of the first argument
	argh = vpi_scan(args_iter);
	
	argval.format = vpiScalarVal;
	argval.value.scalar = vpiZ;
	
	vpi_put_value(argh, &argval, NULL, vpiReleaseFlag);
	
  // Cleanup and return
	vpi_free_object(args_iter);
	return 0;

}

/*********************************************************************/

void (*vlog_startup_routines[])() = 
{
    /*** add user entries here ***/
	inject_register,
	remove_register,
	0 /*** final entry must be 0 ***/
};
