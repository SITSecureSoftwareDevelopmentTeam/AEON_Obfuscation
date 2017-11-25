.class Lbsh/BSHLiteral;
.super Lbsh/SimpleNode;


# instance fields
.field public value:Ljava/lang/Object;


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method

.method private getEscapeChar(C)C
    .locals 0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return p1

    :sswitch_0
    const/16 p1, 0x8

    goto :goto_0

    :sswitch_1
    const/16 p1, 0x9

    goto :goto_0

    :sswitch_2
    const/16 p1, 0xa

    goto :goto_0

    :sswitch_3
    const/16 p1, 0xc

    goto :goto_0

    :sswitch_4
    const/16 p1, 0xd

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_0
        0x66 -> :sswitch_3
        0x6e -> :sswitch_2
        0x72 -> :sswitch_4
        0x74 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public charSetup(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    :cond_0
    :goto_0
    new-instance v1, Lbsh/Primitive;

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, v0}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-direct {v1, v0}, Lbsh/Primitive;-><init>(C)V

    iput-object v1, p0, Lbsh/BSHLiteral;->value:Ljava/lang/Object;

    return-void

    :cond_1
    invoke-direct {p0, v0}, Lbsh/BSHLiteral;->getEscapeChar(C)C

    move-result v0

    goto :goto_0
.end method

.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    iget-object v0, p0, Lbsh/BSHLiteral;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Lbsh/InterpreterError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Null in bsh literal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lbsh/BSHLiteral;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lbsh/BSHLiteral;->value:Ljava/lang/Object;

    return-object v0
.end method

.method stringSetup(Ljava/lang/String;)V
    .locals 5

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_3

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    add-int/lit8 v0, v2, 0x2

    if-ge v1, v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lbsh/BSHLiteral;->getEscapeChar(C)C

    move-result v0

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbsh/BSHLiteral;->value:Ljava/lang/Object;

    return-void

    :cond_3
    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_2
.end method
