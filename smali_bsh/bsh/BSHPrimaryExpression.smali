.class Lbsh/BSHPrimaryExpression;
.super Lbsh/SimpleNode;


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method

.method private eval(ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHPrimaryExpression;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    invoke-virtual {p0}, Lbsh/BSHPrimaryExpression;->jjtGetNumChildren()I

    move-result v3

    const/4 v0, 0x1

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Lbsh/BSHPrimaryExpression;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHPrimarySuffix;

    invoke-virtual {v0, v1, p1, p2, p3}, Lbsh/BSHPrimarySuffix;->doSuffix(Ljava/lang/Object;ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    instance-of v0, v1, Lbsh/SimpleNode;

    if-eqz v0, :cond_6

    instance-of v0, v1, Lbsh/BSHAmbiguousName;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    move-object v0, v1

    check-cast v0, Lbsh/BSHAmbiguousName;

    invoke-virtual {v0, p2, p3}, Lbsh/BSHAmbiguousName;->toLHS(Lbsh/CallStack;Lbsh/Interpreter;)Lbsh/LHS;

    move-result-object v0

    :goto_1
    instance-of v1, v0, Lbsh/LHS;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_5

    :cond_1
    :goto_2
    return-object v0

    :cond_2
    check-cast v1, Lbsh/BSHAmbiguousName;

    invoke-virtual {v1, p2, p3}, Lbsh/BSHAmbiguousName;->toObject(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    new-instance v0, Lbsh/EvalError;

    const-string v1, "Can\'t assign to prefix."

    invoke-direct {v0, v1, p0, p2}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0

    :cond_4
    check-cast v1, Lbsh/SimpleNode;

    invoke-virtual {v1, p2, p3}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_5
    :try_start_0
    check-cast v0, Lbsh/LHS;

    invoke-virtual {v0}, Lbsh/LHS;->getValue()Ljava/lang/Object;
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0, p0, p2}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v0

    throw v0

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lbsh/BSHPrimaryExpression;->eval(ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toLHS(Lbsh/CallStack;Lbsh/Interpreter;)Lbsh/LHS;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lbsh/BSHPrimaryExpression;->eval(ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lbsh/LHS;

    if-nez v1, :cond_0

    new-instance v0, Lbsh/EvalError;

    const-string v1, "Can\'t assign to:"

    invoke-direct {v0, v1, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0

    :cond_0
    check-cast v0, Lbsh/LHS;

    return-object v0
.end method
