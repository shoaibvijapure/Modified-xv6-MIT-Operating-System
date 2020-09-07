
_time:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:

#define ll volatile long long int
#define MAX 10000000

int main(int argc, char **argv)
{
   0:	f3 0f 1e fb          	endbr32 
   4:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   8:	83 e4 f0             	and    $0xfffffff0,%esp
   b:	ff 71 fc             	pushl  -0x4(%ecx)
   e:	55                   	push   %ebp
   f:	89 e5                	mov    %esp,%ebp
  11:	56                   	push   %esi
  12:	53                   	push   %ebx
  13:	51                   	push   %ecx
  14:	83 ec 3c             	sub    $0x3c,%esp
  17:	8b 31                	mov    (%ecx),%esi
  19:	8b 59 04             	mov    0x4(%ecx),%ebx
	int wtime, rtime, status = 0;
	int pid = fork();
  1c:	e8 9a 03 00 00       	call   3bb <fork>
	if (pid < 0)
  21:	85 c0                	test   %eax,%eax
  23:	78 3f                	js     64 <main+0x64>
	{
		printf(2, "Failed to fork\n");
		exit();
	}

	else if (pid == 0)
  25:	0f 85 d9 00 00 00    	jne    104 <main+0x104>
	{
		if (argc == 1)
  2b:	83 fe 01             	cmp    $0x1,%esi
  2e:	74 5c                	je     8c <main+0x8c>
			exit();
		}

		else
		{
			printf(1, "Timing %s\n", argv[1]);
  30:	83 ec 04             	sub    $0x4,%esp
  33:	ff 73 04             	pushl  0x4(%ebx)
  36:	68 20 09 00 00       	push   $0x920
  3b:	6a 01                	push   $0x1
  3d:	e8 4e 05 00 00       	call   590 <printf>
			if (exec(argv[1], argv + 1) < 0)
  42:	58                   	pop    %eax
  43:	8d 43 04             	lea    0x4(%ebx),%eax
  46:	5a                   	pop    %edx
  47:	50                   	push   %eax
  48:	ff 73 04             	pushl  0x4(%ebx)
  4b:	e8 ab 03 00 00       	call   3fb <exec>
  50:	83 c4 10             	add    $0x10,%esp
  53:	85 c0                	test   %eax,%eax
  55:	78 20                	js     77 <main+0x77>

		else
			printf(1, "Time taken by %s\nWait time: %d\nRun time: %d with Status %d\n\n", argv[1], wtime, rtime, status);
		exit();
	}
}
  57:	8d 65 f4             	lea    -0xc(%ebp),%esp
  5a:	31 c0                	xor    %eax,%eax
  5c:	59                   	pop    %ecx
  5d:	5b                   	pop    %ebx
  5e:	5e                   	pop    %esi
  5f:	5d                   	pop    %ebp
  60:	8d 61 fc             	lea    -0x4(%ecx),%esp
  63:	c3                   	ret    
		printf(2, "Failed to fork\n");
  64:	53                   	push   %ebx
  65:	53                   	push   %ebx
  66:	68 f8 08 00 00       	push   $0x8f8
  6b:	6a 02                	push   $0x2
  6d:	e8 1e 05 00 00       	call   590 <printf>
		exit();
  72:	e8 4c 03 00 00       	call   3c3 <exit>
				printf(2, "exec %s failed\n", argv[1]);
  77:	56                   	push   %esi
  78:	ff 73 04             	pushl  0x4(%ebx)
  7b:	68 2b 09 00 00       	push   $0x92b
  80:	6a 02                	push   $0x2
  82:	e8 09 05 00 00       	call   590 <printf>
				exit();
  87:	e8 37 03 00 00       	call   3c3 <exit>
			printf(1, "Timing default program\n");
  8c:	51                   	push   %ecx
			for (y = 0; y < MAX; y++)
  8d:	bb 7f 96 98 00       	mov    $0x98967f,%ebx
			printf(1, "Timing default program\n");
  92:	51                   	push   %ecx
  93:	68 08 09 00 00       	push   $0x908
  98:	6a 01                	push   $0x1
  9a:	e8 f1 04 00 00       	call   590 <printf>
			ll x = 0, y;
  9f:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
			for (y = 0; y < MAX; y++)
  a6:	83 c4 10             	add    $0x10,%esp
  a9:	31 c9                	xor    %ecx,%ecx
			ll x = 0, y;
  ab:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
			for (y = 0; y < MAX; y++)
  b2:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
  b9:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  c0:	eb 2f                	jmp    f1 <main+0xf1>
				x = 1 ^ x;
  c2:	8b 45 d8             	mov    -0x28(%ebp),%eax
  c5:	8b 55 dc             	mov    -0x24(%ebp),%edx
  c8:	89 c6                	mov    %eax,%esi
  ca:	89 55 c4             	mov    %edx,-0x3c(%ebp)
  cd:	8b 55 c4             	mov    -0x3c(%ebp),%edx
  d0:	83 f6 01             	xor    $0x1,%esi
  d3:	89 75 c0             	mov    %esi,-0x40(%ebp)
  d6:	8b 45 c0             	mov    -0x40(%ebp),%eax
  d9:	89 45 d8             	mov    %eax,-0x28(%ebp)
  dc:	89 55 dc             	mov    %edx,-0x24(%ebp)
			for (y = 0; y < MAX; y++)
  df:	8b 45 e0             	mov    -0x20(%ebp),%eax
  e2:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  e5:	83 c0 01             	add    $0x1,%eax
  e8:	83 d2 00             	adc    $0x0,%edx
  eb:	89 45 e0             	mov    %eax,-0x20(%ebp)
  ee:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  f1:	8b 45 e0             	mov    -0x20(%ebp),%eax
  f4:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  f7:	89 ce                	mov    %ecx,%esi
  f9:	39 c3                	cmp    %eax,%ebx
  fb:	19 d6                	sbb    %edx,%esi
  fd:	7d c3                	jge    c2 <main+0xc2>
			exit();
  ff:	e8 bf 02 00 00       	call   3c3 <exit>
		status = waitx(&wtime, &rtime);
 104:	8d 45 d4             	lea    -0x2c(%ebp),%eax
 107:	51                   	push   %ecx
 108:	51                   	push   %ecx
 109:	50                   	push   %eax
 10a:	8d 45 d0             	lea    -0x30(%ebp),%eax
 10d:	50                   	push   %eax
 10e:	e8 50 03 00 00       	call   463 <waitx>
		if (argc == 1)
 113:	83 c4 10             	add    $0x10,%esp
 116:	83 ee 01             	sub    $0x1,%esi
 119:	74 1d                	je     138 <main+0x138>
			printf(1, "Time taken by %s\nWait time: %d\nRun time: %d with Status %d\n\n", argv[1], wtime, rtime, status);
 11b:	52                   	push   %edx
 11c:	52                   	push   %edx
 11d:	50                   	push   %eax
 11e:	ff 75 d4             	pushl  -0x2c(%ebp)
 121:	ff 75 d0             	pushl  -0x30(%ebp)
 124:	ff 73 04             	pushl  0x4(%ebx)
 127:	68 88 09 00 00       	push   $0x988
 12c:	6a 01                	push   $0x1
 12e:	e8 5d 04 00 00       	call   590 <printf>
 133:	83 c4 20             	add    $0x20,%esp
 136:	eb c7                	jmp    ff <main+0xff>
			printf(1, "Time taken by default process\nWait time: %d\nRun time: %d with Status %d\n\n", wtime, rtime, status);
 138:	83 ec 0c             	sub    $0xc,%esp
 13b:	50                   	push   %eax
 13c:	ff 75 d4             	pushl  -0x2c(%ebp)
 13f:	ff 75 d0             	pushl  -0x30(%ebp)
 142:	68 3c 09 00 00       	push   $0x93c
 147:	6a 01                	push   $0x1
 149:	e8 42 04 00 00       	call   590 <printf>
 14e:	83 c4 20             	add    $0x20,%esp
 151:	eb ac                	jmp    ff <main+0xff>
 153:	66 90                	xchg   %ax,%ax
 155:	66 90                	xchg   %ax,%ax
 157:	66 90                	xchg   %ax,%ax
 159:	66 90                	xchg   %ax,%ax
 15b:	66 90                	xchg   %ax,%ax
 15d:	66 90                	xchg   %ax,%ax
 15f:	90                   	nop

