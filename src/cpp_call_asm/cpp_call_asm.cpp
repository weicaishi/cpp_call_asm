// cpp_call_asm.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

#include "pch.h"
#include <iostream>
#include <windows.h>

/**
 * @brief		asm_add_		add number				
 * @param 		int a			
 * @param 		int b			
 * @return 		int			
 */
extern "C"  int asm_add_(int a, int b);

/**
 * @brief		asm_get_inf_	get text information					
 * @return 		char*			
 */
extern "C"  char* asm_get_inf_();

/**
 * @brief		asm_cmp_value_			compare number			
 * @param 		int a			
 * @param 		int b			
 * @return 		int						
 */
extern "C"  int asm_cmp_value_(int a, int b);

int main()
{
	printf("asm_add_(1, 2) = %d\n", asm_add_(1, 2));

	printf("asm_get_inf_:\t%s\r\n", asm_get_inf_());

	printf("asm_cmp_value_(4, 3):\t%d\r\n", asm_cmp_value_(4, 3));
	printf("asm_cmp_value_(3, 4):\t%d\r\n", asm_cmp_value_(3, 4));

	system("pause");
	return 0;
}