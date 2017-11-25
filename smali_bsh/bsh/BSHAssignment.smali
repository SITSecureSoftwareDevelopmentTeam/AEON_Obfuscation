.class Lbsh/BSHAssignment;
.super Lbsh/SimpleNode;

# interfaces
.implements Lbsh/ParserConstants;


# instance fields
.field public operator:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method

.method private operation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq p2, v0, :cond_1

    const/16 v0, 0x66

    if-eq p3, v0, :cond_0

    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Use of non + operator with String LHS"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    instance-of v0, p1, Lbsh/Primitive;

    if-nez v0, :cond_2

    instance-of v0, p2, Lbsh/Primitive;

    if-eqz v0, :cond_6

    :cond_2
    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq p1, v0, :cond_3

    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne p2, v0, :cond_4

    :cond_3
    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Illegal use of undefined object or \'void\' literal"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-eq p1, v0, :cond_5

    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-ne p2, v0, :cond_6

    :cond_5
    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Illegal use of null object or \'null\' literal"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_7

    instance-of v0, p1, Ljava/lang/Character;

    if-nez v0, :cond_7

    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_7

    instance-of v0, p1, Lbsh/Primitive;

    if-eqz v0, :cond_9

    :cond_7
    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_8

    instance-of v0, p2, Ljava/lang/Character;

    if-nez v0, :cond_8

    instance-of v0, p2, Ljava/lang/Number;

    if-nez v0, :cond_8

    instance-of v0, p2, Lbsh/Primitive;

    if-eqz v0, :cond_9

    :cond_8
    invoke-static {p1, p2, p3}, Lbsh/Primitive;->binaryOperation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_9
    new-instance v0, Lbsh/UtilEvalError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Non primitive value in operator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lbsh/ParserConstants;->tokenImage:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHAssignment;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHPrimaryExpression;

    if-nez v0, :cond_0

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "Error, null LHSnode"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p2}, Lbsh/Interpreter;->getStrictJava()Z

    move-result v2

    invoke-virtual {v0, p1, p2}, Lbsh/BSHPrimaryExpression;->toLHS(Lbsh/CallStack;Lbsh/Interpreter;)Lbsh/LHS;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "Error, null LHS"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    iget v1, p0, Lbsh/BSHAssignment;->operator:I

    const/16 v4, 0x51

    if-eq v1, v4, :cond_3

    :try_start_0
    invoke-virtual {v3}, Lbsh/LHS;->getValue()Ljava/lang/Object;
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbsh/BSHAssignment;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    invoke-virtual {v0, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne v0, v4, :cond_2

    new-instance v0, Lbsh/EvalError;

    const-string v1, "Void assignment."

    invoke-direct {v0, v1, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0

    :catch_0
    move-exception v0

    invoke-virtual {v0, p0, p1}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v0

    throw v0

    :cond_2
    :try_start_1
    iget v4, p0, Lbsh/BSHAssignment;->operator:I

    sparse-switch v4, :sswitch_data_0

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "unimplemented operator in assignment BSH"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lbsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    invoke-virtual {v0, p0, p1}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v0

    throw v0

    :sswitch_0
    :try_start_2
    invoke-virtual {v3, v0, v2}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    :sswitch_1
    const/16 v4, 0x66

    invoke-direct {p0, v1, v0, v4}, Lbsh/BSHAssignment;->operation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :sswitch_2
    const/16 v4, 0x67

    invoke-direct {p0, v1, v0, v4}, Lbsh/BSHAssignment;->operation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :sswitch_3
    const/16 v4, 0x68

    invoke-direct {p0, v1, v0, v4}, Lbsh/BSHAssignment;->operation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :sswitch_4
    const/16 v4, 0x69

    invoke-direct {p0, v1, v0, v4}, Lbsh/BSHAssignment;->operation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :sswitch_5
    const/16 v4, 0x6a

    invoke-direct {p0, v1, v0, v4}, Lbsh/BSHAssignment;->operation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :sswitch_6
    const/16 v4, 0x6c

    invoke-direct {p0, v1, v0, v4}, Lbsh/BSHAssignment;->operation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :sswitch_7
    const/16 v4, 0x6e

    invoke-direct {p0, v1, v0, v4}, Lbsh/BSHAssignment;->operation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :sswitch_8
    const/16 v4, 0x6f

    invoke-direct {p0, v1, v0, v4}, Lbsh/BSHAssignment;->operation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :sswitch_9
    const/16 v4, 0x70

    invoke-direct {p0, v1, v0, v4}, Lbsh/BSHAssignment;->operation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :sswitch_a
    const/16 v4, 0x72

    invoke-direct {p0, v1, v0, v4}, Lbsh/BSHAssignment;->operation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :sswitch_b
    const/16 v4, 0x74

    invoke-direct {p0, v1, v0, v4}, Lbsh/BSHAssignment;->operation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;
    :try_end_2
    .catch Lbsh/UtilEvalError; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x51 -> :sswitch_0
        0x76 -> :sswitch_1
        0x77 -> :sswitch_2
        0x78 -> :sswitch_3
        0x79 -> :sswitch_4
        0x7a -> :sswitch_5
        0x7b -> :sswitch_5
        0x7c -> :sswitch_6
        0x7d -> :sswitch_6
        0x7e -> :sswitch_7
        0x7f -> :sswitch_8
        0x80 -> :sswitch_9
        0x81 -> :sswitch_9
        0x82 -> :sswitch_a
        0x83 -> :sswitch_a
        0x84 -> :sswitch_b
        0x85 -> :sswitch_b
    .end sparse-switch
.end method
