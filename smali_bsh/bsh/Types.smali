.class Lbsh/Types;
.super Ljava/lang/Object;


# static fields
.field static final ASSIGNMENT:I = 0x1

.field static final CAST:I

.field static INVALID_CAST:Lbsh/Primitive;

.field static VALID_CAST:Lbsh/Primitive;

.field static class$bsh$Primitive:Ljava/lang/Class;

.field static class$bsh$This:Ljava/lang/Class;

.field static class$java$lang$Object:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbsh/Primitive;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lbsh/Primitive;-><init>(I)V

    sput-object v0, Lbsh/Types;->VALID_CAST:Lbsh/Primitive;

    new-instance v0, Lbsh/Primitive;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lbsh/Primitive;-><init>(I)V

    sput-object v0, Lbsh/Types;->INVALID_CAST:Lbsh/Primitive;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static argsAssignable([Ljava/lang/Class;[Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p1}, Lbsh/Types;->getTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p0}, Lbsh/Types;->isSignatureAssignable([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method static castError(Ljava/lang/Class;Ljava/lang/Class;I)Lbsh/UtilEvalError;
    .locals 2

    invoke-static {p0}, Lbsh/Reflect;->normalizeClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lbsh/Reflect;->normalizeClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lbsh/Types;->castError(Ljava/lang/String;Ljava/lang/String;I)Lbsh/UtilEvalError;

    move-result-object v0

    return-object v0
.end method

.method static castError(Ljava/lang/String;Ljava/lang/String;I)Lbsh/UtilEvalError;
    .locals 3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    new-instance v0, Lbsh/UtilEvalError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Can\'t assign "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Cannot cast "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    new-instance v0, Lbsh/UtilTargetError;

    invoke-direct {v0, v1}, Lbsh/UtilTargetError;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static castObject(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;IZ)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "bad cast params 1"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p4, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "bad cast params 2"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lbsh/Types;->class$bsh$Primitive:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "bsh.Primitive"

    invoke-static {v0}, Lbsh/Types;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Types;->class$bsh$Primitive:Ljava/lang/Class;

    :goto_0
    if-ne p1, v0, :cond_3

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "bad from Type, need to unwrap"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v0, Lbsh/Types;->class$bsh$Primitive:Ljava/lang/Class;

    goto :goto_0

    :cond_3
    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-ne p2, v0, :cond_4

    if-eqz p1, :cond_4

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "inconsistent args 1"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne p2, v0, :cond_5

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_5

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "inconsistent args 2"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "loose toType should be null"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-eqz p0, :cond_7

    if-ne p0, p1, :cond_9

    :cond_7
    if-eqz p4, :cond_8

    sget-object p2, Lbsh/Types;->VALID_CAST:Lbsh/Primitive;

    :cond_8
    move-object v0, p2

    :goto_1
    return-object v0

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_a

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    check-cast p2, Lbsh/Primitive;

    invoke-static {p0, p1, p2, p4, p3}, Lbsh/Primitive;->castPrimitive(Ljava/lang/Class;Ljava/lang/Class;Lbsh/Primitive;ZI)Lbsh/Primitive;

    move-result-object v0

    goto :goto_1

    :cond_b
    invoke-static {p1}, Lbsh/Primitive;->isWrapperType(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p1}, Lbsh/Primitive;->unboxType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    if-eqz p4, :cond_c

    const/4 v0, 0x0

    :goto_2
    invoke-static {p0, v1, v0, p4, p3}, Lbsh/Primitive;->castPrimitive(Ljava/lang/Class;Ljava/lang/Class;Lbsh/Primitive;ZI)Lbsh/Primitive;

    move-result-object v0

    goto :goto_1

    :cond_c
    invoke-static {p2, v1}, Lbsh/Primitive;->wrap(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/Primitive;

    goto :goto_2

    :cond_d
    if-eqz p4, :cond_e

    sget-object v0, Lbsh/Types;->INVALID_CAST:Lbsh/Primitive;

    goto :goto_1

    :cond_e
    invoke-static {p0, p1, p3}, Lbsh/Types;->castError(Ljava/lang/Class;Ljava/lang/Class;I)Lbsh/UtilEvalError;

    move-result-object v0

    throw v0

    :cond_f
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_10

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_10
    invoke-static {p0}, Lbsh/Primitive;->isWrapperType(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_12

    if-eqz p1, :cond_12

    if-eqz p4, :cond_11

    sget-object v0, Lbsh/Types;->VALID_CAST:Lbsh/Primitive;

    goto :goto_1

    :cond_11
    invoke-static {p0}, Lbsh/Primitive;->unboxType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    check-cast p2, Lbsh/Primitive;

    invoke-virtual {p2}, Lbsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lbsh/Primitive;->castWrapper(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_12
    sget-object v0, Lbsh/Types;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string v0, "java.lang.Object"

    invoke-static {v0}, Lbsh/Types;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Types;->class$java$lang$Object:Ljava/lang/Class;

    :goto_3
    if-ne p0, v0, :cond_15

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_15

    if-eqz p1, :cond_15

    if-eqz p4, :cond_14

    sget-object v0, Lbsh/Types;->VALID_CAST:Lbsh/Primitive;

    goto/16 :goto_1

    :cond_13
    sget-object v0, Lbsh/Types;->class$java$lang$Object:Ljava/lang/Class;

    goto :goto_3

    :cond_14
    check-cast p2, Lbsh/Primitive;

    invoke-virtual {p2}, Lbsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1

    :cond_15
    check-cast p2, Lbsh/Primitive;

    invoke-static {p0, p1, p2, p4, p3}, Lbsh/Primitive;->castPrimitive(Ljava/lang/Class;Ljava/lang/Class;Lbsh/Primitive;ZI)Lbsh/Primitive;

    move-result-object v0

    goto/16 :goto_1

    :cond_16
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_18

    if-eqz p4, :cond_17

    sget-object p2, Lbsh/Types;->VALID_CAST:Lbsh/Primitive;

    :cond_17
    move-object v0, p2

    goto/16 :goto_1

    :cond_18
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lbsh/Types;->class$bsh$This:Ljava/lang/Class;

    if-nez v0, :cond_19

    const-string v0, "bsh.This"

    invoke-static {v0}, Lbsh/Types;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Types;->class$bsh$This:Ljava/lang/Class;

    :goto_4
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {}, Lbsh/Capabilities;->canGenerateInterfaces()Z

    move-result v0

    if-eqz v0, :cond_1b

    if-eqz p4, :cond_1a

    sget-object v0, Lbsh/Types;->VALID_CAST:Lbsh/Primitive;

    goto/16 :goto_1

    :cond_19
    sget-object v0, Lbsh/Types;->class$bsh$This:Ljava/lang/Class;

    goto :goto_4

    :cond_1a
    check-cast p2, Lbsh/This;

    invoke-virtual {p2, p0}, Lbsh/This;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1

    :cond_1b
    invoke-static {p0}, Lbsh/Primitive;->isWrapperType(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {p1}, Lbsh/Primitive;->isWrapperType(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1d

    if-eqz p4, :cond_1c

    sget-object v0, Lbsh/Types;->VALID_CAST:Lbsh/Primitive;

    goto/16 :goto_1

    :cond_1c
    invoke-static {p0, p2}, Lbsh/Primitive;->castWrapper(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1

    :cond_1d
    if-eqz p4, :cond_1e

    sget-object v0, Lbsh/Types;->INVALID_CAST:Lbsh/Primitive;

    goto/16 :goto_1

    :cond_1e
    invoke-static {p0, p1, p3}, Lbsh/Types;->castError(Ljava/lang/Class;Ljava/lang/Class;I)Lbsh/UtilEvalError;

    move-result-object v0

    throw v0
.end method

.method public static castObject(Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "null fromValue"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p0, Lbsh/Primitive;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lbsh/Primitive;

    invoke-virtual {v0}, Lbsh/Primitive;->getType()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    invoke-static {p1, v0, p0, p2, v1}, Lbsh/Types;->castObject(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
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

.method public static getAssignableForm(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lbsh/Types;->castObject(Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getTypes([Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array v0, v0, [Ljava/lang/Class;

    :goto_0
    return-object v0

    :cond_0
    array-length v1, p0

    new-array v2, v1, [Ljava/lang/Class;

    move v1, v0

    :goto_1
    array-length v0, p0

    if-ge v1, v0, :cond_3

    aget-object v0, p0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    aput-object v0, v2, v1

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    aget-object v0, p0, v1

    instance-of v0, v0, Lbsh/Primitive;

    if-eqz v0, :cond_2

    aget-object v0, p0, v1

    check-cast v0, Lbsh/Primitive;

    invoke-virtual {v0}, Lbsh/Primitive;->getType()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v2, v1

    goto :goto_2

    :cond_2
    aget-object v0, p0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v2, v1

    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method static isBshAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    :try_start_0
    invoke-static {p0, p1, v1, v2, v3}, Lbsh/Types;->castObject(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lbsh/Types;->VALID_CAST:Lbsh/Primitive;
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lbsh/InterpreterError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "err in cast check: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static isJavaAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_9

    if-eq p0, p1, :cond_0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_3

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_0

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_0

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_0

    :cond_3
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_0

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_0

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_0

    :cond_4
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_5

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_0

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_0

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_0

    :cond_5
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_6

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_0

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_0

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_0

    :cond_6
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_7

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_0

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_0

    :cond_7
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_8

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_0

    :cond_8
    move v0, v1

    goto :goto_0

    :cond_9
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_0
.end method

.method static isSignatureAssignable([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .locals 4

    const/4 v1, 0x0

    array-length v0, p0

    array-length v2, p1

    if-eq v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    aget-object v2, p1, v0

    aget-object v3, p0, v0

    invoke-static {v2, v3}, Lbsh/Types;->isBshAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method
