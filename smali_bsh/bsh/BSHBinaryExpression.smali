.class Lbsh/BSHBinaryExpression;
.super Lbsh/SimpleNode;

# interfaces
.implements Lbsh/ParserConstants;


# static fields
.field static class$bsh$Primitive:Ljava/lang/Class;


# instance fields
.field public kind:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private isPrimitiveValue(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lbsh/Primitive;

    if-eqz v0, :cond_0

    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq p1, v0, :cond_0

    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWrapper(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Character;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v3}, Lbsh/BSHBinaryExpression;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    invoke-virtual {v0, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v1

    iget v0, p0, Lbsh/BSHBinaryExpression;->kind:I

    const/16 v4, 0x23

    if-ne v0, v4, :cond_4

    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-ne v1, v0, :cond_0

    new-instance v0, Lbsh/Primitive;

    invoke-direct {v0, v3}, Lbsh/Primitive;-><init>(Z)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v2}, Lbsh/BSHBinaryExpression;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHType;

    invoke-virtual {v0, p1, p2}, Lbsh/BSHType;->getType(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v4

    instance-of v0, v1, Lbsh/Primitive;

    if-eqz v0, :cond_3

    sget-object v0, Lbsh/BSHBinaryExpression;->class$bsh$Primitive:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "bsh.Primitive"

    invoke-static {v0}, Lbsh/BSHBinaryExpression;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/BSHBinaryExpression;->class$bsh$Primitive:Ljava/lang/Class;

    :goto_1
    if-ne v4, v0, :cond_2

    new-instance v0, Lbsh/Primitive;

    invoke-direct {v0, v2}, Lbsh/Primitive;-><init>(Z)V

    goto :goto_0

    :cond_1
    sget-object v0, Lbsh/BSHBinaryExpression;->class$bsh$Primitive:Ljava/lang/Class;

    goto :goto_1

    :cond_2
    new-instance v0, Lbsh/Primitive;

    invoke-direct {v0, v3}, Lbsh/Primitive;-><init>(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v4, v0}, Lbsh/Types;->isJavaAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    new-instance v0, Lbsh/Primitive;

    invoke-direct {v0, v1}, Lbsh/Primitive;-><init>(Z)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lbsh/BSHBinaryExpression;->kind:I

    const/16 v4, 0x62

    if-eq v0, v4, :cond_5

    iget v0, p0, Lbsh/BSHBinaryExpression;->kind:I

    const/16 v4, 0x63

    if-ne v0, v4, :cond_6

    :cond_5
    invoke-direct {p0, v1}, Lbsh/BSHBinaryExpression;->isPrimitiveValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    move-object v0, v1

    check-cast v0, Lbsh/Primitive;

    invoke-virtual {v0}, Lbsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_2
    instance-of v4, v0, Ljava/lang/Boolean;

    if-eqz v4, :cond_6

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lbsh/Primitive;

    invoke-direct {v0, v3}, Lbsh/Primitive;-><init>(Z)V

    goto :goto_0

    :cond_6
    iget v0, p0, Lbsh/BSHBinaryExpression;->kind:I

    const/16 v4, 0x60

    if-eq v0, v4, :cond_7

    iget v0, p0, Lbsh/BSHBinaryExpression;->kind:I

    const/16 v4, 0x61

    if-ne v0, v4, :cond_8

    :cond_7
    invoke-direct {p0, v1}, Lbsh/BSHBinaryExpression;->isPrimitiveValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    move-object v0, v1

    check-cast v0, Lbsh/Primitive;

    invoke-virtual {v0}, Lbsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_3
    instance-of v4, v0, Ljava/lang/Boolean;

    if-eqz v4, :cond_8

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v2, :cond_8

    new-instance v0, Lbsh/Primitive;

    invoke-direct {v0, v2}, Lbsh/Primitive;-><init>(Z)V

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0, v1}, Lbsh/BSHBinaryExpression;->isWrapper(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {p0, v2}, Lbsh/BSHBinaryExpression;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    invoke-virtual {v0, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Lbsh/BSHBinaryExpression;->isWrapper(Ljava/lang/Object;)Z

    move-result v0

    if-nez v4, :cond_9

    invoke-direct {p0, v1}, Lbsh/BSHBinaryExpression;->isPrimitiveValue(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_9
    if-nez v0, :cond_a

    invoke-direct {p0, v5}, Lbsh/BSHBinaryExpression;->isPrimitiveValue(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_a
    if-eqz v4, :cond_f

    if-eqz v0, :cond_f

    iget v0, p0, Lbsh/BSHBinaryExpression;->kind:I

    const/16 v4, 0x5a

    if-ne v0, v4, :cond_f

    :cond_b
    iget v0, p0, Lbsh/BSHBinaryExpression;->kind:I

    sparse-switch v0, :sswitch_data_0

    :cond_c
    instance-of v0, v1, Lbsh/Primitive;

    if-nez v0, :cond_d

    instance-of v0, v5, Lbsh/Primitive;

    if-eqz v0, :cond_15

    :cond_d
    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq v1, v0, :cond_e

    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne v5, v0, :cond_13

    :cond_e
    new-instance v0, Lbsh/EvalError;

    const-string v1, "illegal use of undefined variable, class, or \'void\' literal"

    invoke-direct {v0, v1, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0

    :cond_f
    :try_start_0
    iget v0, p0, Lbsh/BSHBinaryExpression;->kind:I

    invoke-static {v1, v5, v0}, Lbsh/Primitive;->binaryOperation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0, p0, p1}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v0

    throw v0

    :sswitch_0
    new-instance v4, Lbsh/Primitive;

    if-ne v1, v5, :cond_10

    move v0, v2

    :goto_4
    invoke-direct {v4, v0}, Lbsh/Primitive;-><init>(Z)V

    move-object v0, v4

    goto/16 :goto_0

    :cond_10
    move v0, v3

    goto :goto_4

    :sswitch_1
    new-instance v0, Lbsh/Primitive;

    if-eq v1, v5, :cond_11

    :goto_5
    invoke-direct {v0, v2}, Lbsh/Primitive;-><init>(Z)V

    goto/16 :goto_0

    :cond_11
    move v2, v3

    goto :goto_5

    :sswitch_2
    instance-of v0, v1, Ljava/lang/String;

    if-nez v0, :cond_12

    instance-of v0, v5, Ljava/lang/String;

    if-eqz v0, :cond_c

    :cond_12
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_13
    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-eq v1, v0, :cond_14

    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-ne v5, v0, :cond_15

    :cond_14
    new-instance v0, Lbsh/EvalError;

    const-string v1, "illegal use of null value or \'null\' literal"

    invoke-direct {v0, v1, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0

    :cond_15
    new-instance v0, Lbsh/EvalError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Operator: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lbsh/ParserConstants;->tokenImage:[Ljava/lang/String;

    iget v3, p0, Lbsh/BSHBinaryExpression;->kind:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\' inappropriate for objects"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0

    :cond_16
    move-object v0, v1

    goto/16 :goto_3

    :cond_17
    move-object v0, v1

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x5f -> :sswitch_1
        0x66 -> :sswitch_2
    .end sparse-switch
.end method
