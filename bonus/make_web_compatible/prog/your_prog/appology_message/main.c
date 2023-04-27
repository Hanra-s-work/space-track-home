/*
** EPITECH PROJECT, 2022
** make_web_compatible
** File description:
** main.c
*/

#include <time.h>
#include <unistd.h>
#include <stddef.h>
#include <stdio.h>

int main(void)
{
   char *msg[] = {
      "Dear Visitors,",
      "Unfortunately, based of my current knowledge of web assembly it is not possible for me to compile CSFML in a way that a browser could run it.",
      "I am sincerely sorry for dissapointing you.",
      "The website creator",
      NULL
   };
   char buffer[200];

   int i = 0;
   int j = 0;

   for (; msg[i] != NULL; i++) {
      for (j = 0; msg[i][j] != '\0'; j++) {
         buffer[j] = msg[i][j];
         buffer[j + 1] = '\0';
         printf("%s\n\r", buffer);
         usleep(200000);
      };
      printf("\n");
   };
   return 0;
}