00000160 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 160:	f3 0f 1e fb          	endbr32 
 164:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 165:	31 c0                	xor    %eax,%eax
{
 167:	89 e5                	mov    %esp,%ebp
 169:	53                   	push   %ebx
 16a:	8b 4d 08             	mov    0x8(%ebp),%ecx
 16d:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  while((*s++ = *t++) != 0)
 170:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 174:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 177:	83 c0 01             	add    $0x1,%eax
 17a:	84 d2                	test   %dl,%dl
 17c:	75 f2                	jne    170 <strcpy+0x10>
    ;
  return os;
}
 17e:	89 c8                	mov    %ecx,%eax
 180:	5b                   	pop    %ebx
 181:	5d                   	pop    %ebp
 182:	c3                   	ret    
 183:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 18a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000190 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 190:	f3 0f 1e fb          	endbr32 
 194:	55                   	push   %ebp
 195:	89 e5                	mov    %esp,%ebp
 197:	53                   	push   %ebx
 198:	8b 4d 08             	mov    0x8(%ebp),%ecx
 19b:	8b 55 0c             	mov    0xc(%ebp),%edx
  while(*p && *p == *q)
 19e:	0f b6 01             	movzbl (%ecx),%eax
 1a1:	0f b6 1a             	movzbl (%edx),%ebx
 1a4:	84 c0                	test   %al,%al
 1a6:	75 19                	jne    1c1 <strcmp+0x31>
 1a8:	eb 26                	jmp    1d0 <strcmp+0x40>
 1aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 1b0:	0f b6 41 01          	movzbl 0x1(%ecx),%eax
    p++, q++;
 1b4:	83 c1 01             	add    $0x1,%ecx
 1b7:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 1ba:	0f b6 1a             	movzbl (%edx),%ebx
 1bd:	84 c0                	test   %al,%al
 1bf:	74 0f                	je     1d0 <strcmp+0x40>
 1c1:	38 d8                	cmp    %bl,%al
 1c3:	74 eb                	je     1b0 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
 1c5:	29 d8                	sub    %ebx,%eax
}
 1c7:	5b                   	pop    %ebx
 1c8:	5d                   	pop    %ebp
 1c9:	c3                   	ret    
 1ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 1d0:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 1d2:	29 d8                	sub    %ebx,%eax
}
 1d4:	5b                   	pop    %ebx
 1d5:	5d                   	pop    %ebp
 1d6:	c3                   	ret    
 1d7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1de:	66 90                	xchg   %ax,%ax

000001e0 <strlen>:

uint
strlen(const char *s)
{
 1e0:	f3 0f 1e fb          	endbr32 
 1e4:	55                   	push   %ebp
 1e5:	89 e5                	mov    %esp,%ebp
 1e7:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 1ea:	80 3a 00             	cmpb   $0x0,(%edx)
 1ed:	74 21                	je     210 <strlen+0x30>
 1ef:	31 c0                	xor    %eax,%eax
 1f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1f8:	83 c0 01             	add    $0x1,%eax
 1fb:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 1ff:	89 c1                	mov    %eax,%ecx
 201:	75 f5                	jne    1f8 <strlen+0x18>
    ;
  return n;
}
 203:	89 c8                	mov    %ecx,%eax
 205:	5d                   	pop    %ebp
 206:	c3                   	ret    
 207:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 20e:	66 90                	xchg   %ax,%ax
  for(n = 0; s[n]; n++)
 210:	31 c9                	xor    %ecx,%ecx
}
 212:	5d                   	pop    %ebp
 213:	89 c8                	mov    %ecx,%eax
 215:	c3                   	ret    
 216:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 21d:	8d 76 00             	lea    0x0(%esi),%esi

00000220 <memset>:

