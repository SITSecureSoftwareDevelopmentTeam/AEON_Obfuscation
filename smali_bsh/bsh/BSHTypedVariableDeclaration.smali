.class Lbsh/BSHTypedVariableDeclaration;
.super Lbsh/SimpleNode;


# instance fields
.field public modifiers:Lbsh/Modifiers;


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method

.method private getTypeNode()Lbsh/BSHType;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHTypedVariableDeclaration;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHType;

    return-object v0
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v1

    invoke-direct {p0}, Lbsh/BSHTypedVariableDeclaration;->getTypeNode()Lbsh/BSHType;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lbsh/BSHType;->getType(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Lbsh/BSHTypedVariableDeclaration;->getDeclarators()[Lbsh/BSHVariableDeclarator;

    move-result-object v4

    const/4 v0, 0x0

    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_0

    aget-object v5, v4, v0

    invoke-virtual {v5, v2, p1, p2}, Lbsh/BSHVariableDeclarator;->eval(Lbsh/BSHType;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    :try_end_0
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    :try_start_1
    iget-object v5, v5, Lbsh/BSHVariableDeclarator;->name:Ljava/lang/String;

    iget-object v7, p0, Lbsh/BSHTypedVariableDeclaration;->modifiers:Lbsh/Modifiers;

    invoke-virtual {v1, v5, v3, v6, v7}, Lbsh/NameSpace;->setTypedVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V
    :try_end_1
    .catch Lbsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lbsh/EvalError; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0, p0, p1}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v0

    throw v0
    :try_end_2
    .catch Lbsh/EvalError; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    const-string v1, "Typed variable declaration"

    invoke-virtual {v0, v1}, Lbsh/EvalError;->reThrow(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    return-object v0
.end method

.method evalType(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    invoke-direct {p0}, Lbsh/BSHTypedVariableDeclaration;->getTypeNode()Lbsh/BSHType;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbsh/BSHType;->getType(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method getDeclarators()[Lbsh/BSHVariableDeclarator;
    .locals 6

    invoke-virtual {p0}, Lbsh/BSHTypedVariableDeclaration;->jjtGetNumChildren()I

    move-result v3

    const/4 v2, 0x1

    sub-int v0, v3, v2

    new-array v4, v0, [Lbsh/BSHVariableDeclarator;

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    sub-int v5, v1, v2

    invoke-virtual {p0, v1}, Lbsh/BSHTypedVariableDeclaration;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHVariableDeclarator;

    aput-object v0, v4, v5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method public getTypeDescriptor(Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lbsh/BSHTypedVariableDeclaration;->getTypeNode()Lbsh/BSHType;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lbsh/BSHType;->getTypeDescriptor(Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
