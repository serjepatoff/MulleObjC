#include <mulle_objc/mulle_objc.h>



@interface Foo

@property char c;
@property int i;
@property float f;
@property double d;
@property long long q;
@property char *s;
@property( assign) id;

@end


@implementation Foo

+ (id) new
{
   return( mulle_objc_class_alloc_instance( self, NULL));
}

@end


main()
{
   Foo  *foo;

   foo = [Foo new];
   [foo setC:'V'];
   [foo setI:1848];
   [foo setF:18.48];
   [foo setD:18.48];
   [foo setQ:1848184818481848LL];
   [foo setS:"VfL Bochum 1848"];

   printf( "%c\n", [foo c]);
   printf( "%d\n", [foo i]);
   printf( "%.2f\n", [foo f]);
   printf( "%.2f\n", [foo d]);
   printf( "%lld\n", [foo q]);
   printf( "%s\n", [foo s]);
}