void*
memset(void *dst, int c, uint n)
{
 220:	f3 0f 1e fb          	endbr32 
 224:	55                   	push   %ebp
 225:	89 e5                	mov    %esp,%ebp
 227:	57                   	push   %edi
 228:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 22b:	8b 4d 10             	mov    0x10(%ebp),%ecx
 22e:	8b 45 0c             	mov    0xc(%ebp),%eax
 231:	89 d7                	mov    %edx,%edi
 233:	fc                   	cld    
 234:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 236:	89 d0                	mov    %edx,%eax
 238:	5f                   	pop    %edi
 239:	5d                   	pop    %ebp
 23a:	c3                   	ret    
 23b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 23f:	90                   	nop

00000240 <strchr>:

char*
strchr(const char *s, char c)
{
 240:	f3 0f 1e fb          	endbr32 
 244:	55                   	push   %ebp
 245:	89 e5                	mov    %esp,%ebp
 247:	8b 45 08             	mov    0x8(%ebp),%eax
 24a:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 24e:	0f b6 10             	movzbl (%eax),%edx
 251:	84 d2                	test   %dl,%dl
 253:	75 16                	jne    26b <strchr+0x2b>
 255:	eb 21                	jmp    278 <strchr+0x38>
 257:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 25e:	66 90                	xchg   %ax,%ax
 260:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 264:	83 c0 01             	add    $0x1,%eax
 267:	84 d2                	test   %dl,%dl
 269:	74 0d                	je     278 <strchr+0x38>
    if(*s == c)
 26b:	38 d1                	cmp    %dl,%cl
 26d:	75 f1                	jne    260 <strchr+0x20>
      return (char*)s;
  return 0;
}
 26f:	5d                   	pop    %ebp
 270:	c3                   	ret    
 271:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 278:	31 c0                	xor    %eax,%eax
}
 27a:	5d                   	pop    %ebp
 27b:	c3                   	ret    
 27c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000280 <gets>:

char*
gets(char *buf, int max)
{
 280:	f3 0f 1e fb          	endbr32 
 284:	55                   	push   %ebp
 285:	89 e5                	mov    %esp,%ebp
 287:	57                   	push   %edi
 288:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 289:	31 f6                	xor    %esi,%esi
{
 28b:	53                   	push   %ebx
 28c:	89 f3                	mov    %esi,%ebx
 28e:	83 ec 1c             	sub    $0x1c,%esp
 291:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
 294:	eb 33                	jmp    2c9 <gets+0x49>
 296:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 29d:	8d 76 00             	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
 2a0:	83 ec 04             	sub    $0x4,%esp
 2a3:	8d 45 e7             	lea    -0x19(%ebp),%eax
 2a6:	6a 01                	push   $0x1
 2a8:	50                   	push   %eax
 2a9:	6a 00                	push   $0x0
 2ab:	e8 2b 01 00 00       	call   3db <read>
    if(cc < 1)
 2b0:	83 c4 10             	add    $0x10,%esp
 2b3:	85 c0                	test   %eax,%eax
 2b5:	7e 1c                	jle    2d3 <gets+0x53>
      break;
    buf[i++] = c;
 2b7:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 2bb:	83 c7 01             	add    $0x1,%edi
 2be:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
 2c1:	3c 0a                	cmp    $0xa,%al
 2c3:	74 23                	je     2e8 <gets+0x68>
 2c5:	3c 0d                	cmp    $0xd,%al
 2c7:	74 1f                	je     2e8 <gets+0x68>
  for(i=0; i+1 < max; ){
 2c9:	83 c3 01             	add    $0x1,%ebx
 2cc:	89 fe                	mov    %edi,%esi
 2ce:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 2d1:	7c cd                	jl     2a0 <gets+0x20>
 2d3:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
 2d5:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
 2d8:	c6 03 00             	movb   $0x0,(%ebx)
}
 2db:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2de:	5b                   	pop    %ebx
 2df:	5e                   	pop    %esi
 2e0:	5f                   	pop    %edi
 2e1:	5d                   	pop    %ebp
 2e2:	c3                   	ret    
 2e3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2e7:	90                   	nop
 2e8:	8b 75 08             	mov    0x8(%ebp),%esi
 2eb:	8b 45 08             	mov    0x8(%ebp),%eax
 2ee:	01 de                	add    %ebx,%esi
 2f0:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
 2f2:	c6 03 00             	movb   $0x0,(%ebx)
}
 2f5:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2f8:	5b                   	pop    %ebx
 2f9:	5e                   	pop    %esi
 2fa:	5f                   	pop    %edi
 2fb:	5d                   	pop    %ebp
 2fc:	c3                   	ret    
 2fd:	8d 76 00             	lea    0x0(%esi),%esi

00000300 <stat>:

int
stat(const char *n, struct stat *st)
{
 300:	f3 0f 1e fb          	endbr32 
 304:	55                   	push   %ebp
 305:	89 e5                	mov    %esp,%ebp
 307:	56                   	push   %esi
 308:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 309:	83 ec 08             	sub    $0x8,%esp
 30c:	6a 00                	push   $0x0
 30e:	ff 75 08             	pushl  0x8(%ebp)
 311:	e8 ed 00 00 00       	call   403 <open>
  if(fd < 0)
 316:	83 c4 10             	add    $0x10,%esp
 319:	85 c0                	test   %eax,%eax
 31b:	78 2b                	js     348 <stat+0x48>
    return -1;
  r = fstat(fd, st);
 31d:	83 ec 08             	sub    $0x8,%esp
 320:	ff 75 0c             	pushl  0xc(%ebp)
 323:	89 c3                	mov    %eax,%ebx
 325:	50                   	push   %eax
 326:	e8 f0 00 00 00       	call   41b <fstat>
  close(fd);
 32b:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 32e:	89 c6                	mov    %eax,%esi
  close(fd);
 330:	e8 b6 00 00 00       	call   3eb <close>
  return r;
 335:	83 c4 10             	add    $0x10,%esp
}
 338:	8d 65 f8             	lea    -0x8(%ebp),%esp
 33b:	89 f0                	mov    %esi,%eax
 33d:	5b                   	pop    %ebx
 33e:	5e                   	pop    %esi
 33f:	5d                   	pop    %ebp
 340:	c3                   	ret    
 341:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    return -1;
 348:	be ff ff ff ff       	mov    $0xffffffff,%esi
 34d:	eb e9                	jmp    338 <stat+0x38>
 34f:	90                   	nop

00000350 <atoi>:

int
atoi(const char *s)
{
 350:	f3 0f 1e fb          	endbr32 
 354:	55                   	push   %ebp
 355:	89 e5                	mov    %esp,%ebp
 357:	53                   	push   %ebx
 358:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 35b:	0f be 02             	movsbl (%edx),%eax
 35e:	8d 48 d0             	lea    -0x30(%eax),%ecx
 361:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 364:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 369:	77 1a                	ja     385 <atoi+0x35>
 36b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 36f:	90                   	nop
    n = n*10 + *s++ - '0';
 370:	83 c2 01             	add    $0x1,%edx
 373:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 376:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 37a:	0f be 02             	movsbl (%edx),%eax
 37d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 380:	80 fb 09             	cmp    $0x9,%bl
 383:	76 eb                	jbe    370 <atoi+0x20>
  return n;
}
 385:	89 c8                	mov    %ecx,%eax
 387:	5b                   	pop    %ebx
 388:	5d                   	pop    %ebp
 389:	c3                   	ret    
 38a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000390 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 390:	f3 0f 1e fb          	endbr32 
 394:	55                   	push   %ebp
 395:	89 e5                	mov    %esp,%ebp
 397:	57                   	push   %edi
 398:	8b 45 10             	mov    0x10(%ebp),%eax
 39b:	8b 55 08             	mov    0x8(%ebp),%edx
 39e:	56                   	push   %esi
 39f:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 3a2:	85 c0                	test   %eax,%eax
 3a4:	7e 0f                	jle    3b5 <memmove+0x25>
 3a6:	01 d0                	add    %edx,%eax
  dst = vdst;
 3a8:	89 d7                	mov    %edx,%edi
 3aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    *dst++ = *src++;
 3b0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 3b1:	39 f8                	cmp    %edi,%eax
 3b3:	75 fb                	jne    3b0 <memmove+0x20>
  return vdst;
}
 3b5:	5e                   	pop    %esi
 3b6:	89 d0                	mov    %edx,%eax
 3b8:	5f                   	pop    %edi
 3b9:	5d                   	pop    %ebp
 3ba:	c3                   	ret    

