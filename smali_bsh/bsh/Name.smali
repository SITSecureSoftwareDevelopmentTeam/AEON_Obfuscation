.class Lbsh/Name;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static FINISHED:Ljava/lang/String;


# instance fields
.field asClass:Ljava/lang/Class;

.field private callstackDepth:I

.field classOfStaticMethod:Ljava/lang/Class;

.field private evalBaseObject:Ljava/lang/Object;

.field private evalName:Ljava/lang/String;

.field private lastEvalName:Ljava/lang/String;

.field public namespace:Lbsh/NameSpace;

.field value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lbsh/Name;->FINISHED:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lbsh/NameSpace;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/Name;->value:Ljava/lang/String;

    iput-object p1, p0, Lbsh/Name;->namespace:Lbsh/NameSpace;

    iput-object p2, p0, Lbsh/Name;->value:Ljava/lang/String;

    return-void
.end method

.method private completeRound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    if-nez p3, :cond_0

    new-instance v0, Lbsh/InterpreterError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "lastEvalName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lbsh/Name;->lastEvalName:Ljava/lang/String;

    iput-object p2, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    iput-object p3, p0, Lbsh/Name;->evalBaseObject:Ljava/lang/Object;

    return-object p3
.end method

.method private consumeNextObjectField(Lbsh/CallStack;Lbsh/Interpreter;ZZ)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    iget-object v0, p0, Lbsh/Name;->evalBaseObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-static {v0}, Lbsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    iget-object v2, p0, Lbsh/Name;->namespace:Lbsh/NameSpace;

    iget-object v4, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lbsh/Name;->resolveThisFieldReference(Lbsh/CallStack;Lbsh/NameSpace;Lbsh/Interpreter;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    sget-object v2, Lbsh/Name;->FINISHED:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lbsh/Name;->completeRound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbsh/Name;->prefix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lbsh/Name;->evalBaseObject:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbsh/Name;->evalBaseObject:Ljava/lang/Object;

    instance-of v0, v0, Lbsh/This;

    if-eqz v0, :cond_5

    :cond_1
    if-nez p3, :cond_5

    sget-boolean v0, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "trying to resolve variable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lbsh/Name;->evalBaseObject:Ljava/lang/Object;

    if-nez v0, :cond_4

    iget-object v2, p0, Lbsh/Name;->namespace:Lbsh/NameSpace;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lbsh/Name;->resolveThisFieldReference(Lbsh/CallStack;Lbsh/NameSpace;Lbsh/Interpreter;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    sget-object v1, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq v0, v1, :cond_5

    sget-boolean v1, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "resolved variable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " in namespace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lbsh/Name;->namespace:Lbsh/NameSpace;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-static {v1}, Lbsh/Name;->suffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1, v0}, Lbsh/Name;->completeRound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lbsh/Name;->evalBaseObject:Ljava/lang/Object;

    check-cast v0, Lbsh/This;

    iget-object v2, v0, Lbsh/This;->namespace:Lbsh/NameSpace;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lbsh/Name;->resolveThisFieldReference(Lbsh/CallStack;Lbsh/NameSpace;Lbsh/Interpreter;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lbsh/Name;->evalBaseObject:Ljava/lang/Object;

    if-nez v0, :cond_a

    sget-boolean v0, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "trying class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_6
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-static {v3}, Lbsh/Name;->countParts(Ljava/lang/String;)I

    move-result v3

    if-gt v1, v3, :cond_7

    iget-object v0, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-static {v0, v1}, Lbsh/Name;->prefix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lbsh/Name;->namespace:Lbsh/NameSpace;

    invoke-virtual {v2, v0}, Lbsh/NameSpace;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_8

    :cond_7
    if-eqz v2, :cond_9

    iget-object v3, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    iget-object v4, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-static {v4}, Lbsh/Name;->countParts(Ljava/lang/String;)I

    move-result v4

    sub-int v1, v4, v1

    invoke-static {v3, v1}, Lbsh/Name;->suffix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lbsh/ClassIdentifier;

    invoke-direct {v3, v2}, Lbsh/ClassIdentifier;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, v0, v1, v3}, Lbsh/Name;->completeRound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    sget-boolean v0, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "not a class, trying var prefix "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lbsh/Name;->evalBaseObject:Ljava/lang/Object;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lbsh/Name;->evalBaseObject:Ljava/lang/Object;

    instance-of v0, v0, Lbsh/This;

    if-eqz v0, :cond_d

    :cond_b
    if-nez p3, :cond_d

    if-eqz p4, :cond_d

    iget-object v0, p0, Lbsh/Name;->evalBaseObject:Ljava/lang/Object;

    if-nez v0, :cond_c

    iget-object v0, p0, Lbsh/Name;->namespace:Lbsh/NameSpace;

    :goto_3
    new-instance v1, Lbsh/NameSpace;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "auto: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lbsh/NameSpace;-><init>(Lbsh/NameSpace;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v1, v2}, Lbsh/NameSpace;->setVariable(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-static {v0}, Lbsh/Name;->suffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0, v1}, Lbsh/Name;->completeRound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lbsh/Name;->evalBaseObject:Ljava/lang/Object;

    check-cast v0, Lbsh/This;

    iget-object v0, v0, Lbsh/This;->namespace:Lbsh/NameSpace;

    goto :goto_3

    :cond_d
    iget-object v0, p0, Lbsh/Name;->evalBaseObject:Ljava/lang/Object;

    if-nez v0, :cond_f

    iget-object v0, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-static {v0}, Lbsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    sget-object v1, Lbsh/Name;->FINISHED:Ljava/lang/String;

    sget-object v2, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    invoke-direct {p0, v0, v1, v2}, Lbsh/Name;->completeRound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    new-instance v0, Lbsh/UtilEvalError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Class or variable not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-object v0, p0, Lbsh/Name;->evalBaseObject:Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-ne v0, v1, :cond_10

    new-instance v0, Lbsh/UtilTargetError;

    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Null Pointer while evaluating: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lbsh/Name;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lbsh/UtilTargetError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_10
    iget-object v0, p0, Lbsh/Name;->evalBaseObject:Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne v0, v1, :cond_11

    new-instance v0, Lbsh/UtilEvalError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Undefined variable or class name while evaluating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lbsh/Name;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iget-object v0, p0, Lbsh/Name;->evalBaseObject:Ljava/lang/Object;

    instance-of v0, v0, Lbsh/Primitive;

    if-eqz v0, :cond_12

    new-instance v0, Lbsh/UtilEvalError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Can\'t treat primitive like an object. Error while evaluating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lbsh/Name;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v0, p0, Lbsh/Name;->evalBaseObject:Ljava/lang/Object;

    instance-of v0, v0, Lbsh/ClassIdentifier;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lbsh/Name;->evalBaseObject:Ljava/lang/Object;

    check-cast v0, Lbsh/ClassIdentifier;

    invoke-virtual {v0}, Lbsh/ClassIdentifier;->getTargetClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v0, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbsh/Name;->prefix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "this"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lbsh/Name;->namespace:Lbsh/NameSpace;

    :goto_4
    if-eqz v0, :cond_14

    iget-object v1, v0, Lbsh/NameSpace;->classInstance:Ljava/lang/Object;

    if-eqz v1, :cond_13

    iget-object v1, v0, Lbsh/NameSpace;->classInstance:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, v2, :cond_13

    iget-object v1, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-static {v1}, Lbsh/Name;->suffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lbsh/NameSpace;->classInstance:Ljava/lang/Object;

    invoke-direct {p0, v3, v1, v0}, Lbsh/Name;->completeRound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_13
    invoke-virtual {v0}, Lbsh/NameSpace;->getParent()Lbsh/NameSpace;

    move-result-object v0

    goto :goto_4

    :cond_14
    new-instance v0, Lbsh/UtilEvalError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Can\'t find enclosing \'this\' instance of class: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Name call to getStaticField, class: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, ", field:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_16
    invoke-static {v2, v3}, Lbsh/Reflect;->getStaticField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lbsh/ReflectError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_5
    if-nez v0, :cond_17

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, "$"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lbsh/Name;->namespace:Lbsh/NameSpace;

    invoke-virtual {v4, v1}, Lbsh/NameSpace;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_17

    new-instance v0, Lbsh/ClassIdentifier;

    invoke-direct {v0, v1}, Lbsh/ClassIdentifier;-><init>(Ljava/lang/Class;)V

    :cond_17
    if-nez v0, :cond_19

    new-instance v0, Lbsh/UtilEvalError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "No static field or inner class: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    sget-boolean v4, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v4, :cond_18

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "field reflect error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_18
    move-object v0, v1

    goto :goto_5

    :cond_19
    iget-object v1, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-static {v1}, Lbsh/Name;->suffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1, v0}, Lbsh/Name;->completeRound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_1a
    if-eqz p3, :cond_1b

    new-instance v0, Lbsh/UtilEvalError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lbsh/Name;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " does not resolve to a class name."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    iget-object v0, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbsh/Name;->prefix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "length"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lbsh/Name;->evalBaseObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1c

    new-instance v1, Lbsh/Primitive;

    iget-object v2, p0, Lbsh/Name;->evalBaseObject:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    invoke-direct {v1, v2}, Lbsh/Primitive;-><init>(I)V

    iget-object v2, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-static {v2}, Lbsh/Name;->suffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lbsh/Name;->completeRound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_1c
    :try_start_1
    iget-object v1, p0, Lbsh/Name;->evalBaseObject:Ljava/lang/Object;

    invoke-static {v1, v0}, Lbsh/Reflect;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-static {v2}, Lbsh/Name;->suffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lbsh/Name;->completeRound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lbsh/ReflectError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto/16 :goto_0

    :catch_1
    move-exception v1

    new-instance v1, Lbsh/UtilEvalError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Cannot access field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", on object: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lbsh/Name;->evalBaseObject:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static countParts(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v2, v0

    move v0, v1

    :goto_1
    const/16 v3, 0x2e

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-eq v0, v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    goto :goto_0
.end method

