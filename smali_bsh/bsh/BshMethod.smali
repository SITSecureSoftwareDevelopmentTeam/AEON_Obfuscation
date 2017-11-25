.class public Lbsh/BshMethod;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private cparamTypes:[Ljava/lang/Class;

.field private creturnType:Ljava/lang/Class;

.field declaringNameSpace:Lbsh/NameSpace;

.field private javaMethod:Ljava/lang/reflect/Method;

.field private javaObject:Ljava/lang/Object;

.field methodBody:Lbsh/BSHBlock;

.field modifiers:Lbsh/Modifiers;

.field private name:Ljava/lang/String;

.field private numArgs:I

.field private paramNames:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lbsh/BSHMethodDeclaration;Lbsh/NameSpace;Lbsh/Modifiers;)V
    .locals 8

    iget-object v1, p1, Lbsh/BSHMethodDeclaration;->name:Ljava/lang/String;

    iget-object v2, p1, Lbsh/BSHMethodDeclaration;->returnType:Ljava/lang/Class;

    iget-object v0, p1, Lbsh/BSHMethodDeclaration;->paramsNode:Lbsh/BSHFormalParameters;

    invoke-virtual {v0}, Lbsh/BSHFormalParameters;->getParamNames()[Ljava/lang/String;

    move-result-object v3

    iget-object v0, p1, Lbsh/BSHMethodDeclaration;->paramsNode:Lbsh/BSHFormalParameters;

    iget-object v4, v0, Lbsh/BSHFormalParameters;->paramTypes:[Ljava/lang/Class;

    iget-object v5, p1, Lbsh/BSHMethodDeclaration;->blockNode:Lbsh/BSHBlock;

    move-object v0, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lbsh/BshMethod;-><init>(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Lbsh/BSHBlock;Lbsh/NameSpace;Lbsh/Modifiers;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Lbsh/BSHBlock;Lbsh/NameSpace;Lbsh/Modifiers;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsh/BshMethod;->name:Ljava/lang/String;

    iput-object p2, p0, Lbsh/BshMethod;->creturnType:Ljava/lang/Class;

    iput-object p3, p0, Lbsh/BshMethod;->paramNames:[Ljava/lang/String;

    if-eqz p3, :cond_0

    array-length v0, p3

    iput v0, p0, Lbsh/BshMethod;->numArgs:I

    :cond_0
    iput-object p4, p0, Lbsh/BshMethod;->cparamTypes:[Ljava/lang/Class;

    iput-object p5, p0, Lbsh/BshMethod;->methodBody:Lbsh/BSHBlock;

    iput-object p6, p0, Lbsh/BshMethod;->declaringNameSpace:Lbsh/NameSpace;

    iput-object p7, p0, Lbsh/BshMethod;->modifiers:Lbsh/Modifiers;

    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .locals 8

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    move-object v0, p0

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lbsh/BshMethod;-><init>(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Lbsh/BSHBlock;Lbsh/NameSpace;Lbsh/Modifiers;)V

    iput-object p1, p0, Lbsh/BshMethod;->javaMethod:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lbsh/BshMethod;->javaObject:Ljava/lang/Object;

    return-void
.end method

.method private invokeImpl([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;Z)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    invoke-virtual {p0}, Lbsh/BshMethod;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Lbsh/BshMethod;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    if-nez p3, :cond_0

    new-instance p3, Lbsh/CallStack;

    iget-object v0, p0, Lbsh/BshMethod;->declaringNameSpace:Lbsh/NameSpace;

    invoke-direct {p3, v0}, Lbsh/CallStack;-><init>(Lbsh/NameSpace;)V

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/Object;

    :cond_1
    array-length v0, p1

    iget v1, p0, Lbsh/BshMethod;->numArgs:I

    if-eq v0, v1, :cond_2

    new-instance v0, Lbsh/EvalError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Wrong number of arguments for local method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lbsh/BshMethod;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p4, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0

    :cond_2
    if-eqz p5, :cond_3

    invoke-virtual {p3}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p4}, Lbsh/NameSpace;->setNode(Lbsh/SimpleNode;)V

    const/4 v1, 0x0

    :goto_1
    iget v4, p0, Lbsh/BshMethod;->numArgs:I

    if-ge v1, v4, :cond_6

    aget-object v4, v3, v1

    if-eqz v4, :cond_4

    :try_start_0
    aget-object v4, p1, v1

    aget-object v5, v3, v1

    invoke-static {v4, v5}, Lbsh/Types;->getAssignableForm(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, p1, v1
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, p0, Lbsh/BshMethod;->paramNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    aget-object v5, v3, v1

    aget-object v6, p1, v1

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v5, v6, v7}, Lbsh/NameSpace;->setTypedVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V
    :try_end_1
    .catch Lbsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Lbsh/NameSpace;

    iget-object v1, p0, Lbsh/BshMethod;->declaringNameSpace:Lbsh/NameSpace;

    iget-object v4, p0, Lbsh/BshMethod;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lbsh/NameSpace;-><init>(Lbsh/NameSpace;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lbsh/NameSpace;->isMethod:Z

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Lbsh/EvalError;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid argument: `"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lbsh/BshMethod;->paramNames:[Ljava/lang/String;

    aget-object v1, v4, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " for method: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Lbsh/BshMethod;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lbsh/UtilEvalError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p4, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v2

    :catch_1
    move-exception v0

    const-string v1, "Typed method parameter assignment"

    invoke-virtual {v0, v1, p4, p3}, Lbsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v0

    throw v0

    :cond_4
    aget-object v4, p1, v1

    sget-object v5, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne v4, v5, :cond_5

    new-instance v0, Lbsh/EvalError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Undefined variable or class name, parameter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lbsh/BshMethod;->paramNames:[Ljava/lang/String;

    aget-object v1, v3, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " to method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lbsh/BshMethod;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p4, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0

    :cond_5
    :try_start_2
    iget-object v4, p0, Lbsh/BshMethod;->paramNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    aget-object v5, p1, v1

    invoke-virtual {p2}, Lbsh/Interpreter;->getStrictJava()Z

    move-result v6

    invoke-virtual {v0, v4, v5, v6}, Lbsh/NameSpace;->setLocalVariable(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_2
    .catch Lbsh/UtilEvalError; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0, p4, p3}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v0

    throw v0

    :cond_6
    if-nez p5, :cond_7

    invoke-virtual {p3, v0}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    :cond_7
    iget-object v0, p0, Lbsh/BshMethod;->methodBody:Lbsh/BSHBlock;

    const/4 v1, 0x1

    invoke-virtual {v0, p3, p2, v1}, Lbsh/BSHBlock;->eval(Lbsh/CallStack;Lbsh/Interpreter;Z)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3}, Lbsh/CallStack;->copy()Lbsh/CallStack;

    move-result-object v3

    if-nez p5, :cond_8

    invoke-virtual {p3}, Lbsh/CallStack;->pop()Lbsh/NameSpace;

    :cond_8
    const/4 v0, 0x0

    instance-of v4, v1, Lbsh/ReturnControl;

    if-eqz v4, :cond_e

    move-object v0, v1

    check-cast v0, Lbsh/ReturnControl;

    iget v4, v0, Lbsh/ReturnControl;->kind:I

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_9

    check-cast v1, Lbsh/ReturnControl;

    iget-object v1, v1, Lbsh/ReturnControl;->value:Ljava/lang/Object;

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_a

    sget-object v4, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq v1, v4, :cond_a

    new-instance v1, Lbsh/EvalError;

    const-string v2, "Cannot return value from void method"

    iget-object v0, v0, Lbsh/ReturnControl;->returnPoint:Lbsh/SimpleNode;

    invoke-direct {v1, v2, v0, v3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v1

    :cond_9
    new-instance v1, Lbsh/EvalError;

    const-string v2, "\'continue\' or \'break\' in method body"

    iget-object v0, v0, Lbsh/ReturnControl;->returnPoint:Lbsh/SimpleNode;

    invoke-direct {v1, v2, v0, v3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v1

    :cond_a
    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    :goto_3
    if-eqz v2, :cond_b

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_c

    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    :cond_b
    :goto_4
    return-object v0

    :cond_c
    :try_start_3
    invoke-static {v0, v2}, Lbsh/Types;->getAssignableForm(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_3
    .catch Lbsh/UtilEvalError; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    goto :goto_4

    :catch_3
    move-exception v0

    if-eqz v1, :cond_d

    iget-object p4, v1, Lbsh/ReturnControl;->returnPoint:Lbsh/SimpleNode;

    :cond_d
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Incorrect type returned from method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lbsh/BshMethod;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lbsh/UtilEvalError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4, p3}, Lbsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v0

    throw v0

    :cond_e
    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_3
.end method


# virtual methods
.method public getModifiers()Lbsh/Modifiers;
    .locals 1

    iget-object v0, p0, Lbsh/BshMethod;->modifiers:Lbsh/Modifiers;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbsh/BshMethod;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbsh/BshMethod;->paramNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getParameterTypes()[Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lbsh/BshMethod;->cparamTypes:[Ljava/lang/Class;

    return-object v0
.end method

.method public getReturnType()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lbsh/BshMethod;->creturnType:Ljava/lang/Class;

    return-object v0
.end method

.method public hasModifier(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lbsh/BshMethod;->modifiers:Lbsh/Modifiers;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/BshMethod;->modifiers:Lbsh/Modifiers;

    invoke-virtual {v0, p1}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invoke([Ljava/lang/Object;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lbsh/BshMethod;->invoke([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lbsh/BshMethod;->invoke([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method invoke([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;Z)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    iget-object v0, p0, Lbsh/BshMethod;->javaMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lbsh/BshMethod;->javaMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lbsh/BshMethod;->javaObject:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Lbsh/Reflect;->invokeOnMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lbsh/ReflectError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lbsh/EvalError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error invoking Java method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p4, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v1

    :catch_1
    move-exception v2

    new-instance v0, Lbsh/TargetError;

    const-string v1, "Exception invoking imported object method."

    const/4 v5, 0x1

    move-object v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lbsh/TargetError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lbsh/SimpleNode;Lbsh/CallStack;Z)V

    throw v0

    :cond_0
    iget-object v0, p0, Lbsh/BshMethod;->modifiers:Lbsh/Modifiers;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbsh/BshMethod;->modifiers:Lbsh/Modifiers;

    const-string v1, "synchronized"

    invoke-virtual {v0, v1}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbsh/BshMethod;->declaringNameSpace:Lbsh/NameSpace;

    iget-boolean v0, v0, Lbsh/NameSpace;->isClass:Z

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lbsh/BshMethod;->declaringNameSpace:Lbsh/NameSpace;

    invoke-virtual {v0}, Lbsh/NameSpace;->getClassInstance()Ljava/lang/Object;
    :try_end_1
    .catch Lbsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    :goto_1
    monitor-enter v0

    :try_start_2
    invoke-direct/range {p0 .. p5}, Lbsh/BshMethod;->invokeImpl([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;Z)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "Can\'t get class instance for synchronized method."

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lbsh/BshMethod;->declaringNameSpace:Lbsh/NameSpace;

    invoke-virtual {v0, p2}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_2
    invoke-direct/range {p0 .. p5}, Lbsh/BshMethod;->invokeImpl([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Scripted Method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lbsh/BshMethod;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lbsh/BshMethod;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lbsh/StringUtil;->methodString(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
