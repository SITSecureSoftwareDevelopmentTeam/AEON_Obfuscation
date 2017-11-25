.class Lbsh/BSHTryStatement;
.super Lbsh/SimpleNode;


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v7}, Lbsh/BSHTryStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHBlock;

    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Lbsh/BSHTryStatement;->jjtGetNumChildren()I

    move-result v2

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v2, :cond_0

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v1}, Lbsh/BSHTryStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    instance-of v5, v1, Lbsh/BSHFormalParameter;

    if-eqz v5, :cond_1

    invoke-virtual {v8, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {p0, v4}, Lbsh/BSHTryStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object v1, v3

    :cond_1
    if-eqz v1, :cond_b

    check-cast v1, Lbsh/BSHBlock;

    move-object v2, v1

    :goto_1
    invoke-virtual {p1}, Lbsh/CallStack;->depth()I

    move-result v1

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lbsh/BSHBlock;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    :try_end_0
    .catch Lbsh/TargetError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v6, v3

    :goto_2
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lbsh/TargetError;->getTarget()Ljava/lang/Throwable;

    move-result-object v4

    :goto_3
    if-eqz v4, :cond_8

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v10

    :goto_4
    if-ge v7, v10, :cond_8

    invoke-virtual {v8, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/BSHFormalParameter;

    invoke-virtual {v0, p1, p2}, Lbsh/BSHFormalParameter;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    iget-object v1, v0, Lbsh/BSHFormalParameter;->type:Ljava/lang/Class;

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lbsh/Interpreter;->getStrictJava()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lbsh/EvalError;

    const-string v1, "(Strict Java) Untyped catch block"

    invoke-direct {v0, v1, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0

    :catch_0
    move-exception v6

    const-string v0, "Bsh Stack: "

    :goto_5
    invoke-virtual {p1}, Lbsh/CallStack;->depth()I

    move-result v4

    if-le v4, v1, :cond_a

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, "\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lbsh/CallStack;->pop()Lbsh/NameSpace;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_2
    iget-object v1, v0, Lbsh/BSHFormalParameter;->type:Ljava/lang/Class;

    if-eqz v1, :cond_3

    :try_start_1
    iget-object v1, v0, Lbsh/BSHFormalParameter;->type:Ljava/lang/Class;

    invoke-static {v4, v1}, Lbsh/Types;->getAssignableForm(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;
    :try_end_1
    .catch Lbsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v1

    :cond_3
    invoke-virtual {v9, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbsh/BSHBlock;

    invoke-virtual {p1}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v5

    new-instance v6, Lbsh/BlockNameSpace;

    invoke-direct {v6, v5}, Lbsh/BlockNameSpace;-><init>(Lbsh/NameSpace;)V

    :try_start_2
    iget-object v7, v0, Lbsh/BSHFormalParameter;->type:Ljava/lang/Class;

    sget-object v8, Lbsh/BSHFormalParameter;->UNTYPED:Ljava/lang/Class;

    if-ne v7, v8, :cond_5

    iget-object v0, v0, Lbsh/BSHFormalParameter;->name:Ljava/lang/String;

    invoke-virtual {v6, v0, v4}, Lbsh/BlockNameSpace;->setBlockVariable(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lbsh/UtilEvalError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_6
    invoke-virtual {p1, v6}, Lbsh/CallStack;->swap(Lbsh/NameSpace;)Lbsh/NameSpace;

    :try_start_3
    invoke-virtual {v1, p1, p2}, Lbsh/BSHBlock;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    invoke-virtual {p1, v5}, Lbsh/CallStack;->swap(Lbsh/NameSpace;)Lbsh/NameSpace;

    :goto_7
    if-eqz v2, :cond_4

    invoke-virtual {v2, p1, p2}, Lbsh/BSHBlock;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    :cond_4
    if-eqz v3, :cond_6

    throw v3

    :cond_5
    :try_start_4
    iget-object v7, v0, Lbsh/BSHFormalParameter;->name:Ljava/lang/String;

    iget-object v0, v0, Lbsh/BSHFormalParameter;->type:Ljava/lang/Class;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v0, v4, v8}, Lbsh/BlockNameSpace;->setTypedVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Z)V
    :try_end_4
    .catch Lbsh/UtilEvalError; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "Unable to set var in catch block namespace."

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v5}, Lbsh/CallStack;->swap(Lbsh/NameSpace;)Lbsh/NameSpace;

    throw v0

    :catch_2
    move-exception v0

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_4

    :cond_6
    instance-of v1, v0, Lbsh/ReturnControl;

    if-eqz v1, :cond_7

    :goto_8
    return-object v0

    :cond_7
    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    goto :goto_8

    :cond_8
    move-object v0, v5

    move-object v3, v6

    goto :goto_7

    :cond_9
    move-object v4, v3

    goto/16 :goto_3

    :cond_a
    move-object v5, v3

    goto/16 :goto_2

    :cond_b
    move-object v2, v3

    goto/16 :goto_1
.end method