000003bb <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 3bb:	b8 01 00 00 00       	mov    $0x1,%eax
 3c0:	cd 40                	int    $0x40
 3c2:	c3                   	ret    

000003c3 <exit>:
SYSCALL(exit)
 3c3:	b8 02 00 00 00       	mov    $0x2,%eax
 3c8:	cd 40                	int    $0x40
 3ca:	c3                   	ret    

000003cb <wait>:
SYSCALL(wait)
 3cb:	b8 03 00 00 00       	mov    $0x3,%eax
 3d0:	cd 40                	int    $0x40
 3d2:	c3                   	ret    

000003d3 <pipe>:
SYSCALL(pipe)
 3d3:	b8 04 00 00 00       	mov    $0x4,%eax
 3d8:	cd 40                	int    $0x40
 3da:	c3                   	ret    

000003db <read>:
SYSCALL(read)
 3db:	b8 05 00 00 00       	mov    $0x5,%eax
 3e0:	cd 40                	int    $0x40
 3e2:	c3                   	ret    

000003e3 <write>:
SYSCALL(write)
 3e3:	b8 10 00 00 00       	mov    $0x10,%eax
 3e8:	cd 40                	int    $0x40
 3ea:	c3                   	ret    

000003eb <close>:
SYSCALL(close)
 3eb:	b8 15 00 00 00       	mov    $0x15,%eax
 3f0:	cd 40                	int    $0x40
 3f2:	c3                   	ret    

000003f3 <kill>:
SYSCALL(kill)
 3f3:	b8 06 00 00 00       	mov    $0x6,%eax
 3f8:	cd 40                	int    $0x40
 3fa:	c3                   	ret    

000003fb <exec>:
SYSCALL(exec)
 3fb:	b8 07 00 00 00       	mov    $0x7,%eax
 400:	cd 40                	int    $0x40
 402:	c3                   	ret    

00000403 <open>:
SYSCALL(open)
 403:	b8 0f 00 00 00       	mov    $0xf,%eax
 408:	cd 40                	int    $0x40
 40a:	c3                   	ret    

0000040b <mknod>:
SYSCALL(mknod)
 40b:	b8 11 00 00 00       	mov    $0x11,%eax
 410:	cd 40                	int    $0x40
 412:	c3                   	ret    

00000413 <unlink>:
SYSCALL(unlink)
 413:	b8 12 00 00 00       	mov    $0x12,%eax
 418:	cd 40                	int    $0x40
 41a:	c3                   	ret    

0000041b <fstat>:
SYSCALL(fstat)
 41b:	b8 08 00 00 00       	mov    $0x8,%eax
 420:	cd 40                	int    $0x40
 422:	c3                   	ret    

00000423 <link>:
SYSCALL(link)
 423:	b8 13 00 00 00       	mov    $0x13,%eax
 428:	cd 40                	int    $0x40
 42a:	c3                   	ret    

0000042b <mkdir>:
SYSCALL(mkdir)
 42b:	b8 14 00 00 00       	mov    $0x14,%eax
 430:	cd 40                	int    $0x40
 432:	c3                   	ret    

00000433 <chdir>:
SYSCALL(chdir)
 433:	b8 09 00 00 00       	mov    $0x9,%eax
 438:	cd 40                	int    $0x40
 43a:	c3                   	ret    

0000043b <dup>:
SYSCALL(dup)
 43b:	b8 0a 00 00 00       	mov    $0xa,%eax
 440:	cd 40                	int    $0x40
 442:	c3                   	ret    

00000443 <getpid>:
SYSCALL(getpid)
 443:	b8 0b 00 00 00       	mov    $0xb,%eax
 448:	cd 40                	int    $0x40
 44a:	c3                   	ret    

