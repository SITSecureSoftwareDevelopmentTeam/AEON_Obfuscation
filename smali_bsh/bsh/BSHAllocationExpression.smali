.class Lbsh/BSHAllocationExpression;
.super Lbsh/SimpleNode;


# static fields
.field private static innerClassCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lbsh/BSHAllocationExpression;->innerClassCount:I

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method

.method private arrayAllocation(Lbsh/BSHArrayDimensions;Ljava/lang/Class;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    invoke-virtual {p1, p2, p3, p4}, Lbsh/BSHArrayDimensions;->eval(Ljava/lang/Class;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq v0, v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p2, p1, p3}, Lbsh/BSHAllocationExpression;->arrayNewInstance(Ljava/lang/Class;Lbsh/BSHArrayDimensions;Lbsh/CallStack;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private arrayNewInstance(Ljava/lang/Class;Lbsh/BSHArrayDimensions;Lbsh/CallStack;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    iget v0, p2, Lbsh/BSHArrayDimensions;->numUndefinedDims:I

    if-lez v0, :cond_0

    iget v0, p2, Lbsh/BSHArrayDimensions;->numUndefinedDims:I

    new-array v0, v0, [I

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :cond_0
    :try_start_0
    iget-object v0, p2, Lbsh/BSHArrayDimensions;->definedDimensions:[I

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lbsh/TargetError;

    invoke-direct {v1, v0, p0, p3}, Lbsh/TargetError;-><init>(Ljava/lang/Throwable;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lbsh/EvalError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Can\'t construct primitive array: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v1
.end method

.method private constructObject(Ljava/lang/Class;[Ljava/lang/Object;Lbsh/CallStack;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    :try_start_0
    invoke-static {p1, p2}, Lbsh/Reflect;->constructObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lbsh/ReflectError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lbsh/EvalError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Constructor error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lbsh/ReflectError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v1

    :catch_1
    move-exception v2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "The constructor threw an exception:\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    new-instance v0, Lbsh/TargetError;

    const-string v1, "Object constructor"

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    const/4 v5, 0x1

    move-object v3, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lbsh/TargetError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lbsh/SimpleNode;Lbsh/CallStack;Z)V

    throw v0

    :cond_1
    invoke-virtual {p3}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v2

    invoke-virtual {v2}, Lbsh/This;->getNameSpace()Lbsh/NameSpace;

    move-result-object v2

    invoke-static {v2}, Lbsh/Name;->getClassNameSpace(Lbsh/NameSpace;)Lbsh/NameSpace;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2}, Lbsh/NameSpace;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_1
    invoke-static {}, Lbsh/ClassGenerator;->getClassGenerator()Lbsh/ClassGenerator;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lbsh/ClassGenerator;->setInstanceNameSpaceParent(Ljava/lang/Object;Ljava/lang/String;Lbsh/NameSpace;)V
    :try_end_1
    .catch Lbsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0, p0, p3}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v0

    throw v0
.end method

.method private constructWithClassBody(Ljava/lang/Class;[Ljava/lang/Object;Lbsh/BSHBlock;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p4}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v1

    invoke-virtual {v1}, Lbsh/NameSpace;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget v1, Lbsh/BSHAllocationExpression;->innerClassCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lbsh/BSHAllocationExpression;->innerClassCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lbsh/Modifiers;

    invoke-direct {v2}, Lbsh/Modifiers;-><init>()V

    const-string v0, "public"

    invoke-virtual {v2, v3, v0}, Lbsh/Modifiers;->addModifier(ILjava/lang/String;)V

    :try_start_0
    invoke-static {}, Lbsh/ClassGenerator;->getClassGenerator()Lbsh/ClassGenerator;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    move-object v5, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Lbsh/ClassGenerator;->generateClass(Ljava/lang/String;Lbsh/Modifiers;[Ljava/lang/Class;Ljava/lang/Class;Lbsh/BSHBlock;ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-static {v0, p2}, Lbsh/Reflect;->constructObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0, p0, p4}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v0

    instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    :cond_0
    new-instance v1, Lbsh/EvalError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error constructing inner class instance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, p4}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v1
.end method

.method private constructWithInterfaceBody(Ljava/lang/Class;[Ljava/lang/Object;Lbsh/BSHBlock;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    invoke-virtual {p4}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v0

    new-instance v1, Lbsh/NameSpace;

    const-string v2, "AnonymousBlock"

    invoke-direct {v1, v0, v2}, Lbsh/NameSpace;-><init>(Lbsh/NameSpace;Ljava/lang/String;)V

    invoke-virtual {p4, v1}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    const/4 v0, 0x1

    invoke-virtual {p3, p4, p5, v0}, Lbsh/BSHBlock;->eval(Lbsh/CallStack;Lbsh/Interpreter;Z)Ljava/lang/Object;

    invoke-virtual {p4}, Lbsh/CallStack;->pop()Lbsh/NameSpace;

    invoke-virtual {v1, p1}, Lbsh/NameSpace;->importStatic(Ljava/lang/Class;)V

    :try_start_0
    invoke-virtual {v1, p5}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbsh/This;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0, p0, p4}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v0

    throw v0
.end method

.method private objectAllocation(Lbsh/BSHAmbiguousName;Lbsh/BSHArguments;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p3}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    invoke-virtual {p2, p3, p4}, Lbsh/BSHArguments;->getArguments(Lbsh/CallStack;Lbsh/Interpreter;)[Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Lbsh/EvalError;

    const-string v1, "Null args in new."

    invoke-direct {v0, v1, p0, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0

    :cond_0
    invoke-virtual {p1, p3, p4, v4}, Lbsh/BSHAmbiguousName;->toObject(Lbsh/CallStack;Lbsh/Interpreter;Z)Ljava/lang/Object;

    invoke-virtual {p1, p3, p4, v3}, Lbsh/BSHAmbiguousName;->toObject(Lbsh/CallStack;Lbsh/Interpreter;Z)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lbsh/ClassIdentifier;

    if-eqz v1, :cond_1

    check-cast v0, Lbsh/ClassIdentifier;

    invoke-virtual {v0}, Lbsh/ClassIdentifier;->getTargetClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Lbsh/BSHAllocationExpression;->jjtGetNumChildren()I

    move-result v0

    if-le v0, v5, :cond_2

    move v0, v3

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {p0, v5}, Lbsh/BSHAllocationExpression;->jjtGetChild(I)Lbsh/Node;

    move-result-object v3

    check-cast v3, Lbsh/BSHBlock;

    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p0

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lbsh/BSHAllocationExpression;->constructWithInterfaceBody(Ljava/lang/Class;[Ljava/lang/Object;Lbsh/BSHBlock;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    new-instance v0, Lbsh/EvalError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unknown class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p1, Lbsh/BSHAmbiguousName;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0

    :cond_2
    move v0, v4

    goto :goto_0

    :cond_3
    move-object v0, p0

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lbsh/BSHAllocationExpression;->constructWithClassBody(Ljava/lang/Class;[Ljava/lang/Object;Lbsh/BSHBlock;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-direct {p0, v1, v2, p3}, Lbsh/BSHAllocationExpression;->constructObject(Ljava/lang/Class;[Ljava/lang/Object;Lbsh/CallStack;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private objectArrayAllocation(Lbsh/BSHAmbiguousName;Lbsh/BSHArrayDimensions;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    invoke-virtual {p3}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v0

    invoke-virtual {p1, p3, p4}, Lbsh/BSHAmbiguousName;->toClass(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lbsh/EvalError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1, v0}, Lbsh/BSHAmbiguousName;->getName(Lbsh/NameSpace;)Lbsh/Name;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " not found."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v1

    :cond_0
    invoke-direct {p0, p2, v1, p3, p4}, Lbsh/BSHAllocationExpression;->arrayAllocation(Lbsh/BSHArrayDimensions;Ljava/lang/Class;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private primitiveArrayAllocation(Lbsh/BSHPrimitiveType;Lbsh/BSHArrayDimensions;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    invoke-virtual {p1}, Lbsh/BSHPrimitiveType;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p2, v0, p3, p4}, Lbsh/BSHAllocationExpression;->arrayAllocation(Lbsh/BSHArrayDimensions;Ljava/lang/Class;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHAllocationExpression;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lbsh/BSHAllocationExpression;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    check-cast v1, Lbsh/SimpleNode;

    instance-of v2, v0, Lbsh/BSHAmbiguousName;

    if-eqz v2, :cond_1

    check-cast v0, Lbsh/BSHAmbiguousName;

    instance-of v2, v1, Lbsh/BSHArguments;

    if-eqz v2, :cond_0

    check-cast v1, Lbsh/BSHArguments;

    invoke-direct {p0, v0, v1, p1, p2}, Lbsh/BSHAllocationExpression;->objectAllocation(Lbsh/BSHAmbiguousName;Lbsh/BSHArguments;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    check-cast v1, Lbsh/BSHArrayDimensions;

    invoke-direct {p0, v0, v1, p1, p2}, Lbsh/BSHAllocationExpression;->objectArrayAllocation(Lbsh/BSHAmbiguousName;Lbsh/BSHArrayDimensions;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    check-cast v0, Lbsh/BSHPrimitiveType;

    check-cast v1, Lbsh/BSHArrayDimensions;

    invoke-direct {p0, v0, v1, p1, p2}, Lbsh/BSHAllocationExpression;->primitiveArrayAllocation(Lbsh/BSHPrimitiveType;Lbsh/BSHArrayDimensions;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