.method static getClassNameSpace(Lbsh/NameSpace;)Lbsh/NameSpace;
    .locals 1

    iget-boolean v0, p0, Lbsh/NameSpace;->isClass:Z

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-boolean v0, p0, Lbsh/NameSpace;->isMethod:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbsh/NameSpace;->getParent()Lbsh/NameSpace;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbsh/NameSpace;->getParent()Lbsh/NameSpace;

    move-result-object v0

    iget-boolean v0, v0, Lbsh/NameSpace;->isClass:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbsh/NameSpace;->getParent()Lbsh/NameSpace;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private invokeLocalMethod(Lbsh/Interpreter;[Ljava/lang/Object;Lbsh/CallStack;Lbsh/SimpleNode;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    sget-boolean v0, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "invokeLocalMethod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lbsh/Name;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "invokeLocalMethod: interpreter = null"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lbsh/Name;->value:Ljava/lang/String;

    invoke-static {p2}, Lbsh/Types;->getTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v2

    :try_start_0
    iget-object v0, p0, Lbsh/Name;->namespace:Lbsh/NameSpace;

    invoke-virtual {v0, v1, v2}, Lbsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2, p1, p3, p4}, Lbsh/BshMethod;->invoke([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Local method invocation"

    invoke-virtual {v0, v1, p4, p3}, Lbsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v0

    throw v0

    :cond_2
    invoke-virtual {p1}, Lbsh/Interpreter;->getClassManager()Lbsh/BshClassManager;

    :try_start_1
    iget-object v0, p0, Lbsh/Name;->namespace:Lbsh/NameSpace;

    invoke-virtual {v0, v1, v2, p1}, Lbsh/NameSpace;->getCommand(Ljava/lang/String;[Ljava/lang/Class;Lbsh/Interpreter;)Ljava/lang/Object;
    :try_end_1
    .catch Lbsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    if-nez v0, :cond_4

    :try_start_2
    iget-object v0, p0, Lbsh/Name;->namespace:Lbsh/NameSpace;

    const-string v3, "invoke"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Lbsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;
    :try_end_2
    .catch Lbsh/UtilEvalError; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    if-eqz v0, :cond_3

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v1, v2, v7

    aput-object p2, v2, v8

    invoke-virtual {v0, v2, p1, p3, p4}, Lbsh/BshMethod;->invoke([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Error loading command: "

    invoke-virtual {v0, v1, p4, p3}, Lbsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v0

    throw v0

    :catch_2
    move-exception v0

    const-string v1, "Local method invocation"

    invoke-virtual {v0, v1, p4, p3}, Lbsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v0

    throw v0

    :cond_3
    new-instance v0, Lbsh/EvalError;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Command not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v1, v2}, Lbsh/StringUtil;->methodString(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p4, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0

    :cond_4
    instance-of v1, v0, Lbsh/BshMethod;

    if-eqz v1, :cond_5

    check-cast v0, Lbsh/BshMethod;

    invoke-virtual {v0, p2, p1, p3, p4}, Lbsh/BshMethod;->invoke([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_5
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_6

    :try_start_3
    check-cast v0, Ljava/lang/Class;

    invoke-static {v0, p2, p1, p3}, Lbsh/Reflect;->invokeCompiledCommand(Ljava/lang/Class;[Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;)Ljava/lang/Object;
    :try_end_3
    .catch Lbsh/UtilEvalError; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v1, "Error invoking compiled command: "

    invoke-virtual {v0, v1, p4, p3}, Lbsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v0

    throw v0

    :cond_6
    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "invalid command type"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isCompound(Ljava/lang/String;)Z
    .locals 2

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static prefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lbsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lbsh/Name;->countParts(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v0}, Lbsh/Name;->prefix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static prefix(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    move v0, v1

    move v2, v3

    :cond_2
    const/16 v4, 0x2e

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-eq v0, v1, :cond_3

    add-int/lit8 v2, v2, 0x1

    if-lt v2, p1, :cond_2

    :cond_3
    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private reset()V
    .locals 1

    iget-object v0, p0, Lbsh/Name;->value:Ljava/lang/String;

    iput-object v0, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/Name;->evalBaseObject:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lbsh/Name;->callstackDepth:I

    return-void
.end method

.method static suffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lbsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lbsh/Name;->countParts(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v0}, Lbsh/Name;->suffix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static suffix(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    const/4 v3, -0x1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :cond_2
    const/16 v2, 0x2e

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    if-eq v0, v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    if-lt v1, p1, :cond_2

    :cond_3
    if-eq v0, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public invokeMethod(Lbsh/Interpreter;[Ljava/lang/Object;Lbsh/CallStack;Lbsh/SimpleNode;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;,
            Lbsh/EvalError;,
            Lbsh/ReflectError;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object v0, p0, Lbsh/Name;->value:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbsh/Name;->suffix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lbsh/Interpreter;->getClassManager()Lbsh/BshClassManager;

    move-result-object v2

    invoke-virtual {p3}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v0

    iget-object v3, p0, Lbsh/Name;->classOfStaticMethod:Ljava/lang/Class;

    if-eqz v3, :cond_0

    iget-object v0, p0, Lbsh/Name;->classOfStaticMethod:Ljava/lang/Class;

    invoke-static {v2, v0, v1, p2}, Lbsh/Reflect;->invokeStaticMethod(Lbsh/BshClassManager;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v3, p0, Lbsh/Name;->value:Ljava/lang/String;

    invoke-static {v3}, Lbsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Lbsh/Name;->invokeLocalMethod(Lbsh/Interpreter;[Ljava/lang/Object;Lbsh/CallStack;Lbsh/SimpleNode;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lbsh/Name;->value:Ljava/lang/String;

    invoke-static {v3}, Lbsh/Name;->prefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "super"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lbsh/Name;->value:Ljava/lang/String;

    invoke-static {v4}, Lbsh/Name;->countParts(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    invoke-static {v0}, Lbsh/Name;->getClassNameSpace(Lbsh/NameSpace;)Lbsh/NameSpace;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lbsh/NameSpace;->getClassInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lbsh/ClassGenerator;->getClassGenerator()Lbsh/ClassGenerator;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v1, p2}, Lbsh/ClassGenerator;->invokeSuperclassMethod(Lbsh/BshClassManager;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Lbsh/NameSpace;->getNameResolver(Ljava/lang/String;)Lbsh/Name;

    move-result-object v3

    invoke-virtual {v3, p3, p1}, Lbsh/Name;->toObject(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne v0, v4, :cond_3

    new-instance v0, Lbsh/UtilEvalError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Attempt to resolve method: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "() on undefined variable or class name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    instance-of v4, v0, Lbsh/ClassIdentifier;

    if-nez v4, :cond_6

    instance-of v2, v0, Lbsh/Primitive;

    if-eqz v2, :cond_5

    sget-object v2, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-ne v0, v2, :cond_4

    new-instance v0, Lbsh/UtilTargetError;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null Pointer in Method Invocation"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lbsh/UtilTargetError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    sget-boolean v2, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "Attempt to access method on primitive... allowing bsh.Primitive to peek through for debugging"

    invoke-static {v2}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_5
    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lbsh/Reflect;->invokeObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    sget-boolean v4, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "invokeMethod: trying static - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_7
    check-cast v0, Lbsh/ClassIdentifier;

    invoke-virtual {v0}, Lbsh/ClassIdentifier;->getTargetClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lbsh/Name;->classOfStaticMethod:Ljava/lang/Class;

    if-eqz v0, :cond_8

    invoke-static {v2, v0, v1, p2}, Lbsh/Reflect;->invokeStaticMethod(Lbsh/BshClassManager;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    new-instance v0, Lbsh/UtilEvalError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "invokeMethod: unknown target: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method resolveThisFieldReference(Lbsh/CallStack;Lbsh/NameSpace;Lbsh/Interpreter;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    const-string v0, "this"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p5, :cond_0

    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Redundant to call .this on This type"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p2, p3}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v0

    invoke-virtual {v0}, Lbsh/This;->getNameSpace()Lbsh/NameSpace;

    move-result-object v1

    invoke-static {v1}, Lbsh/Name;->getClassNameSpace(Lbsh/NameSpace;)Lbsh/NameSpace;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-static {v0}, Lbsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, p3}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {v1}, Lbsh/NameSpace;->getClassInstance()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "super"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2, p3}, Lbsh/NameSpace;->getSuper(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v0

    invoke-virtual {v0}, Lbsh/This;->getNameSpace()Lbsh/NameSpace;

    move-result-object v1

    invoke-virtual {v1}, Lbsh/NameSpace;->getParent()Lbsh/NameSpace;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lbsh/NameSpace;->getParent()Lbsh/NameSpace;

    move-result-object v2

    iget-boolean v2, v2, Lbsh/NameSpace;->isClass:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lbsh/NameSpace;->getParent()Lbsh/NameSpace;

    move-result-object v0

    invoke-virtual {v0, p3}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    const-string v1, "global"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2, p3}, Lbsh/NameSpace;->getGlobal(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v0

    :cond_5
    if-nez v0, :cond_6

    if-eqz p5, :cond_6

    const-string v1, "namespace"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v0, p2

    :cond_6
    :goto_1
    if-nez v0, :cond_e

    if-eqz p5, :cond_e

    const-string v1, "caller"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v0, p0, Lbsh/Name;->lastEvalName:Ljava/lang/String;

    const-string v1, "this"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lbsh/Name;->lastEvalName:Ljava/lang/String;

    const-string v1, "caller"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_7
    if-nez p1, :cond_c

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "no callstack"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const-string v1, "variables"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p2}, Lbsh/NameSpace;->getVariableNames()[Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_9
    const-string v1, "methods"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p2}, Lbsh/NameSpace;->getMethodNames()[Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_a
    const-string v1, "interpreter"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lbsh/Name;->lastEvalName:Ljava/lang/String;

    const-string v1, "this"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, p3

    goto :goto_1

    :cond_b
    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Can only call .interpreter on literal \'this\'"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget v0, p0, Lbsh/Name;->callstackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/Name;->callstackDepth:I

    invoke-virtual {p1, v0}, Lbsh/CallStack;->get(I)Lbsh/NameSpace;

    move-result-object v0

    invoke-virtual {v0, p3}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Can only call .caller on literal \'this\' or literal \'.caller\'"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-nez v0, :cond_10

    if-eqz p5, :cond_10

    const-string v1, "callstack"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v0, p0, Lbsh/Name;->lastEvalName:Ljava/lang/String;

    const-string v1, "this"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    if-nez p1, :cond_f

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "no callstack"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    move-object v0, p1

    :cond_10
    if-nez v0, :cond_11

    invoke-virtual {p2, p4}, Lbsh/NameSpace;->getVariable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :cond_11
    if-nez v0, :cond_1

    new-instance v0, Lbsh/InterpreterError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "null this field ref:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Can only call .callstack on literal \'this\'"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized toClass()Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Lbsh/UtilEvalError;
        }
    .end annotation

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lbsh/Name;->asClass:Ljava/lang/Class;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lbsh/Name;->asClass:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lbsh/Name;->reset()V

    iget-object v1, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    const-string v2, "var"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lbsh/Name;->asClass:Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iget-object v1, p0, Lbsh/Name;->namespace:Lbsh/NameSpace;

    iget-object v2, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lbsh/NameSpace;->getClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_3
    invoke-virtual {p0, v2, v3, v4}, Lbsh/Name;->toObject(Lbsh/CallStack;Lbsh/Interpreter;Z)Ljava/lang/Object;
    :try_end_3
    .catch Lbsh/UtilEvalError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    :goto_1
    :try_start_4
    instance-of v2, v0, Lbsh/ClassIdentifier;

    if-eqz v2, :cond_3

    check-cast v0, Lbsh/ClassIdentifier;

    invoke-virtual {v0}, Lbsh/ClassIdentifier;->getTargetClass()Ljava/lang/Class;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/ClassNotFoundException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lbsh/Name;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " not found in namespace"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object v0, p0, Lbsh/Name;->asClass:Ljava/lang/Class;

    iget-object v0, p0, Lbsh/Name;->asClass:Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method public declared-synchronized toLHS(Lbsh/CallStack;Lbsh/Interpreter;)Lbsh/LHS;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lbsh/Name;->reset()V

    iget-object v0, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-static {v0}, Lbsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    const-string v1, "this"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Can\'t assign to \'this\'."

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lbsh/LHS;

    iget-object v1, p0, Lbsh/Name;->namespace:Lbsh/NameSpace;

    iget-object v2, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lbsh/LHS;-><init>(Lbsh/NameSpace;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    :try_start_2
    iget-object v3, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-static {v3}, Lbsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v0, v3}, Lbsh/Name;->consumeNextObjectField(Lbsh/CallStack;Lbsh/Interpreter;ZZ)Ljava/lang/Object;
    :try_end_2
    .catch Lbsh/UtilEvalError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v1, Lbsh/UtilEvalError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "LHS evaluation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lbsh/UtilEvalError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v3, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    if-nez v3, :cond_3

    instance-of v3, v0, Lbsh/ClassIdentifier;

    if-eqz v3, :cond_3

    new-instance v0, Lbsh/UtilEvalError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Can\'t assign to class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lbsh/Name;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-nez v0, :cond_4

    new-instance v0, Lbsh/UtilEvalError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Error in LHS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lbsh/Name;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    instance-of v3, v0, Lbsh/This;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    const-string v4, "namespace"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    const-string v4, "variables"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    const-string v4, "methods"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    const-string v4, "caller"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    new-instance v0, Lbsh/UtilEvalError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Can\'t assign to special variable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string v3, "found This reference evaluating LHS"

    invoke-static {v3}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    iget-object v3, p0, Lbsh/Name;->lastEvalName:Ljava/lang/String;

    const-string v4, "super"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v2, v1

    :cond_7
    new-instance v1, Lbsh/LHS;

    check-cast v0, Lbsh/This;

    iget-object v0, v0, Lbsh/This;->namespace:Lbsh/NameSpace;

    iget-object v3, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-direct {v1, v0, v3, v2}, Lbsh/LHS;-><init>(Lbsh/NameSpace;Ljava/lang/String;Z)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lbsh/Name;->evalName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_a

    :try_start_4
    instance-of v1, v0, Lbsh/ClassIdentifier;

    if-eqz v1, :cond_9

    check-cast v0, Lbsh/ClassIdentifier;

    invoke-virtual {v0}, Lbsh/ClassIdentifier;->getTargetClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-static {v0, v1}, Lbsh/Reflect;->getLHSStaticField(Ljava/lang/Class;Ljava/lang/String;)Lbsh/LHS;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-static {v0, v1}, Lbsh/Reflect;->getLHSObjectField(Ljava/lang/Object;Ljava/lang/String;)Lbsh/LHS;
    :try_end_4
    .catch Lbsh/ReflectError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    new-instance v1, Lbsh/UtilEvalError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Field access: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "Internal error in lhs..."

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public toObject(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lbsh/Name;->toObject(Lbsh/CallStack;Lbsh/Interpreter;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized toObject(Lbsh/CallStack;Lbsh/Interpreter;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lbsh/Name;->reset()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lbsh/Name;->consumeNextObjectField(Lbsh/CallStack;Lbsh/Interpreter;ZZ)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "null value in toObject()"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    monitor-exit p0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbsh/Name;->value:Ljava/lang/String;

    return-object v0
.end method
