.class Lbsh/LHS;
.super Ljava/lang/Object;

# interfaces
.implements Lbsh/ParserConstants;
.implements Ljava/io/Serializable;


# static fields
.field static final FIELD:I = 0x1

.field static final INDEX:I = 0x3

.field static final METHOD_EVAL:I = 0x4

.field static final PROPERTY:I = 0x2

.field static final VARIABLE:I


# instance fields
.field field:Ljava/lang/reflect/Field;

.field index:I

.field localVar:Z

.field nameSpace:Lbsh/NameSpace;

.field object:Ljava/lang/Object;

.field propName:Ljava/lang/String;

.field type:I

.field varName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lbsh/NameSpace;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Error;

    const-string v1, "namespace lhs"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lbsh/NameSpace;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lbsh/LHS;->type:I

    iput-boolean p3, p0, Lbsh/LHS;->localVar:Z

    iput-object p2, p0, Lbsh/LHS;->varName:Ljava/lang/String;

    iput-object p1, p0, Lbsh/LHS;->nameSpace:Lbsh/NameSpace;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "constructed empty LHS"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lbsh/LHS;->type:I

    iput-object p1, p0, Lbsh/LHS;->object:Ljava/lang/Object;

    iput p2, p0, Lbsh/LHS;->index:I

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "constructed empty LHS"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lbsh/LHS;->type:I

    iput-object p1, p0, Lbsh/LHS;->object:Ljava/lang/Object;

    iput-object p2, p0, Lbsh/LHS;->propName:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "constructed empty LHS"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lbsh/LHS;->type:I

    iput-object p1, p0, Lbsh/LHS;->object:Ljava/lang/Object;

    iput-object p2, p0, Lbsh/LHS;->field:Ljava/lang/reflect/Field;

    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lbsh/LHS;->type:I

    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/LHS;->object:Ljava/lang/Object;

    iput-object p1, p0, Lbsh/LHS;->field:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public assign(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    iget v1, p0, Lbsh/LHS;->type:I

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lbsh/LHS;->localVar:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbsh/LHS;->nameSpace:Lbsh/NameSpace;

    iget-object v2, p0, Lbsh/LHS;->varName:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, p2}, Lbsh/NameSpace;->setLocalVariable(Ljava/lang/String;Ljava/lang/Object;Z)V

    :goto_0
    return-object p1

    :cond_0
    iget-object v1, p0, Lbsh/LHS;->nameSpace:Lbsh/NameSpace;

    iget-object v2, p0, Lbsh/LHS;->varName:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, p2}, Lbsh/NameSpace;->setVariable(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lbsh/LHS;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    :try_start_0
    instance-of v1, p1, Lbsh/Primitive;

    if-eqz v1, :cond_2

    move-object v0, p1

    check-cast v0, Lbsh/Primitive;

    move-object v1, v0

    invoke-virtual {v1}, Lbsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lbsh/LHS;->field:Ljava/lang/reflect/Field;

    invoke-static {v2}, Lbsh/ReflectManager;->RMSetAccessible(Ljava/lang/Object;)Z

    iget-object v2, p0, Lbsh/LHS;->field:Ljava/lang/reflect/Field;

    iget-object v3, p0, Lbsh/LHS;->object:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v1, Lbsh/UtilEvalError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "LHS ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lbsh/LHS;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ") not a static field."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move-object v1, p1

    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v2, Lbsh/UtilEvalError;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "LHS ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lbsh/LHS;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ") can\'t access field: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_2
    move-exception v1

    instance-of v1, p1, Lbsh/Primitive;

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Lbsh/Primitive;

    invoke-virtual {v1}, Lbsh/Primitive;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_2
    new-instance v2, Lbsh/UtilEvalError;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Argument type mismatch. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    if-nez p1, :cond_3

    const-string v1, "null"

    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " not assignable to field "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Lbsh/LHS;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    iget v1, p0, Lbsh/LHS;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    invoke-static {}, Lbsh/CollectionManager;->getCollectionManager()Lbsh/CollectionManager;

    move-result-object v1

    iget-object v2, p0, Lbsh/LHS;->object:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lbsh/CollectionManager;->isMap(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lbsh/LHS;->object:Ljava/lang/Object;

    iget-object v3, p0, Lbsh/LHS;->propName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p1}, Lbsh/CollectionManager;->putInMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    :try_start_1
    iget-object v1, p0, Lbsh/LHS;->object:Ljava/lang/Object;

    iget-object v2, p0, Lbsh/LHS;->propName:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lbsh/Reflect;->setObjectProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lbsh/ReflectError; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Assignment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lbsh/ReflectError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    new-instance v1, Lbsh/UtilEvalError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No such property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lbsh/LHS;->propName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    iget v1, p0, Lbsh/LHS;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    :try_start_2
    iget-object v1, p0, Lbsh/LHS;->object:Ljava/lang/Object;

    iget v2, p0, Lbsh/LHS;->index:I

    invoke-static {v1, v2, p1}, Lbsh/Reflect;->setIndex(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_2
    .catch Lbsh/UtilTargetError; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    goto/16 :goto_0

    :catch_4
    move-exception v1

    throw v1

    :catch_5
    move-exception v1

    new-instance v2, Lbsh/UtilEvalError;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Assignment: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    new-instance v1, Lbsh/InterpreterError;

    const-string v2, "unknown lhs"

    invoke-direct {v1, v2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    iget v0, p0, Lbsh/LHS;->type:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lbsh/LHS;->nameSpace:Lbsh/NameSpace;

    iget-object v1, p0, Lbsh/LHS;->varName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbsh/NameSpace;->getVariable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lbsh/LHS;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lbsh/LHS;->field:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lbsh/LHS;->object:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lbsh/LHS;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lbsh/Primitive;->wrap(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lbsh/UtilEvalError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Can\'t read field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lbsh/LHS;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lbsh/LHS;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :try_start_1
    iget-object v0, p0, Lbsh/LHS;->object:Ljava/lang/Object;

    iget-object v1, p0, Lbsh/LHS;->propName:Ljava/lang/String;

    invoke-static {v0, v1}, Lbsh/Reflect;->getObjectProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Lbsh/ReflectError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lbsh/ReflectError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    new-instance v0, Lbsh/UtilEvalError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No such property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lbsh/LHS;->propName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lbsh/LHS;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :try_start_2
    iget-object v0, p0, Lbsh/LHS;->object:Ljava/lang/Object;

    iget v1, p0, Lbsh/LHS;->index:I

    invoke-static {v0, v1}, Lbsh/Reflect;->getIndex(Ljava/lang/Object;I)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Lbsh/UtilEvalError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Array access: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "LHS type"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "LHS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, p0, Lbsh/LHS;->field:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "field = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lbsh/LHS;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, p0, Lbsh/LHS;->varName:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, " varName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lbsh/LHS;->varName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, p0, Lbsh/LHS;->nameSpace:Lbsh/NameSpace;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, " nameSpace = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lbsh/LHS;->nameSpace:Lbsh/NameSpace;

    invoke-virtual {v2}, Lbsh/NameSpace;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2
.end method
