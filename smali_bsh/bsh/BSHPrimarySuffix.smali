.class Lbsh/BSHPrimarySuffix;
.super Lbsh/SimpleNode;


# static fields
.field public static final CLASS:I = 0x0

.field public static final INDEX:I = 0x1

.field public static final NAME:I = 0x2

.field public static final PROPERTY:I = 0x3


# instance fields
.field public field:Ljava/lang/String;

.field index:Ljava/lang/Object;

.field public operation:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method

.method private doIndex(Ljava/lang/Object;ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;,
            Lbsh/ReflectError;
        }
    .end annotation

    invoke-static {p1, p3, p4, p0}, Lbsh/BSHPrimarySuffix;->getIndexAux(Ljava/lang/Object;Lbsh/CallStack;Lbsh/Interpreter;Lbsh/SimpleNode;)I

    move-result v1

    if-eqz p2, :cond_0

    new-instance v0, Lbsh/LHS;

    invoke-direct {v0, p1, v1}, Lbsh/LHS;-><init>(Ljava/lang/Object;I)V

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p1, v1}, Lbsh/Reflect;->getIndex(Ljava/lang/Object;I)Ljava/lang/Object;
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0, p0, p3}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v0

    throw v0
.end method

.method private doName(Ljava/lang/Object;ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;,
            Lbsh/ReflectError;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lbsh/BSHPrimarySuffix;->field:Ljava/lang/String;

    const-string v1, "length"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Lbsh/EvalError;

    const-string v1, "Can\'t assign array length"

    invoke-direct {v0, v1, p0, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0, p0, p3}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lbsh/Primitive;

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {v0, v1}, Lbsh/Primitive;-><init>(I)V

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lbsh/BSHPrimarySuffix;->jjtGetNumChildren()I

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    iget-object v0, p0, Lbsh/BSHPrimarySuffix;->field:Ljava/lang/String;

    invoke-static {p1, v0}, Lbsh/Reflect;->getLHSObjectField(Ljava/lang/Object;Ljava/lang/String;)Lbsh/LHS;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbsh/BSHPrimarySuffix;->field:Ljava/lang/String;

    invoke-static {p1, v0}, Lbsh/Reflect;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHPrimarySuffix;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHArguments;

    invoke-virtual {v0, p3, p4}, Lbsh/BSHArguments;->getArguments(Lbsh/CallStack;Lbsh/Interpreter;)[Ljava/lang/Object;

    move-result-object v2

    iget-object v1, p0, Lbsh/BSHPrimarySuffix;->field:Ljava/lang/String;

    move-object v0, p1

    move-object v3, p4

    move-object v4, p3

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lbsh/Reflect;->invokeObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;)Ljava/lang/Object;
    :try_end_1
    .catch Lbsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0
.end method

.method private doProperty(ZLjava/lang/Object;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    sget-object v1, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne p2, v1, :cond_0

    new-instance v1, Lbsh/EvalError;

    const-string v2, "Attempt to access property on undefined variable or class name"

    invoke-direct {v1, v2, p0, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v1

    :cond_0
    instance-of v1, p2, Lbsh/Primitive;

    if-eqz v1, :cond_1

    new-instance v1, Lbsh/EvalError;

    const-string v2, "Attempt to access property on a primitive"

    invoke-direct {v1, v2, p0, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lbsh/BSHPrimarySuffix;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    check-cast v1, Lbsh/SimpleNode;

    invoke-virtual {v1, p3, p4}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_2

    new-instance v1, Lbsh/EvalError;

    const-string v2, "Property expression must be a String or identifier."

    invoke-direct {v1, v2, p0, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v1

    :cond_2
    if-eqz p1, :cond_4

    new-instance v2, Lbsh/LHS;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, p2, v1}, Lbsh/LHS;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    :cond_3
    :goto_0
    return-object v1

    :cond_4
    invoke-static {}, Lbsh/CollectionManager;->getCollectionManager()Lbsh/CollectionManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Lbsh/CollectionManager;->isMap(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, p2, v1}, Lbsh/CollectionManager;->getFromMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    sget-object v1, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    goto :goto_0

    :cond_5
    :try_start_0
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    invoke-static {p2, v2}, Lbsh/Reflect;->getObjectProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lbsh/ReflectError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Property: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, p0, p3}, Lbsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v2

    new-instance v2, Lbsh/EvalError;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "No such property: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, p0, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v2
.end method

.method static getIndexAux(Ljava/lang/Object;Lbsh/CallStack;Lbsh/Interpreter;Lbsh/SimpleNode;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lbsh/EvalError;

    const-string v1, "Not an array"

    invoke-direct {v0, v1, p3, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p3, v0}, Lbsh/SimpleNode;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    invoke-virtual {v0, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lbsh/Primitive;

    if-nez v1, :cond_1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Lbsh/Types;->getAssignableForm(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    check-cast v0, Lbsh/Primitive;

    invoke-virtual {v0}, Lbsh/Primitive;->intValue()I
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "doIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    const-string v1, "Arrays may only be indexed by integer types."

    invoke-virtual {v0, v1, p3, p1}, Lbsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public doSuffix(Ljava/lang/Object;ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    iget v0, p0, Lbsh/BSHPrimarySuffix;->operation:I

    if-nez v0, :cond_2

    instance-of v0, p1, Lbsh/BSHType;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Lbsh/EvalError;

    const-string v1, "Can\'t assign .class"

    invoke-direct {v0, v1, p0, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0

    :cond_0
    invoke-virtual {p3}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    check-cast p1, Lbsh/BSHType;

    invoke-virtual {p1, p3, p4}, Lbsh/BSHType;->getType(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lbsh/EvalError;

    const-string v1, "Attempt to use .class suffix on non class."

    invoke-direct {v0, v1, p0, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0

    :cond_2
    instance-of v0, p1, Lbsh/SimpleNode;

    if-eqz v0, :cond_5

    instance-of v0, p1, Lbsh/BSHAmbiguousName;

    if-eqz v0, :cond_4

    check-cast p1, Lbsh/BSHAmbiguousName;

    invoke-virtual {p1, p3, p4}, Lbsh/BSHAmbiguousName;->toObject(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object p1

    :cond_3
    :goto_1
    :try_start_0
    iget v0, p0, Lbsh/BSHPrimarySuffix;->operation:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "Unknown suffix type"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lbsh/ReflectError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v0

    new-instance v1, Lbsh/EvalError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "reflection error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v1

    :cond_4
    check-cast p1, Lbsh/SimpleNode;

    invoke-virtual {p1, p3, p4}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_5
    instance-of v0, p1, Lbsh/LHS;

    if-eqz v0, :cond_3

    :try_start_1
    check-cast p1, Lbsh/LHS;

    invoke-virtual {p1}, Lbsh/LHS;->getValue()Ljava/lang/Object;
    :try_end_1
    .catch Lbsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0, p0, p3}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v0

    throw v0

    :pswitch_0
    :try_start_2
    invoke-direct {p0, p1, p2, p3, p4}, Lbsh/BSHPrimarySuffix;->doIndex(Ljava/lang/Object;ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, p2, p3, p4}, Lbsh/BSHPrimarySuffix;->doName(Ljava/lang/Object;ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p2, p1, p3, p4}, Lbsh/BSHPrimarySuffix;->doProperty(ZLjava/lang/Object;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    :try_end_2
    .catch Lbsh/ReflectError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v2, v0

    new-instance v0, Lbsh/TargetError;

    const-string v1, "target exception"

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    const/4 v5, 0x1

    move-object v3, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lbsh/TargetError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lbsh/SimpleNode;Lbsh/CallStack;Z)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
