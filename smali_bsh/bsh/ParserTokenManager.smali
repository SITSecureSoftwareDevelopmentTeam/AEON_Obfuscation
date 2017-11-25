.class public Lbsh/ParserTokenManager;
.super Ljava/lang/Object;

# interfaces
.implements Lbsh/ParserConstants;


# static fields
.field static final jjbitVec0:[J

.field static final jjbitVec1:[J

.field static final jjbitVec3:[J

.field static final jjbitVec4:[J

.field static final jjbitVec5:[J

.field static final jjbitVec6:[J

.field static final jjbitVec7:[J

.field static final jjbitVec8:[J

.field static final jjnextStates:[I

.field public static final jjstrLiteralImages:[Ljava/lang/String;

.field static final jjtoSkip:[J

.field static final jjtoSpecial:[J

.field static final jjtoToken:[J

.field public static final lexStateNames:[Ljava/lang/String;


# instance fields
.field protected curChar:C

.field curLexState:I

.field public debugStream:Ljava/io/PrintStream;

.field defaultLexState:I

.field protected input_stream:Lbsh/JavaCharStream;

.field jjmatchedKind:I

.field jjmatchedPos:I

.field jjnewStateCnt:I

.field jjround:I

.field private final jjrounds:[I

.field private final jjstateSet:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x0

    new-array v0, v2, [J

    fill-array-data v0, :array_0

    sput-object v0, Lbsh/ParserTokenManager;->jjbitVec0:[J

    new-array v0, v2, [J

    fill-array-data v0, :array_1

    sput-object v0, Lbsh/ParserTokenManager;->jjbitVec1:[J

    new-array v0, v2, [J

    fill-array-data v0, :array_2

    sput-object v0, Lbsh/ParserTokenManager;->jjbitVec3:[J

    new-array v0, v2, [J

    fill-array-data v0, :array_3

    sput-object v0, Lbsh/ParserTokenManager;->jjbitVec4:[J

    new-array v0, v2, [J

    fill-array-data v0, :array_4

    sput-object v0, Lbsh/ParserTokenManager;->jjbitVec5:[J

    new-array v0, v2, [J

    fill-array-data v0, :array_5

    sput-object v0, Lbsh/ParserTokenManager;->jjbitVec6:[J

    new-array v0, v2, [J

    fill-array-data v0, :array_6

    sput-object v0, Lbsh/ParserTokenManager;->jjbitVec7:[J

    new-array v0, v2, [J

    fill-array-data v0, :array_7

    sput-object v0, Lbsh/ParserTokenManager;->jjbitVec8:[J

    const/16 v0, 0x39

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    sput-object v0, Lbsh/ParserTokenManager;->jjnextStates:[I

    const/16 v0, 0x86

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v5

    aput-object v3, v0, v6

    const/4 v1, 0x2

    aput-object v3, v0, v1

    aput-object v3, v0, v4

    aput-object v3, v0, v2

    const/4 v1, 0x5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    aput-object v3, v0, v1

    const/16 v1, 0x9

    aput-object v3, v0, v1

    const/16 v1, 0xa

    const-string v2, "abstract"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "boolean"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "break"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "class"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "byte"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "case"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "catch"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "char"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "const"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "continue"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "default"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "do"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "double"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "else"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "enum"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "extends"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "false"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "final"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "finally"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "float"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "for"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "goto"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "if"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "implements"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "import"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "instanceof"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "int"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "interface"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "long"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "native"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "new"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "null"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "package"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "private"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "protected"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "public"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "return"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "short"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "static"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "strictfp"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "switch"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "synchronized"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "transient"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "throw"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "throws"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "true"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "try"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "void"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "volatile"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "while"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    aput-object v3, v0, v1

    const/16 v1, 0x3d

    aput-object v3, v0, v1

    const/16 v1, 0x3e

    aput-object v3, v0, v1

    const/16 v1, 0x3f

    aput-object v3, v0, v1

    const/16 v1, 0x40

    aput-object v3, v0, v1

    const/16 v1, 0x41

    aput-object v3, v0, v1

    const/16 v1, 0x42

    aput-object v3, v0, v1

    const/16 v1, 0x43

    aput-object v3, v0, v1

    const/16 v1, 0x44

    aput-object v3, v0, v1

    const/16 v1, 0x45

    aput-object v3, v0, v1

    const/16 v1, 0x46

    aput-object v3, v0, v1

    const/16 v1, 0x47

    aput-object v3, v0, v1

    const/16 v1, 0x48

    const-string v2, "("

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, ")"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "{"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "}"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "["

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "]"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, ";"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, ","

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "="

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "@gt"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "<"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "@lt"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "!"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "~"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "?"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, ":"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "=="

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "<="

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "@lteq"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, ">="

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "@gteq"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "!="

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "||"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "@or"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "&&"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "@and"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "++"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "--"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "+"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "-"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "*"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "/"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "&"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "@bitwise_and"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "@bitwise_or"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "^"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "%"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "<<"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "@left_shift"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, ">>"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "@right_shift"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, ">>>"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "@right_unsigned_shift"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "+="

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "-="

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "*="

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "/="

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "&="

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "@and_assign"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "|="

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "@or_assign"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "^="

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "%="

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "<<="

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "@left_shift_assign"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, ">>="

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "@right_shift_assign"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, ">>>="

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "@right_unsigned_shift_assign"

    aput-object v2, v0, v1

    sput-object v0, Lbsh/ParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "DEFAULT"

    aput-object v1, v0, v5

    sput-object v0, Lbsh/ParserTokenManager;->lexStateNames:[Ljava/lang/String;

    new-array v0, v4, [J

    fill-array-data v0, :array_9

    sput-object v0, Lbsh/ParserTokenManager;->jjtoToken:[J

    new-array v0, v4, [J

    fill-array-data v0, :array_a

    sput-object v0, Lbsh/ParserTokenManager;->jjtoSkip:[J

    new-array v0, v4, [J

    fill-array-data v0, :array_b

    sput-object v0, Lbsh/ParserTokenManager;->jjtoSpecial:[J

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 8
        -0x2
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 8
        0x1ff00000fffffffeL
        -0x4000
        0xffffffffL
        0x600000000000000L
    .end array-data

    :array_3
    .array-data 8
        0x0
        0x0
        0x0
        -0x80000000800001L
    .end array-data

    :array_4
    .array-data 8
        0x0
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_5
    .array-data 8
        -0x1
        -0x1
        0xffff
        0x0
    .end array-data

    :array_6
    .array-data 8
        -0x1
        -0x1
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 8
        0x3fffffffffffL
        0x0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x25
        0x26
        0x2b
        0x2c
        0x2f
        0x30
        0xf
        0x38
        0x3d
        0x49
        0x1a
        0x1b
        0x1d
        0x11
        0x13
        0x34
        0x36
        0x9
        0x39
        0x3a
        0x3c
        0x2
        0x3
        0x5
        0xb
        0xc
        0xf
        0x1a
        0x1b
        0x1f
        0x1d
        0x27
        0x28
        0xf
        0x2f
        0x30
        0xf
        0x3f
        0x40
        0x42
        0x45
        0x46
        0x48
        0xd
        0xe
        0x14
        0x15
        0x17
        0x1c
        0x1e
        0x20
        0x29
        0x2a
        0x2d
        0x2e
        0x31
        0x32
    .end array-data

    :array_9
    .array-data 8
        0x1ffffffffffffc01L    # 1.491668146239872E-154
        -0xc3
        0x3f
    .end array-data

    :array_a
    .array-data 8
        0x3fe
        0x0
        0x0
    .end array-data

    :array_b
    .array-data 8
        0x380
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lbsh/JavaCharStream;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lbsh/ParserTokenManager;->debugStream:Ljava/io/PrintStream;

    const/16 v0, 0x4a

    new-array v0, v0, [I

    iput-object v0, p0, Lbsh/ParserTokenManager;->jjrounds:[I

    const/16 v0, 0x94

    new-array v0, v0, [I

    iput-object v0, p0, Lbsh/ParserTokenManager;->jjstateSet:[I

    iput v1, p0, Lbsh/ParserTokenManager;->curLexState:I

    iput v1, p0, Lbsh/ParserTokenManager;->defaultLexState:I

    iput-object p1, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    return-void
.end method

.method public constructor <init>(Lbsh/JavaCharStream;I)V
    .locals 0

    invoke-direct {p0, p1}, Lbsh/ParserTokenManager;-><init>(Lbsh/JavaCharStream;)V

    invoke-virtual {p0, p2}, Lbsh/ParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method private final ReInitRounds()V
    .locals 3

    const v0, -0x7fffffff

    iput v0, p0, Lbsh/ParserTokenManager;->jjround:I

    const/16 v0, 0x4a

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lbsh/ParserTokenManager;->jjrounds:[I

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final jjAddStates(II)V
    .locals 3

    :goto_0
    iget-object v0, p0, Lbsh/ParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    sget-object v2, Lbsh/ParserTokenManager;->jjnextStates:[I

    aget v2, v2, p1

    aput v2, v0, v1

    add-int/lit8 v0, p1, 0x1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method private static final jjCanMove_0(IIIJJ)Z
    .locals 7

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    sget-object v1, Lbsh/ParserTokenManager;->jjbitVec0:[J

    aget-wide v2, v1, p2

    and-long/2addr v2, p5

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static final jjCanMove_1(IIIJJ)Z
    .locals 7

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    sget-object v2, Lbsh/ParserTokenManager;->jjbitVec1:[J

    aget-wide v2, v2, p1

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    sget-object v2, Lbsh/ParserTokenManager;->jjbitVec0:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static final jjCanMove_2(IIIJJ)Z
    .locals 7

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p0, :sswitch_data_0

    sget-object v2, Lbsh/ParserTokenManager;->jjbitVec3:[J

    aget-wide v2, v2, p1

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    sget-object v2, Lbsh/ParserTokenManager;->jjbitVec4:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    sget-object v2, Lbsh/ParserTokenManager;->jjbitVec5:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_2
    sget-object v2, Lbsh/ParserTokenManager;->jjbitVec6:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_3
    sget-object v2, Lbsh/ParserTokenManager;->jjbitVec7:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_4
    sget-object v2, Lbsh/ParserTokenManager;->jjbitVec8:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x30 -> :sswitch_1
        0x31 -> :sswitch_2
        0x33 -> :sswitch_3
        0x3d -> :sswitch_4
    .end sparse-switch
.end method

.method private final jjCheckNAdd(I)V
    .locals 3

    iget-object v0, p0, Lbsh/ParserTokenManager;->jjrounds:[I

    aget v0, v0, p1

    iget v1, p0, Lbsh/ParserTokenManager;->jjround:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lbsh/ParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    aput p1, v0, v1

    iget-object v0, p0, Lbsh/ParserTokenManager;->jjrounds:[I

    iget v1, p0, Lbsh/ParserTokenManager;->jjround:I

    aput v1, v0, p1

    :cond_0
    return-void
.end method

.method private final jjCheckNAddStates(I)V
    .locals 2

    sget-object v0, Lbsh/ParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    sget-object v0, Lbsh/ParserTokenManager;->jjnextStates:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    return-void
.end method

.method private final jjCheckNAddStates(II)V
    .locals 1

    :goto_0
    sget-object v0, Lbsh/ParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    add-int/lit8 v0, p1, 0x1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method private final jjCheckNAddTwoStates(II)V
    .locals 0

    invoke-direct {p0, p1}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    invoke-direct {p0, p2}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    return-void
.end method

.method private final jjMoveNfa_0(II)I
    .locals 13

    const/4 v2, 0x0

    const/16 v0, 0x4a

    iput v0, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v0, p0, Lbsh/ParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v0, v3

    const v0, 0x7fffffff

    move v8, v1

    move v9, v2

    :goto_0
    iget v1, p0, Lbsh/ParserTokenManager;->jjround:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lbsh/ParserTokenManager;->jjround:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lbsh/ParserTokenManager;->ReInitRounds()V

    :cond_0
    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v2, 0x40

    if-ge v1, v2, :cond_23

    const-wide/16 v2, 0x1

    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    shl-long/2addr v2, v1

    :cond_1
    iget-object v1, p0, Lbsh/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v8, v8, -0x1

    aget v1, v1, v8

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    if-ne v8, v9, :cond_1

    :goto_2
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    const v0, 0x7fffffff

    :cond_3
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    iput v9, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v2, v9, 0x4a

    if-ne v1, v2, :cond_32

    :goto_3
    return p2

    :pswitch_1
    const-wide v4, 0x1ffffffffL

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_7

    const/4 v1, 0x6

    if-le v0, v1, :cond_4

    const/4 v0, 0x6

    :cond_4
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    :cond_5
    :goto_4
    const-wide/high16 v4, 0x3fe000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_f

    const/16 v1, 0x3c

    if-le v0, v1, :cond_6

    const/16 v0, 0x3c

    :cond_6
    const/16 v1, 0x8

    const/16 v4, 0x9

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_1

    :cond_7
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    const/4 v4, 0x6

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_4

    :cond_8
    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v4, 0x2f

    if-ne v1, v4, :cond_9

    const/4 v1, 0x7

    const/16 v4, 0x9

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    goto :goto_4

    :cond_9
    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v4, 0x24

    if-ne v1, v4, :cond_b

    const/16 v1, 0x45

    if-le v0, v1, :cond_a

    const/16 v0, 0x45

    :cond_a
    const/16 v1, 0x23

    invoke-direct {p0, v1}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    :cond_b
    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v4, 0x22

    if-ne v1, v4, :cond_c

    const/16 v1, 0xa

    const/16 v4, 0xc

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_4

    :cond_c
    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v4, 0x27

    if-ne v1, v4, :cond_d

    const/16 v1, 0xd

    const/16 v4, 0xe

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    goto :goto_4

    :cond_d
    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v4, 0x2e

    if-ne v1, v4, :cond_e

    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    :cond_e
    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v4, 0x23

    if-ne v1, v4, :cond_5

    iget-object v1, p0, Lbsh/ParserTokenManager;->jjstateSet:[I

    iget v4, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    const/4 v5, 0x1

    aput v5, v1, v4

    goto :goto_4

    :cond_f
    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v4, 0x30

    if-ne v1, v4, :cond_2

    const/16 v1, 0x3c

    if-le v0, v1, :cond_10

    const/16 v0, 0x3c

    :cond_10
    const/16 v1, 0xf

    const/16 v4, 0x11

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    :pswitch_2
    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v4, 0x2a

    if-ne v1, v4, :cond_12

    iget-object v1, p0, Lbsh/ParserTokenManager;->jjstateSet:[I

    iget v4, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    const/16 v5, 0x43

    aput v5, v1, v4

    :cond_11
    :goto_5
    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v4, 0x2a

    if-ne v1, v4, :cond_2

    const/16 v1, 0x3e

    invoke-direct {p0, v1}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    :cond_12
    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v4, 0x2f

    if-ne v1, v4, :cond_11

    const/4 v1, 0x7

    if-le v0, v1, :cond_13

    const/4 v0, 0x7

    :cond_13
    const/16 v1, 0x12

    const/16 v4, 0x14

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_5

    :pswitch_3
    const-wide v4, 0x1ffffffffL

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/4 v1, 0x6

    if-le v0, v1, :cond_14

    const/4 v0, 0x6

    :cond_14
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    :pswitch_4
    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v4, 0x21

    if-ne v1, v4, :cond_2

    const/16 v1, 0x15

    const/16 v4, 0x17

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    :pswitch_5
    const-wide/16 v4, -0x2401

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/16 v1, 0x15

    const/16 v4, 0x17

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    :pswitch_6
    const-wide/16 v4, 0x2400

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    if-le v0, v1, :cond_2

    const/16 v0, 0x8

    goto/16 :goto_1

    :pswitch_7
    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v4, 0xa

    if-ne v1, v4, :cond_2

    const/16 v1, 0x8

    if-le v0, v1, :cond_2

    const/16 v0, 0x8

    goto/16 :goto_1

    :pswitch_8
    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v4, 0xd

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lbsh/ParserTokenManager;->jjstateSet:[I

    iget v4, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    const/4 v5, 0x4

    aput v5, v1, v4

    goto/16 :goto_1

    :pswitch_9
    const-wide/high16 v4, 0x3fe000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/16 v1, 0x3c

    if-le v0, v1, :cond_15

    const/16 v0, 0x3c

    :cond_15
    const/16 v1, 0x8

    const/16 v4, 0x9

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_1

    :pswitch_a
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/16 v1, 0x3c

    if-le v0, v1, :cond_16

    const/16 v0, 0x3c

    :cond_16
    const/16 v1, 0x8

    const/16 v4, 0x9

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_1

    :pswitch_b
    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v4, 0x2e

    if-ne v1, v4, :cond_2

    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    :pswitch_c
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/16 v1, 0x40

    if-le v0, v1, :cond_17

    const/16 v0, 0x40

    :cond_17
    const/16 v1, 0x18

    const/16 v4, 0x1a

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    :pswitch_d
    const-wide v4, 0x280000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    :pswitch_e
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/16 v1, 0x40

    if-le v0, v1, :cond_18

    const/16 v0, 0x40

    :cond_18
    const/16 v1, 0xe

    const/16 v4, 0xf

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_1

    :pswitch_f
    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v4, 0x27

    if-ne v1, v4, :cond_2

    const/16 v1, 0xd

    const/16 v4, 0xe

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_1

    :pswitch_10
    const-wide v4, -0x8000002401L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    :pswitch_11
    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v4, 0x27

    if-ne v1, v4, :cond_2

    const/16 v1, 0x42

    if-le v0, v1, :cond_2

    const/16 v0, 0x42

    goto/16 :goto_1

    :pswitch_12
    const-wide v4, 0x8400000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    :pswitch_13
    const-wide/high16 v4, 0xff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/16 v1, 0x16

    const/16 v4, 0x12

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_1

    :pswitch_14
    const-wide/high16 v4, 0xff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    :pswitch_15
    const-wide/high16 v4, 0xf000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    iget-object v1, p0, Lbsh/ParserTokenManager;->jjstateSet:[I

    iget v4, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    const/16 v5, 0x18

    aput v5, v1, v4

    goto/16 :goto_1

    :pswitch_16
    const-wide/high16 v4, 0xff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/16 v1, 0x16

    invoke-direct {p0, v1}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    :pswitch_17
    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v4, 0x22

    if-ne v1, v4, :cond_2

    const/16 v1, 0xa

    const/16 v4, 0xc

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    :pswitch_18
    const-wide v4, -0x400002401L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/16 v1, 0xa

    const/16 v4, 0xc

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    :pswitch_19
    const-wide v4, 0x8400000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/16 v1, 0xa

    const/16 v4, 0xc

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    :pswitch_1a
    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v4, 0x22

    if-ne v1, v4, :cond_2

    const/16 v1, 0x43

    if-le v0, v1, :cond_2

    const/16 v0, 0x43

    goto/16 :goto_1

    :pswitch_1b
    const-wide/high16 v4, 0xff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/16 v1, 0x1b

    const/16 v4, 0x1e

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    :pswitch_1c
    const-wide/high16 v4, 0xff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/16 v1, 0xa

    const/16 v4, 0xc

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    :pswitch_1d
    const-wide/high16 v4, 0xf000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    iget-object v1, p0, Lbsh/ParserTokenManager;->jjstateSet:[I

    iget v4, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    const/16 v5, 0x21

    aput v5, v1, v4

    goto/16 :goto_1

    :pswitch_1e
    const-wide/high16 v4, 0xff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/16 v1, 0x1f

    invoke-direct {p0, v1}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    :pswitch_1f
    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v4, 0x24

    if-ne v1, v4, :cond_2

    const/16 v1, 0x45

    if-le v0, v1, :cond_19

    const/16 v0, 0x45

    :cond_19
    const/16 v1, 0x23

    invoke-direct {p0, v1}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    :pswitch_20
    const-wide v4, 0x3ff001000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/16 v1, 0x45

    if-le v0, v1, :cond_1a

    const/16 v0, 0x45

    :cond_1a
    const/16 v1, 0x23

    invoke-direct {p0, v1}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    :pswitch_21
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    const/4 v4, 0x6

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    :pswitch_22
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/16 v1, 0x25

    const/16 v4, 0x26

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_1

    :pswitch_23
    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v4, 0x2e

    if-ne v1, v4, :cond_2

    const/16 v1, 0x40

    if-le v0, v1, :cond_1b

    const/16 v0, 0x40

    :cond_1b
    const/16 v1, 0x1f

    const/16 v4, 0x21

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    :pswitch_24
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/16 v1, 0x40

    if-le v0, v1, :cond_1c

    const/16 v0, 0x40

    :cond_1c
    const/16 v1, 0x1f

    const/16 v4, 0x21

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    :pswitch_25
    const-wide v4, 0x280000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/16 v1, 0x2a

    invoke-direct {p0, v1}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    :pswitch_26
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/16 v1, 0x40

    if-le v0, v1, :cond_1d

    const/16 v0, 0x40

    :cond_1d
    const/16 v1, 0x2a

    const/16 v4, 0xf

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_1

    :pswitch_27
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/16 v1, 0x2b

    const/16 v4, 0x2c

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_1

    :pswitch_28
    const-wide v4, 0x280000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/16 v1, 0x2e

    invoke-direct {p0, v1}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    :pswitch_29
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/16 v1, 0x40

    if-le v0, v1, :cond_1e

    const/16 v0, 0x40

    :cond_1e
    const/16 v1, 0x2e

    const/16 v4, 0xf

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_1

    :pswitch_2a
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/16 v1, 0x22

    const/16 v4, 0x24

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    :pswitch_2b
    const-wide v4, 0x280000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/16 v1, 0x32

    invoke-direct {p0, v1}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    :pswitch_2c
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/16 v1, 0x32

    const/16 v4, 0xf

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_1

    :pswitch_2d
    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v4, 0x30

    if-ne v1, v4, :cond_2

    const/16 v1, 0x3c

    if-le v0, v1, :cond_1f

    const/16 v0, 0x3c

    :cond_1f
    const/16 v1, 0xf

    const/16 v4, 0x11

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    :pswitch_2e
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/16 v1, 0x3c

    if-le v0, v1, :cond_20

    const/16 v0, 0x3c

    :cond_20
    const/16 v1, 0x35

    const/16 v4, 0x9

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_1

    :pswitch_2f
    const-wide/high16 v4, 0xff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/16 v1, 0x3c

    if-le v0, v1, :cond_21

    const/16 v0, 0x3c

    :cond_21
    const/16 v1, 0x36

    const/16 v4, 0x9

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_1

    :pswitch_30
    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v4, 0x2f

    if-ne v1, v4, :cond_2

    const/4 v1, 0x7

    const/16 v4, 0x9

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_1

    :pswitch_31
    const-wide/16 v4, -0x2401

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/4 v1, 0x7

    if-le v0, v1, :cond_22

    const/4 v0, 0x7

    :cond_22
    const/16 v1, 0x12

    const/16 v4, 0x14

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    :pswitch_32
    const-wide/16 v4, 0x2400

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/4 v1, 0x7

    if-le v0, v1, :cond_2

    const/4 v0, 0x7

    goto/16 :goto_1

    :pswitch_33
    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v4, 0xa

    if-ne v1, v4, :cond_2

    const/4 v1, 0x7

    if-le v0, v1, :cond_2

    const/4 v0, 0x7

    goto/16 :goto_1

    :pswitch_34
    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v4, 0xd

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lbsh/ParserTokenManager;->jjstateSet:[I

    iget v4, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    const/16 v5, 0x3b

    aput v5, v1, v4

    goto/16 :goto_1

    :pswitch_35
    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v4, 0x2a

    if-ne v1, v4, :cond_2

    const/16 v1, 0x3e

    invoke-direct {p0, v1}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    :pswitch_36
    const-wide v4, -0x40000000001L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/16 v1, 0x3e

    const/16 v4, 0x3f

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_1

    :pswitch_37
    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v4, 0x2a

    if-ne v1, v4, :cond_2

    const/16 v1, 0x25

    const/16 v4, 0x27

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    :pswitch_38
    const-wide v4, -0x840000000001L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/16 v1, 0x41

    const/16 v4, 0x3f

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_1

    :pswitch_39
    const-wide v4, -0x40000000001L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/16 v1, 0x41

    const/16 v4, 0x3f

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_1

    :pswitch_3a
    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v4, 0x2f

    if-ne v1, v4, :cond_2

    const/16 v1, 0x9

    if-le v0, v1, :cond_2

    const/16 v0, 0x9

    goto/16 :goto_1

    :pswitch_3b
    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v4, 0x2a

    if-ne v1, v4, :cond_2

    const/16 v1, 0x44

    const/16 v4, 0x45

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_1

    :pswitch_3c
    const-wide v4, -0x40000000001L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/16 v1, 0x44

    const/16 v4, 0x45

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_1

    :pswitch_3d
    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v4, 0x2a

    if-ne v1, v4, :cond_2

    const/16 v1, 0x28

    const/16 v4, 0x2a

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    :pswitch_3e
    const-wide v4, -0x840000000001L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/16 v1, 0x47

    const/16 v4, 0x45

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_1

    :pswitch_3f
    const-wide v4, -0x40000000001L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/16 v1, 0x47

    const/16 v4, 0x45

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_1

    :pswitch_40
    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v4, 0x2f

    if-ne v1, v4, :cond_2

    const/16 v1, 0x44

    if-le v0, v1, :cond_2

    const/16 v0, 0x44

    goto/16 :goto_1

    :pswitch_41
    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v4, 0x2a

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lbsh/ParserTokenManager;->jjstateSet:[I

    iget v4, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    const/16 v5, 0x43

    aput v5, v1, v4

    goto/16 :goto_1

    :cond_23
    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v2, 0x80

    if-ge v1, v2, :cond_29

    const-wide/16 v2, 0x1

    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v2, v1

    :cond_24
    iget-object v1, p0, Lbsh/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v8, v8, -0x1

    aget v1, v1, v8

    sparse-switch v1, :sswitch_data_0

    :cond_25
    :goto_6
    if-ne v8, v9, :cond_24

    goto/16 :goto_2

    :sswitch_0
    const-wide v4, 0x7fffffe87fffffeL

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_25

    const/16 v1, 0x45

    if-le v0, v1, :cond_26

    const/16 v0, 0x45

    :cond_26
    const/16 v1, 0x23

    invoke-direct {p0, v1}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_6

    :sswitch_1
    const/16 v1, 0x15

    const/16 v4, 0x17

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    goto :goto_6

    :sswitch_2
    const-wide v4, 0x100000001000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_25

    const/16 v1, 0x3c

    if-le v0, v1, :cond_25

    const/16 v0, 0x3c

    goto :goto_6

    :sswitch_3
    const-wide v4, 0x2000000020L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_25

    const/16 v1, 0x2b

    const/16 v4, 0x2c

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    goto :goto_6

    :sswitch_4
    const-wide v4, 0x5000000050L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_25

    const/16 v1, 0x40

    if-le v0, v1, :cond_25

    const/16 v0, 0x40

    goto :goto_6

    :sswitch_5
    const-wide/32 v4, -0x10000001

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_25

    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_6

    :sswitch_6
    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v4, 0x5c

    if-ne v1, v4, :cond_25

    const/16 v1, 0x2d

    const/16 v4, 0x2f

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    goto :goto_6

    :sswitch_7
    const-wide v4, 0x14404410000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_25

    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_6

    :sswitch_8
    const-wide/32 v4, -0x10000001

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_25

    const/16 v1, 0xa

    const/16 v4, 0xc

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_6

    :sswitch_9
    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v4, 0x5c

    if-ne v1, v4, :cond_25

    const/16 v1, 0x30

    const/16 v4, 0x32

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_6

    :sswitch_a
    const-wide v4, 0x14404410000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_25

    const/16 v1, 0xa

    const/16 v4, 0xc

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_6

    :sswitch_b
    const-wide v4, 0x2000000020L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_25

    const/16 v1, 0x33

    const/16 v4, 0x34

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_6

    :sswitch_c
    const-wide v4, 0x2000000020L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_25

    const/16 v1, 0x35

    const/16 v4, 0x36

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_6

    :sswitch_d
    const-wide v4, 0x2000000020L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_25

    const/16 v1, 0x37

    const/16 v4, 0x38

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_6

    :sswitch_e
    const-wide v4, 0x100000001000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_25

    const/16 v1, 0x35

    invoke-direct {p0, v1}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_6

    :sswitch_f
    const-wide v4, 0x7e0000007eL

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_25

    const/16 v1, 0x3c

    if-le v0, v1, :cond_27

    const/16 v0, 0x3c

    :cond_27
    const/16 v1, 0x35

    const/16 v4, 0x9

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_6

    :sswitch_10
    const/4 v1, 0x7

    if-le v0, v1, :cond_28

    const/4 v0, 0x7

    :cond_28
    const/16 v1, 0x12

    const/16 v4, 0x14

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_6

    :sswitch_11
    const/16 v1, 0x3e

    const/16 v4, 0x3f

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_6

    :sswitch_12
    const/16 v1, 0x41

    const/16 v4, 0x3f

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_6

    :sswitch_13
    const/16 v1, 0x44

    const/16 v4, 0x45

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_6

    :sswitch_14
    const/16 v1, 0x47

    const/16 v4, 0x45

    invoke-direct {p0, v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_6

    :cond_29
    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    shr-int/lit8 v1, v1, 0x8

    shr-int/lit8 v2, v1, 0x6

    const-wide/16 v4, 0x1

    and-int/lit8 v3, v1, 0x3f

    shl-long/2addr v4, v3

    iget-char v3, p0, Lbsh/ParserTokenManager;->curChar:C

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x6

    const-wide/16 v6, 0x1

    iget-char v10, p0, Lbsh/ParserTokenManager;->curChar:C

    and-int/lit8 v10, v10, 0x3f

    shl-long/2addr v6, v10

    :cond_2a
    iget-object v10, p0, Lbsh/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v8, v8, -0x1

    aget v10, v10, v8

    sparse-switch v10, :sswitch_data_1

    :cond_2b
    :goto_7
    if-ne v8, v9, :cond_2a

    goto/16 :goto_2

    :sswitch_15
    invoke-static/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_2d

    const/4 v10, 0x6

    if-le v0, v10, :cond_2c

    const/4 v0, 0x6

    :cond_2c
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    :cond_2d
    invoke-static/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjCanMove_2(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_2b

    const/16 v10, 0x45

    if-le v0, v10, :cond_2e

    const/16 v0, 0x45

    :cond_2e
    const/16 v10, 0x23

    invoke-direct {p0, v10}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_7

    :sswitch_16
    invoke-static/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_2b

    const/4 v10, 0x6

    if-le v0, v10, :cond_2f

    const/4 v0, 0x6

    :cond_2f
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_7

    :sswitch_17
    invoke-static/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjCanMove_1(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_2b

    const/16 v10, 0x15

    const/16 v11, 0x17

    invoke-direct {p0, v10, v11}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    goto :goto_7

    :sswitch_18
    invoke-static/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjCanMove_1(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_2b

    iget-object v10, p0, Lbsh/ParserTokenManager;->jjstateSet:[I

    iget v11, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    const/16 v12, 0x12

    aput v12, v10, v11

    goto :goto_7

    :sswitch_19
    invoke-static/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjCanMove_1(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_2b

    const/16 v10, 0xa

    const/16 v11, 0xc

    invoke-direct {p0, v10, v11}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    goto :goto_7

    :sswitch_1a
    invoke-static/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjCanMove_2(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_2b

    const/16 v10, 0x45

    if-le v0, v10, :cond_30

    const/16 v0, 0x45

    :cond_30
    const/16 v10, 0x23

    invoke-direct {p0, v10}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_7

    :sswitch_1b
    invoke-static/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjCanMove_1(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_2b

    const/4 v10, 0x7

    if-le v0, v10, :cond_31

    const/4 v0, 0x7

    :cond_31
    const/16 v10, 0x12

    const/16 v11, 0x14

    invoke-direct {p0, v10, v11}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_7

    :sswitch_1c
    invoke-static/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjCanMove_1(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_2b

    const/16 v10, 0x3e

    const/16 v11, 0x3f

    invoke-direct {p0, v10, v11}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_7

    :sswitch_1d
    invoke-static/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjCanMove_1(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_2b

    const/16 v10, 0x41

    const/16 v11, 0x3f

    invoke-direct {p0, v10, v11}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_7

    :sswitch_1e
    invoke-static/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjCanMove_1(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_2b

    const/16 v10, 0x44

    const/16 v11, 0x45

    invoke-direct {p0, v10, v11}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_7

    :sswitch_1f
    invoke-static/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjCanMove_1(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_2b

    const/16 v10, 0x47

    const/16 v11, 0x45

    invoke-direct {p0, v10, v11}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_7

    :cond_32
    :try_start_0
    iget-object v3, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v3}, Lbsh/JavaCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v1

    move v9, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_0
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_0
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_0
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_0
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_2
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x6 -> :sswitch_0
        0x9 -> :sswitch_2
        0xc -> :sswitch_3
        0xf -> :sswitch_4
        0x11 -> :sswitch_5
        0x13 -> :sswitch_6
        0x14 -> :sswitch_7
        0x1a -> :sswitch_8
        0x1b -> :sswitch_9
        0x1c -> :sswitch_a
        0x23 -> :sswitch_0
        0x28 -> :sswitch_b
        0x2c -> :sswitch_c
        0x30 -> :sswitch_d
        0x34 -> :sswitch_e
        0x35 -> :sswitch_f
        0x39 -> :sswitch_10
        0x3e -> :sswitch_11
        0x40 -> :sswitch_12
        0x41 -> :sswitch_12
        0x44 -> :sswitch_13
        0x46 -> :sswitch_14
        0x47 -> :sswitch_14
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_16
        0x2 -> :sswitch_17
        0x6 -> :sswitch_15
        0x11 -> :sswitch_18
        0x1a -> :sswitch_19
        0x22 -> :sswitch_1a
        0x23 -> :sswitch_1a
        0x39 -> :sswitch_1b
        0x3e -> :sswitch_1c
        0x40 -> :sswitch_1d
        0x41 -> :sswitch_1d
        0x44 -> :sswitch_1e
        0x46 -> :sswitch_1f
        0x47 -> :sswitch_1f
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa0_0()I
    .locals 14

    const-wide v4, 0x80000000L

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x6

    invoke-direct {p0, v0, v6}, Lbsh/ParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x2

    invoke-direct {p0, v6, v0, v6}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x5

    invoke-direct {p0, v6, v0, v6}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x4

    invoke-direct {p0, v6, v0, v6}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x3

    invoke-direct {p0, v6, v0, v6}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x1

    invoke-direct {p0, v6, v0, v6}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x56

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    move-object v1, p0

    move-wide v6, v2

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto :goto_0

    :sswitch_6
    const/16 v0, 0x6f

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const-wide/high16 v4, -0x8000000000000000L

    move-object v1, p0

    move-wide v6, v2

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto :goto_0

    :sswitch_7
    const/16 v0, 0x6a

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const-wide v4, 0x400000400000000L

    move-object v1, p0

    move-wide v6, v2

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto :goto_0

    :sswitch_8
    const/16 v0, 0x48

    invoke-direct {p0, v6, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_9
    const/16 v0, 0x49

    invoke-direct {p0, v6, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_a
    const/16 v0, 0x68

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const-wide/high16 v4, 0x100000000000000L

    move-object v1, p0

    move-wide v6, v2

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto :goto_0

    :sswitch_b
    const/16 v0, 0x66

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const-wide v4, 0x40001000000000L

    move-object v1, p0

    move-wide v6, v2

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto :goto_0

    :sswitch_c
    const/16 v0, 0x4f

    invoke-direct {p0, v6, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_d
    const/16 v0, 0x67

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const-wide v4, 0x80002000000000L

    move-object v1, p0

    move-wide v6, v2

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_e
    const/16 v0, 0x50

    const/16 v1, 0xb

    invoke-direct {p0, v6, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto/16 :goto_0

    :sswitch_f
    const/16 v0, 0x69

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const-wide/high16 v4, 0x200000000000000L

    move-object v1, p0

    move-wide v6, v2

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_10
    const/16 v0, 0x59

    invoke-direct {p0, v6, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    :sswitch_11
    const/16 v0, 0x4e

    invoke-direct {p0, v6, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    :sswitch_12
    const/16 v0, 0x54

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const-wide v4, 0x1000008000000L

    const-wide/16 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_13
    const/16 v0, 0x51

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const-wide/32 v4, 0x4000000

    move-object v1, p0

    move-wide v6, v2

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_14
    const/16 v0, 0x52

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const-wide v4, 0x14000020000000L

    const-wide/16 v6, 0x14

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_15
    const/16 v0, 0x58

    invoke-direct {p0, v6, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    :sswitch_16
    const-wide v4, 0x282a280a50280000L

    const-wide/16 v6, 0x2a

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_17
    const/16 v0, 0x4c

    invoke-direct {p0, v6, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    :sswitch_18
    const/16 v0, 0x4d

    invoke-direct {p0, v6, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    :sswitch_19
    const/16 v0, 0x6e

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    move-object v1, p0

    move-wide v6, v2

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_1a
    const-wide/16 v6, 0x400

    move-object v5, p0

    move-wide v8, v2

    move-wide v10, v2

    invoke-direct/range {v5 .. v11}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_1b
    const-wide/16 v6, 0x5800

    move-object v5, p0

    move-wide v8, v2

    move-wide v10, v2

    invoke-direct/range {v5 .. v11}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_1c
    const-wide/32 v6, 0xfa000

    move-object v5, p0

    move-wide v8, v2

    move-wide v10, v2

    invoke-direct/range {v5 .. v11}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_1d
    const-wide/32 v6, 0x700000

    move-object v5, p0

    move-wide v8, v2

    move-wide v10, v2

    invoke-direct/range {v5 .. v11}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_1e
    const-wide/32 v6, 0x3800000

    move-object v5, p0

    move-wide v8, v2

    move-wide v10, v2

    invoke-direct/range {v5 .. v11}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_1f
    const-wide/32 v6, 0x7c000000

    move-object v5, p0

    move-wide v8, v2

    move-wide v10, v2

    invoke-direct/range {v5 .. v11}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_20
    move-object v7, p0

    move-wide v8, v4

    move-wide v10, v2

    move-wide v12, v2

    invoke-direct/range {v7 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_21
    const-wide v6, 0x3f00000000L

    move-object v5, p0

    move-wide v8, v2

    move-wide v10, v2

    invoke-direct/range {v5 .. v11}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_22
    const-wide v6, 0x4000000000L

    move-object v5, p0

    move-wide v8, v2

    move-wide v10, v2

    invoke-direct/range {v5 .. v11}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_23
    const-wide v6, 0x38000000000L

    move-object v5, p0

    move-wide v8, v2

    move-wide v10, v2

    invoke-direct/range {v5 .. v11}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_24
    const-wide v6, 0x3c0000000000L

    move-object v5, p0

    move-wide v8, v2

    move-wide v10, v2

    invoke-direct/range {v5 .. v11}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_25
    const-wide v6, 0x400000000000L

    move-object v5, p0

    move-wide v8, v2

    move-wide v10, v2

    invoke-direct/range {v5 .. v11}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_26
    const-wide v6, 0xf800000000000L

    move-object v5, p0

    move-wide v8, v2

    move-wide v10, v2

    invoke-direct/range {v5 .. v11}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_27
    const-wide/high16 v6, 0x1f0000000000000L

    move-object v5, p0

    move-wide v8, v2

    move-wide v10, v2

    invoke-direct/range {v5 .. v11}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_28
    const-wide/high16 v6, 0x600000000000000L

    move-object v5, p0

    move-wide v8, v2

    move-wide v10, v2

    invoke-direct/range {v5 .. v11}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_29
    const-wide/high16 v6, 0x800000000000000L

    move-object v5, p0

    move-wide v8, v2

    move-wide v10, v2

    invoke-direct/range {v5 .. v11}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_2a
    const/16 v0, 0x4a

    invoke-direct {p0, v6, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    :sswitch_2b
    const/16 v0, 0x6c

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const-wide v4, 0x1000000100000000L

    move-object v1, p0

    move-wide v6, v2

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_2c
    const/16 v0, 0x4b

    invoke-direct {p0, v6, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    :sswitch_2d
    const/16 v0, 0x57

    invoke-direct {p0, v6, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_3
        0x20 -> :sswitch_4
        0x21 -> :sswitch_5
        0x25 -> :sswitch_6
        0x26 -> :sswitch_7
        0x28 -> :sswitch_8
        0x29 -> :sswitch_9
        0x2a -> :sswitch_a
        0x2b -> :sswitch_b
        0x2c -> :sswitch_c
        0x2d -> :sswitch_d
        0x2e -> :sswitch_e
        0x2f -> :sswitch_f
        0x3a -> :sswitch_10
        0x3b -> :sswitch_11
        0x3c -> :sswitch_12
        0x3d -> :sswitch_13
        0x3e -> :sswitch_14
        0x3f -> :sswitch_15
        0x40 -> :sswitch_16
        0x5b -> :sswitch_17
        0x5d -> :sswitch_18
        0x5e -> :sswitch_19
        0x61 -> :sswitch_1a
        0x62 -> :sswitch_1b
        0x63 -> :sswitch_1c
        0x64 -> :sswitch_1d
        0x65 -> :sswitch_1e
        0x66 -> :sswitch_1f
        0x67 -> :sswitch_20
        0x69 -> :sswitch_21
        0x6c -> :sswitch_22
        0x6e -> :sswitch_23
        0x70 -> :sswitch_24
        0x72 -> :sswitch_25
        0x73 -> :sswitch_26
        0x74 -> :sswitch_27
        0x76 -> :sswitch_28
        0x77 -> :sswitch_29
        0x7b -> :sswitch_2a
        0x7c -> :sswitch_2b
        0x7d -> :sswitch_2c
        0x7e -> :sswitch_2d
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa10_0(JJJJJJ)I
    .locals 25

    and-long v4, p3, p1

    and-long v6, p7, p5

    or-long v2, v4, v6

    and-long v8, p11, p9

    or-long/2addr v2, v8

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-nez v2, :cond_0

    const/16 v3, 0x8

    move-object/from16 v2, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p5

    move-wide/from16 v8, p9

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v2}, Lbsh/JavaCharStream;->readChar()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v2, v0, Lbsh/ParserTokenManager;->curChar:C

    sparse-switch v2, :sswitch_data_0

    :cond_1
    const/16 v3, 0x9

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v2

    const/16 v3, 0x9

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v2, 0xa

    goto :goto_0

    :sswitch_0
    const-wide/high16 v14, 0x8000000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa11_0(JJJJJJ)I

    move-result v2

    goto :goto_0

    :sswitch_1
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x8000000000000L

    const-wide/16 v22, 0x8

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa11_0(JJJJJJ)I

    move-result v2

    goto :goto_0

    :sswitch_2
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x20000000000000L

    const-wide/16 v22, 0x20

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa11_0(JJJJJJ)I

    move-result v2

    goto :goto_0

    :sswitch_3
    const-wide/high16 v2, 0x800000000000000L

    and-long/2addr v2, v6

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_2

    const/16 v2, 0xa

    const/16 v3, 0x7b

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v2

    goto :goto_0

    :cond_2
    const-wide/16 v14, 0x0

    const-wide v18, 0x80000000000L

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa11_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :sswitch_4
    const-wide v2, 0x200000000000L

    and-long/2addr v2, v6

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    const/16 v2, 0xa

    const/16 v3, 0x6d

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v2

    goto/16 :goto_0

    :sswitch_5
    const-wide/high16 v2, 0x2000000000000L

    and-long/2addr v2, v6

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_3

    const/16 v2, 0x71

    move-object/from16 v0, p0

    iput v2, v0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/16 v2, 0xa

    move-object/from16 v0, p0

    iput v2, v0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    :cond_3
    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x2

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa11_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0x69 -> :sswitch_2
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_5
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa11_0(JJJJJJ)I
    .locals 25

    and-long v4, p3, p1

    and-long v6, p7, p5

    or-long v2, v4, v6

    and-long v8, p11, p9

    or-long/2addr v2, v8

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-nez v2, :cond_0

    const/16 v3, 0x9

    move-object/from16 v2, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p5

    move-wide/from16 v8, p9

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v2}, Lbsh/JavaCharStream;->readChar()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v2, v0, Lbsh/ParserTokenManager;->curChar:C

    sparse-switch v2, :sswitch_data_0

    :cond_1
    const/16 v3, 0xa

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v2

    const/16 v3, 0xa

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v2, 0xb

    goto :goto_0

    :sswitch_0
    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x2

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa12_0(JJJJJJ)I

    move-result v2

    goto :goto_0

    :sswitch_1
    const-wide/high16 v2, 0x8000000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_2

    const/16 v2, 0xb

    const/16 v3, 0x33

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto :goto_0

    :cond_2
    const-wide v2, 0x80000000000L

    and-long/2addr v2, v6

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    const/16 v2, 0xb

    const/16 v3, 0x6b

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v2

    goto :goto_0

    :sswitch_2
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x20000000000000L

    const-wide/16 v22, 0x20

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa12_0(JJJJJJ)I

    move-result v2

    goto :goto_0

    :sswitch_3
    const-wide/high16 v2, 0x8000000000000L

    and-long/2addr v2, v6

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_3

    const/16 v2, 0x73

    move-object/from16 v0, p0

    iput v2, v0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/16 v2, 0xb

    move-object/from16 v0, p0

    iput v2, v0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    :cond_3
    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x8

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa12_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x5f -> :sswitch_0
        0x64 -> :sswitch_1
        0x67 -> :sswitch_2
        0x74 -> :sswitch_3
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa12_0(JJJJJJ)I
    .locals 21

    and-long v2, p3, p1

    and-long v6, p7, p5

    or-long/2addr v2, v6

    and-long v8, p11, p9

    or-long/2addr v2, v8

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/16 v3, 0xa

    move-object/from16 v2, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p5

    move-wide/from16 v8, p9

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v2}, Lbsh/JavaCharStream;->readChar()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v2, v0, Lbsh/ParserTokenManager;->curChar:C

    sparse-switch v2, :sswitch_data_0

    const/16 v3, 0xb

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v2

    const/16 v3, 0xb

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v2, 0xc

    goto :goto_0

    :sswitch_0
    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x8

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa13_0(JJJJ)I

    move-result v2

    goto :goto_0

    :sswitch_1
    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x2

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa13_0(JJJJ)I

    move-result v2

    goto :goto_0

    :sswitch_2
    const-wide/high16 v14, 0x20000000000000L

    const-wide/16 v18, 0x20

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa13_0(JJJJ)I

    move-result v2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x5f -> :sswitch_0
        0x61 -> :sswitch_1
        0x6e -> :sswitch_2
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa13_0(JJJJ)I
    .locals 21

    and-long v6, p3, p1

    and-long v8, p7, p5

    or-long v2, v6, v8

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/16 v3, 0xb

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v2}, Lbsh/JavaCharStream;->readChar()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v2, v0, Lbsh/ParserTokenManager;->curChar:C

    sparse-switch v2, :sswitch_data_0

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v2

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v2, 0xd

    goto :goto_0

    :sswitch_0
    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x8

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa14_0(JJJJ)I

    move-result v2

    goto :goto_0

    :sswitch_1
    const-wide/high16 v14, 0x20000000000000L

    const-wide/16 v18, 0x20

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa14_0(JJJJ)I

    move-result v2

    goto :goto_0

    :sswitch_2
    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x2

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa14_0(JJJJ)I

    move-result v2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_0
        0x65 -> :sswitch_1
        0x73 -> :sswitch_2
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa14_0(JJJJ)I
    .locals 21

    and-long v6, p3, p1

    and-long v8, p7, p5

    or-long v2, v6, v8

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v2}, Lbsh/JavaCharStream;->readChar()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v2, v0, Lbsh/ParserTokenManager;->curChar:C

    sparse-switch v2, :sswitch_data_0

    const/16 v3, 0xd

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v2

    const/16 v3, 0xd

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v2, 0xe

    goto :goto_0

    :sswitch_0
    const-wide/high16 v14, 0x20000000000000L

    const-wide/16 v18, 0x20

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa15_0(JJJJ)I

    move-result v2

    goto :goto_0

    :sswitch_1
    const-wide/16 v14, 0x0

    const-wide/16 v18, 0xa

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa15_0(JJJJ)I

    move-result v2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x73 -> :sswitch_1
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa15_0(JJJJ)I
    .locals 21

    and-long v6, p3, p1

    and-long v8, p7, p5

    or-long v2, v6, v8

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/16 v3, 0xd

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v2}, Lbsh/JavaCharStream;->readChar()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v2, v0, Lbsh/ParserTokenManager;->curChar:C

    sparse-switch v2, :sswitch_data_0

    const/16 v3, 0xe

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v2

    const/16 v3, 0xe

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v2, 0xf

    goto :goto_0

    :sswitch_0
    const-wide/high16 v14, 0x20000000000000L

    const-wide/16 v18, 0x20

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa16_0(JJJJ)I

    move-result v2

    goto :goto_0

    :sswitch_1
    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x2

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa16_0(JJJJ)I

    move-result v2

    goto :goto_0

    :sswitch_2
    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x8

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa16_0(JJJJ)I

    move-result v2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x5f -> :sswitch_0
        0x69 -> :sswitch_1
        0x73 -> :sswitch_2
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa16_0(JJJJ)I
    .locals 21

    and-long v6, p3, p1

    and-long v8, p7, p5

    or-long v2, v6, v8

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/16 v3, 0xe

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v2}, Lbsh/JavaCharStream;->readChar()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v2, v0, Lbsh/ParserTokenManager;->curChar:C

    sparse-switch v2, :sswitch_data_0

    const/16 v3, 0xf

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v2

    const/16 v3, 0xf

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v2, 0x10

    goto :goto_0

    :sswitch_0
    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x2

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa17_0(JJJJ)I

    move-result v2

    goto :goto_0

    :sswitch_1
    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x8

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa17_0(JJJJ)I

    move-result v2

    goto :goto_0

    :sswitch_2
    const-wide/high16 v14, 0x20000000000000L

    const-wide/16 v18, 0x20

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa17_0(JJJJ)I

    move-result v2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x67 -> :sswitch_0
        0x69 -> :sswitch_1
        0x73 -> :sswitch_2
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa17_0(JJJJ)I
    .locals 21

    and-long v6, p3, p1

    and-long v8, p7, p5

    or-long v2, v6, v8

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/16 v3, 0xf

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v2}, Lbsh/JavaCharStream;->readChar()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v2, v0, Lbsh/ParserTokenManager;->curChar:C

    sparse-switch v2, :sswitch_data_0

    :cond_1
    const/16 v3, 0x10

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v2

    const/16 v3, 0x10

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v2, 0x11

    goto :goto_0

    :sswitch_0
    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x8

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa18_0(JJJJ)I

    move-result v2

    goto :goto_0

    :sswitch_1
    const-wide/high16 v14, 0x20000000000000L

    const-wide/16 v18, 0x20

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa18_0(JJJJ)I

    move-result v2

    goto :goto_0

    :sswitch_2
    const-wide/16 v2, 0x2

    and-long/2addr v2, v8

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/16 v2, 0x11

    const/16 v3, 0x81

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x67 -> :sswitch_0
        0x68 -> :sswitch_1
        0x6e -> :sswitch_2
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa18_0(JJJJ)I
    .locals 21

    and-long v6, p3, p1

    and-long v8, p7, p5

    or-long v2, v6, v8

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/16 v3, 0x10

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v2}, Lbsh/JavaCharStream;->readChar()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v2, v0, Lbsh/ParserTokenManager;->curChar:C

    sparse-switch v2, :sswitch_data_0

    :cond_1
    const/16 v3, 0x11

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v2

    const/16 v3, 0x11

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v2, 0x12

    goto :goto_0

    :sswitch_0
    const-wide/high16 v14, 0x20000000000000L

    const-wide/16 v18, 0x20

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa19_0(JJJJ)I

    move-result v2

    goto :goto_0

    :sswitch_1
    const-wide/16 v2, 0x8

    and-long/2addr v2, v8

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/16 v2, 0x12

    const/16 v3, 0x83

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x69 -> :sswitch_0
        0x6e -> :sswitch_1
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa19_0(JJJJ)I
    .locals 21

    and-long v6, p3, p1

    and-long v8, p7, p5

    or-long v2, v6, v8

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/16 v3, 0x11

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v2}, Lbsh/JavaCharStream;->readChar()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v2, v0, Lbsh/ParserTokenManager;->curChar:C

    packed-switch v2, :pswitch_data_0

    const/16 v3, 0x12

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v2

    const/16 v3, 0x12

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v2, 0x13

    goto :goto_0

    :pswitch_0
    const-wide/high16 v14, 0x20000000000000L

    const-wide/16 v18, 0x20

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa20_0(JJJJ)I

    move-result v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa1_0(JJJ)I
    .locals 15

    :try_start_0
    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v1, 0x0

    move-object v0, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    move-object v0, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_0
    const-wide v0, 0x400000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0x62

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_1
    const-wide v0, 0x1000000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_2
    const-wide v0, 0x2000000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0x65

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_3
    const-wide/high16 v0, 0x1000000000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x70

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x1

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    :cond_1
    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x1

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    goto :goto_0

    :sswitch_4
    const-wide/32 v0, 0x4000000

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    const/16 v1, 0x5a

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    :cond_2
    const-wide/32 v0, 0x8000000

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    const/16 v1, 0x5b

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    :cond_3
    const-wide/32 v0, 0x20000000

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    const/16 v1, 0x5d

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    :cond_4
    const-wide v0, 0x80000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    const/16 v1, 0x5f

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    :cond_5
    const-wide/high16 v0, 0x40000000000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    const/16 v1, 0x76

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    :cond_6
    const-wide/high16 v0, 0x80000000000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    const/16 v1, 0x77

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    :cond_7
    const-wide/high16 v0, 0x100000000000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    const/16 v1, 0x78

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    :cond_8
    const-wide/high16 v0, 0x200000000000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    const/16 v1, 0x79

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    :cond_9
    const-wide/high16 v0, 0x400000000000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    const/16 v1, 0x7a

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    :cond_a
    const-wide/high16 v0, 0x1000000000000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    const/16 v1, 0x7c

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    :cond_b
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    const/16 v1, 0x7e

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    :cond_c
    const-wide/high16 v0, -0x8000000000000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0x7f

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    :sswitch_5
    const-wide/high16 v0, 0x4000000000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/16 v0, 0x72

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x1

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    :cond_d
    const-wide/16 v4, 0x0

    const-wide/high16 v8, 0x10000000000000L

    const-wide/16 v12, 0x14

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_6
    const-wide v4, 0x48004018000L

    const-wide v8, 0x800000800000000L

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_7
    const-wide/16 v4, 0x400

    const-wide v8, 0x280000000000L

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_8
    const-wide v4, 0x410000100000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_9
    const-wide v0, 0x100000000L

    and-long v0, v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0x20

    const/16 v2, 0x23

    invoke-direct {p0, v0, v1, v2}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto/16 :goto_0

    :sswitch_a
    const-wide/16 v4, 0x0

    const-wide/32 v8, 0x40080000

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_b
    const-wide v4, 0x860800000020000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_c
    const-wide/32 v4, 0x18000000

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_d
    const-wide/32 v4, 0x20802000

    const-wide v8, 0x2000010200000L

    const-wide/16 v12, 0x2

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_e
    const-wide v4, 0x600000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_f
    const-wide v4, 0x3801000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_10
    const-wide/32 v0, 0x200000

    and-long v0, v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/16 v0, 0x15

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x1

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    :cond_e
    const-wide v4, 0x6000040c04c0800L

    const-wide v8, 0x2000000200000000L

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_11
    const-wide v4, 0x190180000001000L

    const-wide/high16 v8, 0x28000000000000L

    const-wide/16 v12, 0x28

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_12
    const-wide/high16 v4, 0x3000000000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_13
    const-wide v4, 0x220000000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_14
    const-wide/high16 v4, 0x4000000000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_15
    const-wide/32 v4, 0x2000000

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_16
    const-wide v4, 0x8000000004000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_17
    const-wide v0, 0x100000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0x60

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_0
        0x2b -> :sswitch_1
        0x2d -> :sswitch_2
        0x3c -> :sswitch_3
        0x3d -> :sswitch_4
        0x3e -> :sswitch_5
        0x61 -> :sswitch_6
        0x62 -> :sswitch_7
        0x65 -> :sswitch_8
        0x66 -> :sswitch_9
        0x67 -> :sswitch_a
        0x68 -> :sswitch_b
        0x69 -> :sswitch_c
        0x6c -> :sswitch_d
        0x6d -> :sswitch_e
        0x6e -> :sswitch_f
        0x6f -> :sswitch_10
        0x72 -> :sswitch_11
        0x74 -> :sswitch_12
        0x75 -> :sswitch_13
        0x77 -> :sswitch_14
        0x78 -> :sswitch_15
        0x79 -> :sswitch_16
        0x7c -> :sswitch_17
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa20_0(JJJJ)I
    .locals 21

    and-long v6, p3, p1

    and-long v8, p7, p5

    or-long v2, v6, v8

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/16 v3, 0x12

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v2}, Lbsh/JavaCharStream;->readChar()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v2, v0, Lbsh/ParserTokenManager;->curChar:C

    packed-switch v2, :pswitch_data_0

    const/16 v3, 0x13

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v2

    const/16 v3, 0x13

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v2, 0x14

    goto :goto_0

    :pswitch_0
    const-wide/high16 v2, 0x20000000000000L

    and-long/2addr v2, v6

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/16 v2, 0x75

    move-object/from16 v0, p0

    iput v2, v0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/16 v2, 0x14

    move-object/from16 v0, p0

    iput v2, v0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    :cond_1
    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x20

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa21_0(JJJJ)I

    move-result v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x74
        :pswitch_0
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa21_0(JJJJ)I
    .locals 9

    and-long v0, p3, p1

    and-long v6, p7, p5

    or-long/2addr v0, v6

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/16 v1, 0x13

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    const/16 v1, 0x14

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v1, 0x14

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v0, 0x15

    goto :goto_0

    :pswitch_0
    const-wide/16 v0, 0x20

    invoke-direct {p0, v6, v7, v0, v1}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa22_0(JJ)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5f
        :pswitch_0
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa22_0(JJ)I
    .locals 9

    const/16 v1, 0x15

    const-wide/16 v2, 0x0

    and-long v6, p3, p1

    cmp-long v0, v6, v2

    if-nez v0, :cond_0

    const/16 v1, 0x14

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v0, 0x16

    goto :goto_0

    :pswitch_0
    const-wide/16 v0, 0x20

    invoke-direct {p0, v6, v7, v0, v1}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa23_0(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_0
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa23_0(JJ)I
    .locals 9

    const/16 v1, 0x16

    const-wide/16 v2, 0x0

    and-long v6, p3, p1

    cmp-long v0, v6, v2

    if-nez v0, :cond_0

    const/16 v1, 0x15

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v0, 0x17

    goto :goto_0

    :pswitch_0
    const-wide/16 v0, 0x20

    invoke-direct {p0, v6, v7, v0, v1}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa24_0(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x73
        :pswitch_0
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa24_0(JJ)I
    .locals 9

    const/16 v1, 0x17

    const-wide/16 v2, 0x0

    and-long v6, p3, p1

    cmp-long v0, v6, v2

    if-nez v0, :cond_0

    const/16 v1, 0x16

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v0, 0x18

    goto :goto_0

    :pswitch_0
    const-wide/16 v0, 0x20

    invoke-direct {p0, v6, v7, v0, v1}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa25_0(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x73
        :pswitch_0
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa25_0(JJ)I
    .locals 9

    const/16 v1, 0x18

    const-wide/16 v2, 0x0

    and-long v6, p3, p1

    cmp-long v0, v6, v2

    if-nez v0, :cond_0

    const/16 v1, 0x17

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v0, 0x19

    goto :goto_0

    :pswitch_0
    const-wide/16 v0, 0x20

    invoke-direct {p0, v6, v7, v0, v1}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa26_0(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x69
        :pswitch_0
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa26_0(JJ)I
    .locals 9

    const/16 v1, 0x19

    const-wide/16 v2, 0x0

    and-long v6, p3, p1

    cmp-long v0, v6, v2

    if-nez v0, :cond_0

    const/16 v1, 0x18

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v0, 0x1a

    goto :goto_0

    :pswitch_0
    const-wide/16 v0, 0x20

    invoke-direct {p0, v6, v7, v0, v1}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa27_0(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_0
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa27_0(JJ)I
    .locals 9

    const/16 v8, 0x1b

    const/16 v1, 0x1a

    const-wide/16 v2, 0x0

    and-long v6, p3, p1

    cmp-long v0, v6, v2

    if-nez v0, :cond_0

    const/16 v1, 0x19

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    :cond_1
    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    move v0, v8

    goto :goto_0

    :pswitch_0
    const-wide/16 v4, 0x20

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x85

    invoke-direct {p0, v8, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x6e
        :pswitch_0
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa2_0(JJJJJJ)I
    .locals 25

    and-long v4, p3, p1

    and-long v6, p7, p5

    or-long v2, v4, v6

    and-long v8, p11, p9

    or-long/2addr v2, v8

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-nez v2, :cond_0

    const/4 v3, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p5

    move-wide/from16 v8, p9

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v2}, Lbsh/JavaCharStream;->readChar()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v2, v0, Lbsh/ParserTokenManager;->curChar:C

    sparse-switch v2, :sswitch_data_0

    :cond_1
    const/4 v3, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_0
    const-wide/16 v2, 0x1

    and-long/2addr v2, v8

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    const/16 v3, 0x80

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v2

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x4

    and-long/2addr v2, v8

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    const/16 v3, 0x82

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v2

    goto :goto_0

    :sswitch_1
    const-wide/high16 v2, 0x10000000000000L

    and-long/2addr v2, v6

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_3

    const/16 v2, 0x74

    move-object/from16 v0, p0

    iput v2, v0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    :cond_3
    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x10

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v2

    goto :goto_0

    :sswitch_2
    const-wide v14, 0x11000000022000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :sswitch_3
    const-wide v14, 0x200000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :sswitch_4
    const-wide v14, 0x40000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :sswitch_5
    const-wide/16 v14, 0x1000

    const-wide/high16 v18, 0x2000000000000L

    const-wide/16 v22, 0x2

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :sswitch_6
    const-wide/32 v14, 0x100000

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :sswitch_7
    const-wide v14, 0xa04080000000000L

    const-wide v18, 0x28280000000000L

    const-wide/16 v22, 0x28

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :sswitch_8
    const-wide v14, 0x400020004000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :sswitch_9
    const-wide v14, 0x80040180c0000L

    const-wide v18, 0x800000800000000L

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :sswitch_a
    const-wide v14, 0x900020000800L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :sswitch_b
    const-wide v14, 0x600000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :sswitch_c
    const-wide/32 v2, 0x40000000

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    const/16 v3, 0x1e

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto/16 :goto_0

    :cond_4
    const-wide v2, 0x200000000L

    and-long/2addr v2, v6

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_5

    const/16 v2, 0x61

    move-object/from16 v0, p0

    iput v2, v0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    :cond_5
    const-wide/high16 v14, 0x62000000000000L

    const-wide/high16 v18, 0x2000000000000000L

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :sswitch_d
    const-wide v14, 0x800808400L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :sswitch_e
    const-wide v2, 0x1000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_7

    const/16 v2, 0x24

    move-object/from16 v0, p0

    iput v2, v0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    :cond_6
    :goto_1
    const-wide v14, 0x40a082014000L

    const-wide/32 v18, 0x50000000

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :cond_7
    const-wide/32 v2, 0x80000

    and-long/2addr v2, v6

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_8

    const/16 v2, 0x53

    move-object/from16 v0, p0

    iput v2, v0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    goto :goto_1

    :cond_8
    const-wide/32 v2, 0x200000

    and-long/2addr v2, v6

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_6

    const/16 v2, 0x55

    move-object/from16 v0, p0

    iput v2, v0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    goto :goto_1

    :sswitch_f
    const-wide v14, 0x80000001400000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :sswitch_10
    const-wide v2, 0x10000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    const/16 v3, 0x28

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto/16 :goto_0

    :sswitch_11
    const-wide/high16 v2, 0x100000000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    const/16 v3, 0x38

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3d -> :sswitch_0
        0x3e -> :sswitch_1
        0x61 -> :sswitch_2
        0x62 -> :sswitch_3
        0x63 -> :sswitch_4
        0x65 -> :sswitch_5
        0x66 -> :sswitch_6
        0x69 -> :sswitch_7
        0x6c -> :sswitch_8
        0x6e -> :sswitch_9
        0x6f -> :sswitch_a
        0x70 -> :sswitch_b
        0x72 -> :sswitch_c
        0x73 -> :sswitch_d
        0x74 -> :sswitch_e
        0x75 -> :sswitch_f
        0x77 -> :sswitch_10
        0x79 -> :sswitch_11
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa3_0(JJJJJJ)I
    .locals 25

    and-long v4, p3, p1

    and-long v6, p7, p5

    or-long v2, v4, v6

    and-long v8, p11, p9

    or-long/2addr v2, v8

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-nez v2, :cond_0

    const/4 v3, 0x1

    move-object/from16 v2, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p5

    move-wide/from16 v8, p9

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v2}, Lbsh/JavaCharStream;->readChar()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v2, v0, Lbsh/ParserTokenManager;->curChar:C

    sparse-switch v2, :sswitch_data_0

    :cond_1
    const/4 v3, 0x2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_0
    const-wide/16 v2, 0x10

    and-long/2addr v2, v8

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    const/16 v3, 0x84

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v2

    goto :goto_0

    :sswitch_1
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x2000000000000000L

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v2

    goto :goto_0

    :sswitch_2
    const-wide v14, 0x400000038101000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v2

    goto :goto_0

    :sswitch_3
    const-wide/32 v14, 0x400000

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v2

    goto :goto_0

    :sswitch_4
    const-wide v14, 0x8000000010000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :sswitch_5
    const-wide/high16 v2, 0x200000000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    const/16 v3, 0x39

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto/16 :goto_0

    :cond_2
    const-wide v2, 0x800000000L

    and-long/2addr v2, v6

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_3

    const/16 v2, 0x63

    move-object/from16 v0, p0

    iput v2, v0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    :cond_3
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x800000000000000L

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :sswitch_6
    const-wide/16 v2, 0x4000

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_4

    const/4 v2, 0x3

    const/16 v3, 0xe

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto/16 :goto_0

    :cond_4
    const-wide/32 v2, 0x8000

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_5

    const/4 v2, 0x3

    const/16 v3, 0xf

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto/16 :goto_0

    :cond_5
    const-wide/32 v2, 0x800000

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_6

    const/4 v2, 0x3

    const/16 v3, 0x17

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto/16 :goto_0

    :cond_6
    const-wide/high16 v2, 0x80000000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_7

    const/4 v2, 0x3

    const/16 v3, 0x37

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto/16 :goto_0

    :cond_7
    const-wide v14, 0x2002000000L

    const-wide/32 v18, 0x50000000

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :sswitch_7
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x2000000000000L

    const-wide/16 v22, 0x2

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :sswitch_8
    const-wide v2, 0x4000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_8

    const/4 v2, 0x3

    const/16 v3, 0x26

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto/16 :goto_0

    :cond_8
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x28000000000000L

    const-wide/16 v22, 0x28

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :sswitch_9
    const-wide v14, 0x2008000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :sswitch_a
    const-wide v14, 0x40000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :sswitch_b
    const-wide v2, 0x20000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_9

    const/4 v2, 0x3

    const/16 v3, 0x29

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto/16 :goto_0

    :cond_9
    const-wide v14, 0x800200200000800L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :sswitch_c
    const-wide/32 v2, 0x1000000

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    const/16 v3, 0x18

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto/16 :goto_0

    :sswitch_d
    const-wide/high16 v14, 0x10000000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :sswitch_e
    const-wide v2, 0x80000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_a

    const/4 v2, 0x3

    const/16 v3, 0x1f

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto/16 :goto_0

    :cond_a
    const-wide v14, 0x60000400000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :sswitch_f
    const-wide/32 v2, 0x20000

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_b

    const/4 v2, 0x3

    const/16 v3, 0x11

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto/16 :goto_0

    :cond_b
    const-wide v14, 0x800000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :sswitch_10
    const-wide/32 v14, 0x4042000

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :sswitch_11
    const-wide v14, 0x5100800080400L

    const-wide v18, 0x280000000000L

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :sswitch_12
    const-wide v14, 0x400000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :sswitch_13
    const-wide v14, 0x80000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3d -> :sswitch_0
        0x5f -> :sswitch_1
        0x61 -> :sswitch_2
        0x62 -> :sswitch_3
        0x63 -> :sswitch_4
        0x64 -> :sswitch_5
        0x65 -> :sswitch_6
        0x66 -> :sswitch_7
        0x67 -> :sswitch_8
        0x69 -> :sswitch_9
        0x6b -> :sswitch_a
        0x6c -> :sswitch_b
        0x6d -> :sswitch_c
        0x6e -> :sswitch_d
        0x6f -> :sswitch_e
        0x72 -> :sswitch_f
        0x73 -> :sswitch_10
        0x74 -> :sswitch_11
        0x75 -> :sswitch_12
        0x76 -> :sswitch_13
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa4_0(JJJJJJ)I
    .locals 25

    and-long v4, p3, p1

    and-long v6, p7, p5

    or-long v2, v4, v6

    and-long v8, p11, p9

    or-long/2addr v2, v8

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-nez v2, :cond_0

    const/4 v3, 0x2

    move-object/from16 v2, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p5

    move-wide/from16 v8, p9

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v2}, Lbsh/JavaCharStream;->readChar()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v2, v0, Lbsh/ParserTokenManager;->curChar:C

    packed-switch v2, :pswitch_data_0

    :cond_1
    :pswitch_0
    const/4 v3, 0x3

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x3

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/4 v2, 0x4

    goto :goto_0

    :pswitch_1
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x800000000000000L

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v2

    goto :goto_0

    :pswitch_2
    const-wide v14, 0xc0800000000L

    const-wide/high16 v18, 0x2000000000000000L

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v2

    goto :goto_0

    :pswitch_3
    const-wide/high16 v14, 0x6000000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v2

    goto :goto_0

    :pswitch_4
    const-wide/32 v2, 0x4000000

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    const/16 v3, 0x1a

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto :goto_0

    :cond_2
    const-wide/high16 v2, 0x800000000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    const/16 v3, 0x3b

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto/16 :goto_0

    :cond_3
    const-wide v14, 0x100200000800L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_5
    const-wide/32 v2, 0x10000

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    const/16 v3, 0x10

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto/16 :goto_0

    :cond_4
    const-wide/high16 v14, 0x8000000000000L

    const-wide/high16 v18, 0x28000000000000L

    const-wide/16 v22, 0x28

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_6
    const-wide v14, 0x1200000080000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_7
    const-wide/16 v2, 0x1000

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    const/16 v3, 0xc

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto/16 :goto_0

    :pswitch_8
    const-wide/32 v2, 0x8000000

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_5

    const/16 v2, 0x1b

    move-object/from16 v0, p0

    iput v2, v0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    :cond_5
    const-wide/32 v14, 0x10400000

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_9
    const-wide/32 v14, 0x2000000

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_a
    const-wide/32 v2, 0x10000000

    and-long/2addr v2, v6

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_6

    const/4 v2, 0x4

    const/16 v3, 0x5c

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v2

    goto/16 :goto_0

    :cond_6
    const-wide/32 v2, 0x40000000

    and-long/2addr v2, v6

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    const/16 v3, 0x5e

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v2

    goto/16 :goto_0

    :pswitch_b
    const-wide v14, 0x402400000400L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_c
    const-wide/16 v2, 0x2000

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_7

    const/4 v2, 0x4

    const/16 v3, 0xd

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto/16 :goto_0

    :cond_7
    const-wide/high16 v14, 0x10000000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_d
    const-wide/32 v2, 0x40000

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_8

    const/4 v2, 0x4

    const/16 v3, 0x12

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto/16 :goto_0

    :cond_8
    const-wide/32 v2, 0x20000000

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_9

    const/4 v2, 0x4

    const/16 v3, 0x1d

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto/16 :goto_0

    :cond_9
    const-wide v2, 0x800000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_a

    const/4 v2, 0x4

    const/16 v3, 0x2f

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto/16 :goto_0

    :cond_a
    const-wide/high16 v14, 0x400000000000000L

    const-wide/high16 v18, 0x2000000000000L

    const-wide/16 v22, 0x2

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_e
    const-wide/32 v14, 0x100000

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_f
    const-wide v14, 0x8000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_10
    const-wide/high16 v2, 0x20000000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_b

    const/16 v2, 0x35

    move-object/from16 v0, p0

    iput v2, v0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    :cond_b
    const-wide/high16 v14, 0x40000000000000L

    const-wide v18, 0x280000000000L

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x5f
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa5_0(JJJJJJ)I
    .locals 25

    and-long v4, p3, p1

    and-long v6, p7, p5

    or-long v2, v4, v6

    and-long v8, p11, p9

    or-long/2addr v2, v8

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-nez v2, :cond_0

    const/4 v3, 0x3

    move-object/from16 v2, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p5

    move-wide/from16 v8, p9

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v2}, Lbsh/JavaCharStream;->readChar()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v2, v0, Lbsh/ParserTokenManager;->curChar:C

    packed-switch v2, :pswitch_data_0

    :cond_1
    :pswitch_0
    const/4 v3, 0x4

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x4

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/4 v2, 0x5

    goto :goto_0

    :pswitch_1
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x2000000000000L

    const-wide/16 v22, 0x2

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJJJ)I

    move-result v2

    goto :goto_0

    :pswitch_2
    const-wide/16 v14, 0xc00

    const-wide/high16 v18, 0x800000000000000L

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJJJ)I

    move-result v2

    goto :goto_0

    :pswitch_3
    const-wide v2, 0x200000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_2

    const/4 v2, 0x5

    const/16 v3, 0x2d

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto :goto_0

    :cond_2
    const-wide/high16 v2, 0x1000000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_3

    const/4 v2, 0x5

    const/16 v3, 0x30

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto :goto_0

    :cond_3
    const-wide v14, 0x100000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_4
    const-wide/32 v14, 0x2000000

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_5
    const-wide/32 v2, 0x400000

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    const/16 v3, 0x16

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto/16 :goto_0

    :cond_4
    const-wide v2, 0x8000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    const/16 v3, 0x27

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto/16 :goto_0

    :pswitch_6
    const-wide v14, 0x2000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_7
    const-wide v14, 0x40000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_8
    const-wide/high16 v2, 0x4000000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    const/16 v3, 0x32

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto/16 :goto_0

    :pswitch_9
    const-wide/high16 v14, 0x410000000000000L

    const-wide v18, 0x280000000000L

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_a
    const-wide/32 v14, 0x10100000

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_b
    const-wide v14, 0x200000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_c
    const-wide v2, 0x400000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    const/16 v3, 0x2e

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto/16 :goto_0

    :cond_5
    const-wide v14, 0x800080000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_d
    const-wide/high16 v14, 0x8000000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_e
    const-wide/high16 v2, 0x40000000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_6

    const/4 v2, 0x5

    const/16 v3, 0x36

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto/16 :goto_0

    :cond_6
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x2000000000000000L

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_f
    const-wide v2, 0x400000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_7

    const/4 v2, 0x5

    const/16 v3, 0x22

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto/16 :goto_0

    :cond_7
    const-wide v14, 0x2080000000000L

    const-wide/high16 v18, 0x28000000000000L

    const-wide/16 v22, 0x28

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x5f
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa6_0(JJJJJJ)I
    .locals 25

    and-long v4, p3, p1

    and-long v6, p7, p5

    or-long v2, v4, v6

    and-long v8, p11, p9

    or-long/2addr v2, v8

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-nez v2, :cond_0

    const/4 v3, 0x4

    move-object/from16 v2, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p5

    move-wide/from16 v8, p9

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v2}, Lbsh/JavaCharStream;->readChar()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v2, v0, Lbsh/ParserTokenManager;->curChar:C

    packed-switch v2, :pswitch_data_0

    :cond_1
    :pswitch_0
    const/4 v3, 0x5

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x5

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/4 v2, 0x6

    goto :goto_0

    :pswitch_1
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x28000000000000L

    const-wide/16 v22, 0x28

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJJJ)I

    move-result v2

    goto :goto_0

    :pswitch_2
    const-wide v14, 0x2000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJJJ)I

    move-result v2

    goto :goto_0

    :pswitch_3
    const-wide v14, 0x800000400L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJJJ)I

    move-result v2

    goto :goto_0

    :pswitch_4
    const-wide v2, 0x40000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_2

    const/4 v2, 0x6

    const/16 v3, 0x2a

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto :goto_0

    :cond_2
    const-wide v2, 0x80000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_3

    const/4 v2, 0x6

    const/16 v3, 0x2b

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto/16 :goto_0

    :cond_3
    const-wide v14, 0x10000200000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_5
    const-wide/high16 v14, 0x2000000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_6
    const-wide/high16 v14, 0x400000000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_7
    const-wide/16 v2, 0x800

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    const/16 v3, 0xb

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto/16 :goto_0

    :pswitch_8
    const-wide/high16 v14, 0x8000000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_9
    const-wide/32 v2, 0x2000000

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_4

    const/4 v2, 0x6

    const/16 v3, 0x19

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto/16 :goto_0

    :cond_4
    const-wide/16 v14, 0x0

    const-wide v18, 0x2802280000000000L    # 5.759938310470282E-116

    const-wide/16 v22, 0x2

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_a
    const-wide/32 v2, 0x100000

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_5

    const/4 v2, 0x6

    const/16 v3, 0x14

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto/16 :goto_0

    :cond_5
    const-wide v14, 0x100000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_b
    const-wide/32 v14, 0x80000

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_c
    const-wide/32 v2, 0x10000000

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    const/16 v3, 0x1c

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x5f
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa7_0(JJJJJJ)I
    .locals 25

    and-long v4, p3, p1

    and-long v6, p7, p5

    or-long v2, v4, v6

    and-long v8, p11, p9

    or-long/2addr v2, v8

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-nez v2, :cond_0

    const/4 v3, 0x5

    move-object/from16 v2, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p5

    move-wide/from16 v8, p9

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v2}, Lbsh/JavaCharStream;->readChar()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v2, v0, Lbsh/ParserTokenManager;->curChar:C

    packed-switch v2, :pswitch_data_0

    :cond_1
    :pswitch_0
    const/4 v3, 0x6

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x6

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/4 v2, 0x7

    goto :goto_0

    :pswitch_1
    const-wide v14, 0x2000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa8_0(JJJJJJ)I

    move-result v2

    goto :goto_0

    :pswitch_2
    const-wide/32 v2, 0x80000

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_2

    const/4 v2, 0x7

    const/16 v3, 0x13

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto :goto_0

    :cond_2
    const-wide/high16 v2, 0x400000000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_3

    const/4 v2, 0x7

    const/16 v3, 0x3a

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto :goto_0

    :cond_3
    const-wide v14, 0x100800000000L

    const-wide v18, 0x280000000000L

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa8_0(JJJJJJ)I

    move-result v2

    goto :goto_0

    :pswitch_3
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x2000000000000L

    const-wide/16 v22, 0x2

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa8_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_4
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x2000000000000000L

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa8_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_5
    const-wide v14, 0x18000200000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa8_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_6
    const-wide/high16 v2, 0x2000000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    const/4 v2, 0x7

    const/16 v3, 0x31

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto/16 :goto_0

    :pswitch_7
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x808000000000000L

    const-wide/16 v22, 0x8

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa8_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_8
    const-wide/16 v2, 0x400

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    const/4 v2, 0x7

    const/16 v3, 0xa

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto/16 :goto_0

    :pswitch_9
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x20000000000000L

    const-wide/16 v22, 0x20

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa8_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa8_0(JJJJJJ)I
    .locals 25

    and-long v4, p3, p1

    and-long v6, p7, p5

    or-long v2, v4, v6

    and-long v8, p11, p9

    or-long/2addr v2, v8

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-nez v2, :cond_0

    const/4 v3, 0x6

    move-object/from16 v2, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p5

    move-wide/from16 v8, p9

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v2}, Lbsh/JavaCharStream;->readChar()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v2, v0, Lbsh/ParserTokenManager;->curChar:C

    sparse-switch v2, :sswitch_data_0

    :cond_1
    const/4 v3, 0x7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v2, 0x8

    goto :goto_0

    :sswitch_0
    const-wide/16 v14, 0x0

    const-wide v18, 0x280000000000L

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa9_0(JJJJJJ)I

    move-result v2

    goto :goto_0

    :sswitch_1
    const-wide v2, 0x100000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    const/16 v3, 0x2c

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto :goto_0

    :sswitch_2
    const-wide v2, 0x2000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    const/16 v3, 0x25

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto :goto_0

    :sswitch_3
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x2000000000000000L

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa9_0(JJJJJJ)I

    move-result v2

    goto :goto_0

    :sswitch_4
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x8000000000000L

    const-wide/16 v22, 0x8

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa9_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :sswitch_5
    const-wide/high16 v14, 0x8000000000000L

    const-wide/high16 v18, 0x802000000000000L

    const-wide/16 v22, 0x2

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa9_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :sswitch_6
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x20000000000000L

    const-wide/16 v22, 0x20

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa9_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :sswitch_7
    const-wide v14, 0x800000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa9_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :sswitch_8
    const-wide/high16 v2, 0x10000000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_2

    const/16 v2, 0x8

    const/16 v3, 0x34

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto/16 :goto_0

    :cond_2
    const-wide v14, 0x200000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa9_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5f -> :sswitch_0
        0x64 -> :sswitch_1
        0x65 -> :sswitch_2
        0x67 -> :sswitch_3
        0x68 -> :sswitch_4
        0x69 -> :sswitch_5
        0x6e -> :sswitch_6
        0x6f -> :sswitch_7
        0x74 -> :sswitch_8
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa9_0(JJJJJJ)I
    .locals 25

    and-long v4, p3, p1

    and-long v6, p7, p5

    or-long v2, v4, v6

    and-long v8, p11, p9

    or-long/2addr v2, v8

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-nez v2, :cond_0

    const/4 v3, 0x7

    move-object/from16 v2, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p5

    move-wide/from16 v8, p9

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v2}, Lbsh/JavaCharStream;->readChar()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v2, v0, Lbsh/ParserTokenManager;->curChar:C

    sparse-switch v2, :sswitch_data_0

    :cond_1
    const/16 v3, 0x8

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v2

    const/16 v3, 0x8

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v2, 0x9

    goto :goto_0

    :sswitch_0
    const-wide/16 v14, 0x0

    const-wide v18, 0x80000000000L

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa10_0(JJJJJJ)I

    move-result v2

    goto :goto_0

    :sswitch_1
    const-wide v2, 0x800000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_2

    const/16 v2, 0x9

    const/16 v3, 0x23

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto :goto_0

    :cond_2
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x2000000000000L

    const-wide/16 v22, 0x2

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa10_0(JJJJJJ)I

    move-result v2

    goto :goto_0

    :sswitch_2
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x800000000000000L

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa10_0(JJJJJJ)I

    move-result v2

    goto :goto_0

    :sswitch_3
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x8000000000000L

    const-wide/16 v22, 0x8

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa10_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :sswitch_4
    const-wide/high16 v2, 0x2000000000000000L

    and-long/2addr v2, v6

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    const/16 v2, 0x9

    const/16 v3, 0x7d

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v2

    goto/16 :goto_0

    :sswitch_5
    const-wide/16 v14, 0x0

    const-wide v18, 0x200000000000L

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa10_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :sswitch_6
    const-wide v2, 0x200000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_3

    const/16 v2, 0x9

    const/16 v3, 0x21

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    goto/16 :goto_0

    :cond_3
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x20000000000000L

    const-wide/16 v22, 0x20

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa10_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :sswitch_7
    const-wide/high16 v14, 0x8000000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa10_0(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_0
        0x66 -> :sswitch_1
        0x67 -> :sswitch_2
        0x69 -> :sswitch_3
        0x6e -> :sswitch_4
        0x6f -> :sswitch_5
        0x73 -> :sswitch_6
        0x7a -> :sswitch_7
    .end sparse-switch
.end method

.method private final jjStartNfaWithStates_0(III)I
    .locals 1

    iput p2, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    :try_start_0
    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p3, v0}, Lbsh/ParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    add-int/lit8 v0, p1, 0x1

    goto :goto_0
.end method

.method private final jjStartNfa_0(IJJJ)I
    .locals 2

    invoke-direct/range {p0 .. p7}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0
.end method

.method private final jjStopAtPos(II)I
    .locals 1

    iput p2, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_0(IJJJ)I
    .locals 8

    const-wide/high16 v2, 0x8000000000000L

    const/16 v6, 0x45

    const/4 v1, -0x1

    const/16 v0, 0x23

    const-wide/16 v4, 0x0

    packed-switch p1, :pswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    const-wide v2, 0x200020000000000L

    and-long/2addr v2, p4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/16 v0, 0x38

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x3e

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-wide/32 v2, 0x10000

    and-long/2addr v2, p4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    const/16 v0, 0xb

    goto :goto_0

    :cond_3
    const-wide v2, 0xffffffffffffc00L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    iput v6, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    :pswitch_1
    const-wide v2, 0x100600000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-wide v2, 0xffffffeff9ffc00L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    iget v1, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iput v6, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x1

    iput v1, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0

    :pswitch_2
    const-wide v2, 0xefffecebfdffc00L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    iget v1, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iput v6, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x2

    iput v1, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    goto :goto_0

    :cond_6
    const-wide v2, 0x100013040000000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_3
    const-wide v2, 0xc7ffcae3e5d3c00L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    iget v1, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iput v6, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x3

    iput v1, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    goto/16 :goto_0

    :cond_7
    const-wide v2, 0x28002408182c000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :pswitch_4
    const-wide v2, 0x86080003c053000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-wide v2, 0x41f7cae02580c00L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    iget v1, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iput v6, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x4

    iput v1, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto/16 :goto_0

    :pswitch_5
    const-wide v2, 0x41a1c2a12180c00L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    iput v6, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x5

    iput v1, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    goto/16 :goto_0

    :cond_9
    const-wide v2, 0x45608400400000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :pswitch_6
    const-wide v2, 0x41a102a00080400L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a

    iput v6, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x6

    iput v1, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    goto/16 :goto_0

    :cond_a
    const-wide v2, 0xc0012100800L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :pswitch_7
    const-wide v2, 0x402000000080400L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-wide v2, 0x18102a00000000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b

    iput v6, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x7

    iput v1, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    goto/16 :goto_0

    :cond_b
    move v0, v1

    goto/16 :goto_0

    :pswitch_8
    const-wide v2, 0x8000a00000000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    iput v6, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/16 v1, 0x8

    iput v1, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    goto/16 :goto_0

    :cond_c
    const-wide v2, 0x10102000000000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :pswitch_9
    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_d

    iput v6, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/16 v1, 0x9

    iput v1, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    goto/16 :goto_0

    :cond_d
    const-wide v2, 0xa00000000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :pswitch_a
    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    iget v1, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iput v6, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/16 v1, 0xa

    iput v1, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    goto/16 :goto_0

    :cond_e
    move v0, v1

    goto/16 :goto_0

    :pswitch_b
    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

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
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public ReInit(Lbsh/JavaCharStream;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    iget v0, p0, Lbsh/ParserTokenManager;->defaultLexState:I

    iput v0, p0, Lbsh/ParserTokenManager;->curLexState:I

    iput-object p1, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-direct {p0}, Lbsh/ParserTokenManager;->ReInitRounds()V

    return-void
.end method

.method public ReInit(Lbsh/JavaCharStream;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lbsh/ParserTokenManager;->ReInit(Lbsh/JavaCharStream;)V

    invoke-virtual {p0, p2}, Lbsh/ParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method public SwitchTo(I)V
    .locals 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v0, Lbsh/TokenMgrError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Error: Ignoring invalid lexical state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ". State unchanged."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lbsh/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    iput p1, p0, Lbsh/ParserTokenManager;->curLexState:I

    return-void
.end method

.method public getNextToken()Lbsh/Token;
    .locals 14

    const-wide/16 v12, 0x0

    const/4 v0, 0x0

    const v10, 0x7fffffff

    const/4 v2, 0x1

    const/4 v7, 0x0

    move-object v1, v0

    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v3}, Lbsh/JavaCharStream;->BeginToken()C

    move-result v3

    iput-char v3, p0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iput v10, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v6

    iget v3, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    if-eq v3, v10, :cond_4

    iget v3, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    if-ge v3, v6, :cond_1

    iget-object v3, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    iget v4, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    sub-int v4, v6, v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lbsh/JavaCharStream;->backup(I)V

    :cond_1
    sget-object v3, Lbsh/ParserTokenManager;->jjtoToken:[J

    iget v4, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v4, v4, 0x6

    aget-wide v4, v3, v4

    const-wide/16 v8, 0x1

    iget v3, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v3, v3, 0x3f

    shl-long/2addr v8, v3

    and-long/2addr v4, v8

    cmp-long v3, v4, v12

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lbsh/ParserTokenManager;->jjFillToken()Lbsh/Token;

    move-result-object v0

    iput-object v1, v0, Lbsh/Token;->specialToken:Lbsh/Token;

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    iput v7, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    invoke-virtual {p0}, Lbsh/ParserTokenManager;->jjFillToken()Lbsh/Token;

    move-result-object v0

    iput-object v1, v0, Lbsh/Token;->specialToken:Lbsh/Token;

    goto :goto_1

    :cond_2
    sget-object v3, Lbsh/ParserTokenManager;->jjtoSpecial:[J

    iget v4, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v4, v4, 0x6

    aget-wide v4, v3, v4

    const-wide/16 v8, 0x1

    iget v3, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v3, v3, 0x3f

    shl-long/2addr v8, v3

    and-long/2addr v4, v8

    cmp-long v3, v4, v12

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lbsh/ParserTokenManager;->jjFillToken()Lbsh/Token;

    move-result-object v3

    if-nez v1, :cond_3

    move-object v1, v3

    goto :goto_0

    :cond_3
    iput-object v1, v3, Lbsh/Token;->specialToken:Lbsh/Token;

    iput-object v3, v1, Lbsh/Token;->next:Lbsh/Token;

    move-object v1, v3

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v1}, Lbsh/JavaCharStream;->getEndLine()I

    move-result v3

    iget-object v1, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v1}, Lbsh/JavaCharStream;->getEndColumn()I

    move-result v4

    :try_start_1
    iget-object v1, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v1}, Lbsh/JavaCharStream;->readChar()C

    iget-object v1, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lbsh/JavaCharStream;->backup(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v7

    move-object v5, v0

    :goto_2
    if-nez v1, :cond_5

    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0, v2}, Lbsh/JavaCharStream;->backup(I)V

    if-gt v6, v2, :cond_9

    const-string v0, ""

    :goto_3
    move-object v5, v0

    :cond_5
    new-instance v0, Lbsh/TokenMgrError;

    iget v2, p0, Lbsh/ParserTokenManager;->curLexState:I

    iget-char v6, p0, Lbsh/ParserTokenManager;->curChar:C

    invoke-direct/range {v0 .. v7}, Lbsh/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v0

    :catch_1
    move-exception v0

    if-gt v6, v2, :cond_7

    const-string v0, ""

    :goto_4
    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v5, 0xa

    if-eq v1, v5, :cond_6

    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v5, 0xd

    if-ne v1, v5, :cond_8

    :cond_6
    add-int/lit8 v3, v3, 0x1

    move v1, v2

    move-object v5, v0

    move v4, v7

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_8
    add-int/lit8 v4, v4, 0x1

    move v1, v2

    move-object v5, v0

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method protected jjFillToken()Lbsh/Token;
    .locals 3

    iget v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    invoke-static {v0}, Lbsh/Token;->newToken(I)Lbsh/Token;

    move-result-object v1

    iget v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    iput v0, v1, Lbsh/Token;->kind:I

    sget-object v0, Lbsh/ParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v2, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, v1, Lbsh/Token;->image:Ljava/lang/String;

    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->getBeginLine()I

    move-result v0

    iput v0, v1, Lbsh/Token;->beginLine:I

    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->getBeginColumn()I

    move-result v0

    iput v0, v1, Lbsh/Token;->beginColumn:I

    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->getEndLine()I

    move-result v0

    iput v0, v1, Lbsh/Token;->endLine:I

    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->getEndColumn()I

    move-result v0

    iput v0, v1, Lbsh/Token;->endColumn:I

    return-object v1
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .locals 0

    iput-object p1, p0, Lbsh/ParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