0000044b <sbrk>:
SYSCALL(sbrk)
 44b:	b8 0c 00 00 00       	mov    $0xc,%eax
 450:	cd 40                	int    $0x40
 452:	c3                   	ret    

00000453 <sleep>:
SYSCALL(sleep)
 453:	b8 0d 00 00 00       	mov    $0xd,%eax
 458:	cd 40                	int    $0x40
 45a:	c3                   	ret    

0000045b <uptime>:
SYSCALL(uptime)
 45b:	b8 0e 00 00 00       	mov    $0xe,%eax
 460:	cd 40                	int    $0x40
 462:	c3                   	ret    

00000463 <waitx>:
SYSCALL(waitx)
 463:	b8 16 00 00 00       	mov    $0x16,%eax
 468:	cd 40                	int    $0x40
 46a:	c3                   	ret    

0000046b <set_priority>:
SYSCALL(set_priority)
 46b:	b8 18 00 00 00       	mov    $0x18,%eax
 470:	cd 40                	int    $0x40
 472:	c3                   	ret    

00000473 <getpinfo>:
SYSCALL(getpinfo)
 473:	b8 17 00 00 00       	mov    $0x17,%eax
 478:	cd 40                	int    $0x40
 47a:	c3                   	ret    

0000047b <year>:
SYSCALL(year)
 47b:	b8 19 00 00 00       	mov    $0x19,%eax
 480:	cd 40                	int    $0x40
 482:	c3                   	ret    

00000483 <halt>:
SYSCALL(halt)
 483:	b8 1a 00 00 00       	mov    $0x1a,%eax
 488:	cd 40                	int    $0x40
 48a:	c3                   	ret    

0000048b <date>:
SYSCALL(date)
 48b:	b8 1b 00 00 00       	mov    $0x1b,%eax
 490:	cd 40                	int    $0x40
 492:	c3                   	ret    

00000493 <gettcount>:
SYSCALL(gettcount)
 493:	b8 1d 00 00 00       	mov    $0x1d,%eax
 498:	cd 40                	int    $0x40
 49a:	c3                   	ret    

0000049b <getrcount>:
SYSCALL(getrcount)
 49b:	b8 1c 00 00 00       	mov    $0x1c,%eax
 4a0:	cd 40                	int    $0x40
 4a2:	c3                   	ret    

000004a3 <getwcount>:
SYSCALL(getwcount)
 4a3:	b8 1e 00 00 00       	mov    $0x1e,%eax
 4a8:	cd 40                	int    $0x40
 4aa:	c3                   	ret    

000004ab <getwtcount>:
SYSCALL(getwtcount)
 4ab:	b8 1f 00 00 00       	mov    $0x1f,%eax
 4b0:	cd 40                	int    $0x40
 4b2:	c3                   	ret    

000004b3 <getcltcount>:
SYSCALL(getcltcount)
 4b3:	b8 21 00 00 00       	mov    $0x21,%eax
 4b8:	cd 40                	int    $0x40
 4ba:	c3                   	ret    

000004bb <getclcount>:
SYSCALL(getclcount)
 4bb:	b8 20 00 00 00       	mov    $0x20,%eax
 4c0:	cd 40                	int    $0x40
 4c2:	c3                   	ret    

000004c3 <getocount>:
SYSCALL(getocount)
 4c3:	b8 23 00 00 00       	mov    $0x23,%eax
 4c8:	cd 40                	int    $0x40
 4ca:	c3                   	ret    

000004cb <getotcount>:
SYSCALL(getotcount)
 4cb:	b8 22 00 00 00       	mov    $0x22,%eax
 4d0:	cd 40                	int    $0x40
 4d2:	c3                   	ret    
 4d3:	66 90                	xchg   %ax,%ax
 4d5:	66 90                	xchg   %ax,%ax
 4d7:	66 90                	xchg   %ax,%ax
 4d9:	66 90                	xchg   %ax,%ax
 4db:	66 90                	xchg   %ax,%ax
 4dd:	66 90                	xchg   %ax,%ax
 4df:	90                   	nop

000004e0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 4e0:	55                   	push   %ebp
 4e1:	89 e5                	mov    %esp,%ebp
 4e3:	57                   	push   %edi
 4e4:	56                   	push   %esi
 4e5:	53                   	push   %ebx
 4e6:	83 ec 3c             	sub    $0x3c,%esp
 4e9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 4ec:	89 d1                	mov    %edx,%ecx
{
 4ee:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 4f1:	85 d2                	test   %edx,%edx
 4f3:	0f 89 7f 00 00 00    	jns    578 <printint+0x98>
 4f9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 4fd:	74 79                	je     578 <printint+0x98>
    neg = 1;
 4ff:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 506:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 508:	31 db                	xor    %ebx,%ebx
 50a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 50d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 510:	89 c8                	mov    %ecx,%eax
 512:	31 d2                	xor    %edx,%edx
 514:	89 cf                	mov    %ecx,%edi
 516:	f7 75 c4             	divl   -0x3c(%ebp)
 519:	0f b6 92 cc 09 00 00 	movzbl 0x9cc(%edx),%edx
 520:	89 45 c0             	mov    %eax,-0x40(%ebp)
 523:	89 d8                	mov    %ebx,%eax
 525:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 528:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 52b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 52e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 531:	76 dd                	jbe    510 <printint+0x30>
  if(neg)
 533:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 536:	85 c9                	test   %ecx,%ecx
 538:	74 0c                	je     546 <printint+0x66>
    buf[i++] = '-';
 53a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 53f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 541:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 546:	8b 7d b8             	mov    -0x48(%ebp),%edi
 549:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 54d:	eb 07                	jmp    556 <printint+0x76>
 54f:	90                   	nop
 550:	0f b6 13             	movzbl (%ebx),%edx
 553:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 556:	83 ec 04             	sub    $0x4,%esp
 559:	88 55 d7             	mov    %dl,-0x29(%ebp)
 55c:	6a 01                	push   $0x1
 55e:	56                   	push   %esi
 55f:	57                   	push   %edi
 560:	e8 7e fe ff ff       	call   3e3 <write>
  while(--i >= 0)
 565:	83 c4 10             	add    $0x10,%esp
 568:	39 de                	cmp    %ebx,%esi
 56a:	75 e4                	jne    550 <printint+0x70>
    putc(fd, buf[i]);
}
 56c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 56f:	5b                   	pop    %ebx
 570:	5e                   	pop    %esi
 571:	5f                   	pop    %edi
 572:	5d                   	pop    %ebp
 573:	c3                   	ret    
 574:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 578:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 57f:	eb 87                	jmp    508 <printint+0x28>
 581:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 588:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 58f:	90                   	nop

