.class public Lbsh/org/objectweb/asm/Type;
.super Ljava/lang/Object;


# static fields
.field public static final ARRAY:I = 0x9

.field public static final BOOLEAN:I = 0x1

.field public static final BOOLEAN_TYPE:Lbsh/org/objectweb/asm/Type;

.field public static final BYTE:I = 0x3

.field public static final BYTE_TYPE:Lbsh/org/objectweb/asm/Type;

.field public static final CHAR:I = 0x2

.field public static final CHAR_TYPE:Lbsh/org/objectweb/asm/Type;

.field public static final DOUBLE:I = 0x8

.field public static final DOUBLE_TYPE:Lbsh/org/objectweb/asm/Type;

.field public static final FLOAT:I = 0x6

.field public static final FLOAT_TYPE:Lbsh/org/objectweb/asm/Type;

.field public static final INT:I = 0x5

.field public static final INT_TYPE:Lbsh/org/objectweb/asm/Type;

.field public static final LONG:I = 0x7

.field public static final LONG_TYPE:Lbsh/org/objectweb/asm/Type;

.field public static final OBJECT:I = 0xa

.field public static final SHORT:I = 0x4

.field public static final SHORT_TYPE:Lbsh/org/objectweb/asm/Type;

.field public static final VOID:I

.field public static final VOID_TYPE:Lbsh/org/objectweb/asm/Type;


# instance fields
.field private buf:[C

.field private len:I

.field private off:I

.field private final sort:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbsh/org/objectweb/asm/Type;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbsh/org/objectweb/asm/Type;-><init>(I)V

    sput-object v0, Lbsh/org/objectweb/asm/Type;->VOID_TYPE:Lbsh/org/objectweb/asm/Type;

    new-instance v0, Lbsh/org/objectweb/asm/Type;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lbsh/org/objectweb/asm/Type;-><init>(I)V

    sput-object v0, Lbsh/org/objectweb/asm/Type;->BOOLEAN_TYPE:Lbsh/org/objectweb/asm/Type;

    new-instance v0, Lbsh/org/objectweb/asm/Type;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lbsh/org/objectweb/asm/Type;-><init>(I)V

    sput-object v0, Lbsh/org/objectweb/asm/Type;->CHAR_TYPE:Lbsh/org/objectweb/asm/Type;

    new-instance v0, Lbsh/org/objectweb/asm/Type;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lbsh/org/objectweb/asm/Type;-><init>(I)V

    sput-object v0, Lbsh/org/objectweb/asm/Type;->BYTE_TYPE:Lbsh/org/objectweb/asm/Type;

    new-instance v0, Lbsh/org/objectweb/asm/Type;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lbsh/org/objectweb/asm/Type;-><init>(I)V

    sput-object v0, Lbsh/org/objectweb/asm/Type;->SHORT_TYPE:Lbsh/org/objectweb/asm/Type;

    new-instance v0, Lbsh/org/objectweb/asm/Type;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lbsh/org/objectweb/asm/Type;-><init>(I)V

    sput-object v0, Lbsh/org/objectweb/asm/Type;->INT_TYPE:Lbsh/org/objectweb/asm/Type;

    new-instance v0, Lbsh/org/objectweb/asm/Type;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lbsh/org/objectweb/asm/Type;-><init>(I)V

    sput-object v0, Lbsh/org/objectweb/asm/Type;->FLOAT_TYPE:Lbsh/org/objectweb/asm/Type;

    new-instance v0, Lbsh/org/objectweb/asm/Type;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lbsh/org/objectweb/asm/Type;-><init>(I)V

    sput-object v0, Lbsh/org/objectweb/asm/Type;->LONG_TYPE:Lbsh/org/objectweb/asm/Type;

    new-instance v0, Lbsh/org/objectweb/asm/Type;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lbsh/org/objectweb/asm/Type;-><init>(I)V

    sput-object v0, Lbsh/org/objectweb/asm/Type;->DOUBLE_TYPE:Lbsh/org/objectweb/asm/Type;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lbsh/org/objectweb/asm/Type;->sort:I

    const/4 v0, 0x1

    iput v0, p0, Lbsh/org/objectweb/asm/Type;->len:I

    return-void
.end method

.method private constructor <init>(I[CII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lbsh/org/objectweb/asm/Type;->sort:I

    iput-object p2, p0, Lbsh/org/objectweb/asm/Type;->buf:[C

    iput p3, p0, Lbsh/org/objectweb/asm/Type;->off:I

    iput p4, p0, Lbsh/org/objectweb/asm/Type;->len:I

    return-void
.end method

.method public static getArgumentTypes(Ljava/lang/String;)[Lbsh/org/objectweb/asm/Type;
    .locals 8

    const/16 v7, 0x29

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    move v0, v1

    move v2, v3

    :goto_0
    add-int/lit8 v4, v2, 0x1

    aget-char v2, v5, v2

    if-ne v2, v7, :cond_0

    new-array v0, v0, [Lbsh/org/objectweb/asm/Type;

    :goto_1
    aget-char v2, v5, v3

    if-eq v2, v7, :cond_3

    invoke-static {v5, v3}, Lbsh/org/objectweb/asm/Type;->getType([CI)Lbsh/org/objectweb/asm/Type;

    move-result-object v2

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    iget v2, v2, Lbsh/org/objectweb/asm/Type;->len:I

    add-int/2addr v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const/16 v6, 0x4c

    if-ne v2, v6, :cond_2

    :goto_2
    add-int/lit8 v2, v4, 0x1

    aget-char v4, v5, v4

    const/16 v6, 0x3b

    if-eq v4, v6, :cond_1

    move v4, v2

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/16 v6, 0x5b

    if-eq v2, v6, :cond_4

    add-int/lit8 v0, v0, 0x1

    move v2, v4

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    move v2, v4

    goto :goto_0
.end method

.method public static getArgumentTypes(Ljava/lang/reflect/Method;)[Lbsh/org/objectweb/asm/Type;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v0, v1

    new-array v2, v0, [Lbsh/org/objectweb/asm/Type;

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget-object v3, v1, v0

    invoke-static {v3}, Lbsh/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lbsh/org/objectweb/asm/Type;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static getDescriptor(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v0, p0}, Lbsh/org/objectweb/asm/Type;->getDescriptor(Ljava/lang/StringBuffer;Ljava/lang/Class;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDescriptor(Ljava/lang/StringBuffer;)V
    .locals 3

    iget v0, p0, Lbsh/org/objectweb/asm/Type;->sort:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lbsh/org/objectweb/asm/Type;->buf:[C

    iget v1, p0, Lbsh/org/objectweb/asm/Type;->off:I

    iget v2, p0, Lbsh/org/objectweb/asm/Type;->len:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :goto_0
    return-void

    :pswitch_0
    const/16 v0, 0x56

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x5a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x43

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x42

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x53

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x49

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x46

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x4a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x44

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private static getDescriptor(Ljava/lang/StringBuffer;Ljava/lang/Class;)V
    .locals 5

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    const/16 v0, 0x49

    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    return-void

    :cond_0
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    const/16 v0, 0x56

    goto :goto_1

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    const/16 v0, 0x5a

    goto :goto_1

    :cond_2
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    const/16 v0, 0x42

    goto :goto_1

    :cond_3
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    const/16 v0, 0x43

    goto :goto_1

    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    const/16 v0, 0x53

    goto :goto_1

    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    const/16 v0, 0x44

    goto :goto_1

    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    const/16 v0, 0x46

    goto :goto_1

    :cond_7
    const/16 v0, 0x4a

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_9
    const/16 v0, 0x4c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, v3, :cond_b

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2e

    if-ne v0, v4, :cond_a

    const/16 v0, 0x2f

    :cond_a
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_b
    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public static getInternalName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMethodDescriptor(Lbsh/org/objectweb/asm/Type;[Lbsh/org/objectweb/asm/Type;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v0, 0x28

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget-object v2, p1, v0

    invoke-direct {v2, v1}, Lbsh/org/objectweb/asm/Type;->getDescriptor(Ljava/lang/StringBuffer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-direct {p0, v1}, Lbsh/org/objectweb/asm/Type;->getDescriptor(Ljava/lang/StringBuffer;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMethodDescriptor(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v0, 0x28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget-object v3, v1, v0

    invoke-static {v2, v3}, Lbsh/org/objectweb/asm/Type;->getDescriptor(Ljava/lang/StringBuffer;Ljava/lang/Class;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v2, v0}, Lbsh/org/objectweb/asm/Type;->getDescriptor(Ljava/lang/StringBuffer;Ljava/lang/Class;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReturnType(Ljava/lang/String;)Lbsh/org/objectweb/asm/Type;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lbsh/org/objectweb/asm/Type;->getType([CI)Lbsh/org/objectweb/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getReturnType(Ljava/lang/reflect/Method;)Lbsh/org/objectweb/asm/Type;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lbsh/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lbsh/org/objectweb/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getType(Ljava/lang/Class;)Lbsh/org/objectweb/asm/Type;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    sget-object v0, Lbsh/org/objectweb/asm/Type;->INT_TYPE:Lbsh/org/objectweb/asm/Type;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    sget-object v0, Lbsh/org/objectweb/asm/Type;->VOID_TYPE:Lbsh/org/objectweb/asm/Type;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    sget-object v0, Lbsh/org/objectweb/asm/Type;->BOOLEAN_TYPE:Lbsh/org/objectweb/asm/Type;

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    sget-object v0, Lbsh/org/objectweb/asm/Type;->BYTE_TYPE:Lbsh/org/objectweb/asm/Type;

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    sget-object v0, Lbsh/org/objectweb/asm/Type;->CHAR_TYPE:Lbsh/org/objectweb/asm/Type;

    goto :goto_0

    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    sget-object v0, Lbsh/org/objectweb/asm/Type;->SHORT_TYPE:Lbsh/org/objectweb/asm/Type;

    goto :goto_0

    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    sget-object v0, Lbsh/org/objectweb/asm/Type;->DOUBLE_TYPE:Lbsh/org/objectweb/asm/Type;

    goto :goto_0

    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    sget-object v0, Lbsh/org/objectweb/asm/Type;->FLOAT_TYPE:Lbsh/org/objectweb/asm/Type;

    goto :goto_0

    :cond_7
    sget-object v0, Lbsh/org/objectweb/asm/Type;->LONG_TYPE:Lbsh/org/objectweb/asm/Type;

    goto :goto_0

    :cond_8
    invoke-static {p0}, Lbsh/org/objectweb/asm/Type;->getDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsh/org/objectweb/asm/Type;->getType(Ljava/lang/String;)Lbsh/org/objectweb/asm/Type;

    move-result-object v0

    goto :goto_0
.end method

.method public static getType(Ljava/lang/String;)Lbsh/org/objectweb/asm/Type;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbsh/org/objectweb/asm/Type;->getType([CI)Lbsh/org/objectweb/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method private static getType([CI)Lbsh/org/objectweb/asm/Type;
    .locals 4

    const/16 v3, 0x3b

    const/4 v0, 0x1

    aget-char v1, p0, p1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    add-int v1, p1, v0

    aget-char v1, p0, v1

    if-eq v1, v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    sget-object v0, Lbsh/org/objectweb/asm/Type;->VOID_TYPE:Lbsh/org/objectweb/asm/Type;

    :goto_1
    return-object v0

    :sswitch_1
    sget-object v0, Lbsh/org/objectweb/asm/Type;->BOOLEAN_TYPE:Lbsh/org/objectweb/asm/Type;

    goto :goto_1

    :sswitch_2
    sget-object v0, Lbsh/org/objectweb/asm/Type;->CHAR_TYPE:Lbsh/org/objectweb/asm/Type;

    goto :goto_1

    :sswitch_3
    sget-object v0, Lbsh/org/objectweb/asm/Type;->BYTE_TYPE:Lbsh/org/objectweb/asm/Type;

    goto :goto_1

    :sswitch_4
    sget-object v0, Lbsh/org/objectweb/asm/Type;->SHORT_TYPE:Lbsh/org/objectweb/asm/Type;

    goto :goto_1

    :sswitch_5
    sget-object v0, Lbsh/org/objectweb/asm/Type;->INT_TYPE:Lbsh/org/objectweb/asm/Type;

    goto :goto_1

    :sswitch_6
    sget-object v0, Lbsh/org/objectweb/asm/Type;->FLOAT_TYPE:Lbsh/org/objectweb/asm/Type;

    goto :goto_1

    :sswitch_7
    sget-object v0, Lbsh/org/objectweb/asm/Type;->LONG_TYPE:Lbsh/org/objectweb/asm/Type;

    goto :goto_1

    :sswitch_8
    sget-object v0, Lbsh/org/objectweb/asm/Type;->DOUBLE_TYPE:Lbsh/org/objectweb/asm/Type;

    goto :goto_1

    :goto_2
    :sswitch_9
    add-int v1, p1, v0

    aget-char v1, p0, v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    add-int v1, p1, v0

    aget-char v1, p0, v1

    const/16 v2, 0x4c

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :goto_3
    add-int v1, p1, v0

    aget-char v1, p0, v1

    if-eq v1, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1
    new-instance v1, Lbsh/org/objectweb/asm/Type;

    const/16 v2, 0x9

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v1, v2, p0, p1, v0}, Lbsh/org/objectweb/asm/Type;-><init>(I[CII)V

    move-object v0, v1

    goto :goto_1

    :cond_2
    new-instance v1, Lbsh/org/objectweb/asm/Type;

    const/16 v2, 0xa

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v1, v2, p0, p1, v0}, Lbsh/org/objectweb/asm/Type;-><init>(I[CII)V

    move-object v0, v1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_3
        0x43 -> :sswitch_2
        0x44 -> :sswitch_8
        0x46 -> :sswitch_6
        0x49 -> :sswitch_5
        0x4a -> :sswitch_7
        0x53 -> :sswitch_4
        0x56 -> :sswitch_0
        0x5a -> :sswitch_1
        0x5b -> :sswitch_9
    .end sparse-switch
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lbsh/org/objectweb/asm/Type;->buf:[C

    iget v2, p0, Lbsh/org/objectweb/asm/Type;->off:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lbsh/org/objectweb/asm/Type;->len:I

    add-int/lit8 v3, v3, -0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/Type;->getDescriptor(Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDimensions()I
    .locals 3

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lbsh/org/objectweb/asm/Type;->buf:[C

    iget v2, p0, Lbsh/org/objectweb/asm/Type;->off:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getElementType()Lbsh/org/objectweb/asm/Type;
    .locals 3

    iget-object v0, p0, Lbsh/org/objectweb/asm/Type;->buf:[C

    iget v1, p0, Lbsh/org/objectweb/asm/Type;->off:I

    invoke-virtual {p0}, Lbsh/org/objectweb/asm/Type;->getDimensions()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lbsh/org/objectweb/asm/Type;->getType([CI)Lbsh/org/objectweb/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public getInternalName()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lbsh/org/objectweb/asm/Type;->buf:[C

    iget v2, p0, Lbsh/org/objectweb/asm/Type;->off:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lbsh/org/objectweb/asm/Type;->len:I

    add-int/lit8 v3, v3, -0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public getOpcode(I)I
    .locals 1

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x4f

    if-ne p1, v0, :cond_1

    :cond_0
    iget v0, p0, Lbsh/org/objectweb/asm/Type;->sort:I

    packed-switch v0, :pswitch_data_0

    add-int/lit8 p1, p1, 0x4

    :goto_0
    :pswitch_0
    return p1

    :pswitch_1
    add-int/lit8 p1, p1, 0x5

    goto :goto_0

    :pswitch_2
    add-int/lit8 p1, p1, 0x6

    goto :goto_0

    :pswitch_3
    add-int/lit8 p1, p1, 0x7

    goto :goto_0

    :pswitch_4
    add-int/lit8 p1, p1, 0x8

    goto :goto_0

    :pswitch_5
    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :pswitch_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :pswitch_7
    add-int/lit8 p1, p1, 0x3

    goto :goto_0

    :cond_1
    iget v0, p0, Lbsh/org/objectweb/asm/Type;->sort:I

    packed-switch v0, :pswitch_data_1

    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    :pswitch_8
    add-int/lit8 p1, p1, 0x5

    goto :goto_0

    :pswitch_9
    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :pswitch_a
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :pswitch_b
    add-int/lit8 p1, p1, 0x3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public getSize()I
    .locals 2

    iget v0, p0, Lbsh/org/objectweb/asm/Type;->sort:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lbsh/org/objectweb/asm/Type;->sort:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSort()I
    .locals 1

    iget v0, p0, Lbsh/org/objectweb/asm/Type;->sort:I

    return v0
.end method