00000590 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 590:	f3 0f 1e fb          	endbr32 
 594:	55                   	push   %ebp
 595:	89 e5                	mov    %esp,%ebp
 597:	57                   	push   %edi
 598:	56                   	push   %esi
 599:	53                   	push   %ebx
 59a:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 59d:	8b 75 0c             	mov    0xc(%ebp),%esi
 5a0:	0f b6 1e             	movzbl (%esi),%ebx
 5a3:	84 db                	test   %bl,%bl
 5a5:	0f 84 b4 00 00 00    	je     65f <printf+0xcf>
  ap = (uint*)(void*)&fmt + 1;
 5ab:	8d 45 10             	lea    0x10(%ebp),%eax
 5ae:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
 5b1:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 5b4:	31 d2                	xor    %edx,%edx
  ap = (uint*)(void*)&fmt + 1;
 5b6:	89 45 d0             	mov    %eax,-0x30(%ebp)
 5b9:	eb 33                	jmp    5ee <printf+0x5e>
 5bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 5bf:	90                   	nop
 5c0:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 5c3:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
 5c8:	83 f8 25             	cmp    $0x25,%eax
 5cb:	74 17                	je     5e4 <printf+0x54>
  write(fd, &c, 1);
 5cd:	83 ec 04             	sub    $0x4,%esp
 5d0:	88 5d e7             	mov    %bl,-0x19(%ebp)
 5d3:	6a 01                	push   $0x1
 5d5:	57                   	push   %edi
 5d6:	ff 75 08             	pushl  0x8(%ebp)
 5d9:	e8 05 fe ff ff       	call   3e3 <write>
 5de:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
 5e1:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 5e4:	0f b6 1e             	movzbl (%esi),%ebx
 5e7:	83 c6 01             	add    $0x1,%esi
 5ea:	84 db                	test   %bl,%bl
 5ec:	74 71                	je     65f <printf+0xcf>
    c = fmt[i] & 0xff;
 5ee:	0f be cb             	movsbl %bl,%ecx
 5f1:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 5f4:	85 d2                	test   %edx,%edx
 5f6:	74 c8                	je     5c0 <printf+0x30>
      }
    } else if(state == '%'){
 5f8:	83 fa 25             	cmp    $0x25,%edx
 5fb:	75 e7                	jne    5e4 <printf+0x54>
      if(c == 'd'){
 5fd:	83 f8 64             	cmp    $0x64,%eax
 600:	0f 84 9a 00 00 00    	je     6a0 <printf+0x110>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 606:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 60c:	83 f9 70             	cmp    $0x70,%ecx
 60f:	74 5f                	je     670 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 611:	83 f8 73             	cmp    $0x73,%eax
 614:	0f 84 d6 00 00 00    	je     6f0 <printf+0x160>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 61a:	83 f8 63             	cmp    $0x63,%eax
 61d:	0f 84 8d 00 00 00    	je     6b0 <printf+0x120>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 623:	83 f8 25             	cmp    $0x25,%eax
 626:	0f 84 b4 00 00 00    	je     6e0 <printf+0x150>
  write(fd, &c, 1);
 62c:	83 ec 04             	sub    $0x4,%esp
 62f:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 633:	6a 01                	push   $0x1
 635:	57                   	push   %edi
 636:	ff 75 08             	pushl  0x8(%ebp)
 639:	e8 a5 fd ff ff       	call   3e3 <write>
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
 63e:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
 641:	83 c4 0c             	add    $0xc,%esp
 644:	6a 01                	push   $0x1
 646:	83 c6 01             	add    $0x1,%esi
 649:	57                   	push   %edi
 64a:	ff 75 08             	pushl  0x8(%ebp)
 64d:	e8 91 fd ff ff       	call   3e3 <write>
  for(i = 0; fmt[i]; i++){
 652:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
        putc(fd, c);
 656:	83 c4 10             	add    $0x10,%esp
      }
      state = 0;
 659:	31 d2                	xor    %edx,%edx
  for(i = 0; fmt[i]; i++){
 65b:	84 db                	test   %bl,%bl
 65d:	75 8f                	jne    5ee <printf+0x5e>
    }
  }
}
 65f:	8d 65 f4             	lea    -0xc(%ebp),%esp
 662:	5b                   	pop    %ebx
 663:	5e                   	pop    %esi
 664:	5f                   	pop    %edi
 665:	5d                   	pop    %ebp
 666:	c3                   	ret    
 667:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 66e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 16, 0);
 670:	83 ec 0c             	sub    $0xc,%esp
 673:	b9 10 00 00 00       	mov    $0x10,%ecx
 678:	6a 00                	push   $0x0
 67a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 67d:	8b 45 08             	mov    0x8(%ebp),%eax
 680:	8b 13                	mov    (%ebx),%edx
 682:	e8 59 fe ff ff       	call   4e0 <printint>
        ap++;
 687:	89 d8                	mov    %ebx,%eax
 689:	83 c4 10             	add    $0x10,%esp
      state = 0;
 68c:	31 d2                	xor    %edx,%edx
        ap++;
 68e:	83 c0 04             	add    $0x4,%eax
 691:	89 45 d0             	mov    %eax,-0x30(%ebp)
 694:	e9 4b ff ff ff       	jmp    5e4 <printf+0x54>
 699:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
 6a0:	83 ec 0c             	sub    $0xc,%esp
 6a3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 6a8:	6a 01                	push   $0x1
 6aa:	eb ce                	jmp    67a <printf+0xea>
 6ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
 6b0:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
 6b3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 6b6:	8b 03                	mov    (%ebx),%eax
  write(fd, &c, 1);
 6b8:	6a 01                	push   $0x1
        ap++;
 6ba:	83 c3 04             	add    $0x4,%ebx
  write(fd, &c, 1);
 6bd:	57                   	push   %edi
 6be:	ff 75 08             	pushl  0x8(%ebp)
        putc(fd, *ap);
 6c1:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 6c4:	e8 1a fd ff ff       	call   3e3 <write>
        ap++;
 6c9:	89 5d d0             	mov    %ebx,-0x30(%ebp)
 6cc:	83 c4 10             	add    $0x10,%esp
      state = 0;
 6cf:	31 d2                	xor    %edx,%edx
 6d1:	e9 0e ff ff ff       	jmp    5e4 <printf+0x54>
 6d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6dd:	8d 76 00             	lea    0x0(%esi),%esi
        putc(fd, c);
 6e0:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
 6e3:	83 ec 04             	sub    $0x4,%esp
 6e6:	e9 59 ff ff ff       	jmp    644 <printf+0xb4>
 6eb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 6ef:	90                   	nop
        s = (char*)*ap;
 6f0:	8b 45 d0             	mov    -0x30(%ebp),%eax
 6f3:	8b 18                	mov    (%eax),%ebx
        ap++;
 6f5:	83 c0 04             	add    $0x4,%eax
 6f8:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 6fb:	85 db                	test   %ebx,%ebx
 6fd:	74 17                	je     716 <printf+0x186>
        while(*s != 0){
 6ff:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
 702:	31 d2                	xor    %edx,%edx
        while(*s != 0){
 704:	84 c0                	test   %al,%al
 706:	0f 84 d8 fe ff ff    	je     5e4 <printf+0x54>
 70c:	89 75 d4             	mov    %esi,-0x2c(%ebp)
 70f:	89 de                	mov    %ebx,%esi
 711:	8b 5d 08             	mov    0x8(%ebp),%ebx
 714:	eb 1a                	jmp    730 <printf+0x1a0>
          s = "(null)";
 716:	bb c5 09 00 00       	mov    $0x9c5,%ebx
        while(*s != 0){
 71b:	89 75 d4             	mov    %esi,-0x2c(%ebp)
 71e:	b8 28 00 00 00       	mov    $0x28,%eax
 723:	89 de                	mov    %ebx,%esi
 725:	8b 5d 08             	mov    0x8(%ebp),%ebx
 728:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 72f:	90                   	nop
  write(fd, &c, 1);
 730:	83 ec 04             	sub    $0x4,%esp
          s++;
 733:	83 c6 01             	add    $0x1,%esi
 736:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 739:	6a 01                	push   $0x1
 73b:	57                   	push   %edi
 73c:	53                   	push   %ebx
 73d:	e8 a1 fc ff ff       	call   3e3 <write>
        while(*s != 0){
 742:	0f b6 06             	movzbl (%esi),%eax
 745:	83 c4 10             	add    $0x10,%esp
 748:	84 c0                	test   %al,%al
 74a:	75 e4                	jne    730 <printf+0x1a0>
 74c:	8b 75 d4             	mov    -0x2c(%ebp),%esi
      state = 0;
 74f:	31 d2                	xor    %edx,%edx
 751:	e9 8e fe ff ff       	jmp    5e4 <printf+0x54>
 756:	66 90                	xchg   %ax,%ax
 758:	66 90                	xchg   %ax,%ax
 75a:	66 90                	xchg   %ax,%ax
 75c:	66 90                	xchg   %ax,%ax
 75e:	66 90                	xchg   %ax,%ax

00000760 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 760:	f3 0f 1e fb          	endbr32 
 764:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 765:	a1 90 0c 00 00       	mov    0xc90,%eax
{
 76a:	89 e5                	mov    %esp,%ebp
 76c:	57                   	push   %edi
 76d:	56                   	push   %esi
 76e:	53                   	push   %ebx
 76f:	8b 5d 08             	mov    0x8(%ebp),%ebx
 772:	8b 10                	mov    (%eax),%edx
  bp = (Header*)ap - 1;
 774:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 777:	39 c8                	cmp    %ecx,%eax
 779:	73 15                	jae    790 <free+0x30>
 77b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 77f:	90                   	nop
 780:	39 d1                	cmp    %edx,%ecx
 782:	72 14                	jb     798 <free+0x38>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 784:	39 d0                	cmp    %edx,%eax
 786:	73 10                	jae    798 <free+0x38>
{
 788:	89 d0                	mov    %edx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 78a:	8b 10                	mov    (%eax),%edx
 78c:	39 c8                	cmp    %ecx,%eax
 78e:	72 f0                	jb     780 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 790:	39 d0                	cmp    %edx,%eax
 792:	72 f4                	jb     788 <free+0x28>
 794:	39 d1                	cmp    %edx,%ecx
 796:	73 f0                	jae    788 <free+0x28>
      break;
  if(bp + bp->s.size == p->s.ptr){
 798:	8b 73 fc             	mov    -0x4(%ebx),%esi
 79b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 79e:	39 fa                	cmp    %edi,%edx
 7a0:	74 1e                	je     7c0 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 7a2:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 7a5:	8b 50 04             	mov    0x4(%eax),%edx
 7a8:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 7ab:	39 f1                	cmp    %esi,%ecx
 7ad:	74 28                	je     7d7 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 7af:	89 08                	mov    %ecx,(%eax)
  freep = p;
}
 7b1:	5b                   	pop    %ebx
  freep = p;
 7b2:	a3 90 0c 00 00       	mov    %eax,0xc90
}
 7b7:	5e                   	pop    %esi
 7b8:	5f                   	pop    %edi
 7b9:	5d                   	pop    %ebp
 7ba:	c3                   	ret    
 7bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 7bf:	90                   	nop
    bp->s.size += p->s.ptr->s.size;
 7c0:	03 72 04             	add    0x4(%edx),%esi
 7c3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 7c6:	8b 10                	mov    (%eax),%edx
 7c8:	8b 12                	mov    (%edx),%edx
 7ca:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 7cd:	8b 50 04             	mov    0x4(%eax),%edx
 7d0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 7d3:	39 f1                	cmp    %esi,%ecx
 7d5:	75 d8                	jne    7af <free+0x4f>
    p->s.size += bp->s.size;
 7d7:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
 7da:	a3 90 0c 00 00       	mov    %eax,0xc90
    p->s.size += bp->s.size;
 7df:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 7e2:	8b 53 f8             	mov    -0x8(%ebx),%edx
 7e5:	89 10                	mov    %edx,(%eax)
}
 7e7:	5b                   	pop    %ebx
 7e8:	5e                   	pop    %esi
 7e9:	5f                   	pop    %edi
 7ea:	5d                   	pop    %ebp
 7eb:	c3                   	ret    
 7ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000007f0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 7f0:	f3 0f 1e fb          	endbr32 
 7f4:	55                   	push   %ebp
 7f5:	89 e5                	mov    %esp,%ebp
 7f7:	57                   	push   %edi
 7f8:	56                   	push   %esi
 7f9:	53                   	push   %ebx
 7fa:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 7fd:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 800:	8b 3d 90 0c 00 00    	mov    0xc90,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 806:	8d 70 07             	lea    0x7(%eax),%esi
 809:	c1 ee 03             	shr    $0x3,%esi
 80c:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 80f:	85 ff                	test   %edi,%edi
 811:	0f 84 a9 00 00 00    	je     8c0 <malloc+0xd0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 817:	8b 07                	mov    (%edi),%eax
    if(p->s.size >= nunits){
 819:	8b 48 04             	mov    0x4(%eax),%ecx
 81c:	39 f1                	cmp    %esi,%ecx
 81e:	73 6d                	jae    88d <malloc+0x9d>
 820:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
 826:	bb 00 10 00 00       	mov    $0x1000,%ebx
 82b:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 82e:	8d 0c dd 00 00 00 00 	lea    0x0(,%ebx,8),%ecx
 835:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
 838:	eb 17                	jmp    851 <malloc+0x61>
 83a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 840:	8b 10                	mov    (%eax),%edx
    if(p->s.size >= nunits){
 842:	8b 4a 04             	mov    0x4(%edx),%ecx
 845:	39 f1                	cmp    %esi,%ecx
 847:	73 4f                	jae    898 <malloc+0xa8>
 849:	8b 3d 90 0c 00 00    	mov    0xc90,%edi
 84f:	89 d0                	mov    %edx,%eax
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 851:	39 c7                	cmp    %eax,%edi
 853:	75 eb                	jne    840 <malloc+0x50>
  p = sbrk(nu * sizeof(Header));
 855:	83 ec 0c             	sub    $0xc,%esp
 858:	ff 75 e4             	pushl  -0x1c(%ebp)
 85b:	e8 eb fb ff ff       	call   44b <sbrk>
  if(p == (char*)-1)
 860:	83 c4 10             	add    $0x10,%esp
 863:	83 f8 ff             	cmp    $0xffffffff,%eax
 866:	74 1b                	je     883 <malloc+0x93>
  hp->s.size = nu;
 868:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 86b:	83 ec 0c             	sub    $0xc,%esp
 86e:	83 c0 08             	add    $0x8,%eax
 871:	50                   	push   %eax
 872:	e8 e9 fe ff ff       	call   760 <free>
  return freep;
 877:	a1 90 0c 00 00       	mov    0xc90,%eax
      if((p = morecore(nunits)) == 0)
 87c:	83 c4 10             	add    $0x10,%esp
 87f:	85 c0                	test   %eax,%eax
 881:	75 bd                	jne    840 <malloc+0x50>
        return 0;
  }
}
 883:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 886:	31 c0                	xor    %eax,%eax
}
 888:	5b                   	pop    %ebx
 889:	5e                   	pop    %esi
 88a:	5f                   	pop    %edi
 88b:	5d                   	pop    %ebp
 88c:	c3                   	ret    
    if(p->s.size >= nunits){
 88d:	89 c2                	mov    %eax,%edx
 88f:	89 f8                	mov    %edi,%eax
 891:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
 898:	39 ce                	cmp    %ecx,%esi
 89a:	74 54                	je     8f0 <malloc+0x100>
        p->s.size -= nunits;
 89c:	29 f1                	sub    %esi,%ecx
 89e:	89 4a 04             	mov    %ecx,0x4(%edx)
        p += p->s.size;
 8a1:	8d 14 ca             	lea    (%edx,%ecx,8),%edx
        p->s.size = nunits;
 8a4:	89 72 04             	mov    %esi,0x4(%edx)
      freep = prevp;
 8a7:	a3 90 0c 00 00       	mov    %eax,0xc90
}
 8ac:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 8af:	8d 42 08             	lea    0x8(%edx),%eax
}
 8b2:	5b                   	pop    %ebx
 8b3:	5e                   	pop    %esi
 8b4:	5f                   	pop    %edi
 8b5:	5d                   	pop    %ebp
 8b6:	c3                   	ret    
 8b7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8be:	66 90                	xchg   %ax,%ax
    base.s.ptr = freep = prevp = &base;
 8c0:	c7 05 90 0c 00 00 94 	movl   $0xc94,0xc90
 8c7:	0c 00 00 
    base.s.size = 0;
 8ca:	bf 94 0c 00 00       	mov    $0xc94,%edi
    base.s.ptr = freep = prevp = &base;
 8cf:	c7 05 94 0c 00 00 94 	movl   $0xc94,0xc94
 8d6:	0c 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8d9:	89 f8                	mov    %edi,%eax
    base.s.size = 0;
 8db:	c7 05 98 0c 00 00 00 	movl   $0x0,0xc98
 8e2:	00 00 00 
    if(p->s.size >= nunits){
 8e5:	e9 36 ff ff ff       	jmp    820 <malloc+0x30>
 8ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 8f0:	8b 0a                	mov    (%edx),%ecx
 8f2:	89 08                	mov    %ecx,(%eax)
 8f4:	eb b1                	jmp    8a7 <malloc+0xb7>
