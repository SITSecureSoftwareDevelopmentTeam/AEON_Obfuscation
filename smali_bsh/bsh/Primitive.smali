.class public final Lbsh/Primitive;
.super Ljava/lang/Object;

# interfaces
.implements Lbsh/ParserConstants;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsh/Primitive$Special;
    }
.end annotation


# static fields
.field public static final NULL:Lbsh/Primitive;

.field public static final VOID:Lbsh/Primitive;

.field static class$bsh$Primitive:Ljava/lang/Class;

.field static class$java$lang$Boolean:Ljava/lang/Class;

.field static class$java$lang$Byte:Ljava/lang/Class;

.field static class$java$lang$Character:Ljava/lang/Class;

.field static class$java$lang$Double:Ljava/lang/Class;

.field static class$java$lang$Float:Ljava/lang/Class;

.field static class$java$lang$Integer:Ljava/lang/Class;

.field static class$java$lang$Long:Ljava/lang/Class;

.field static class$java$lang$Short:Ljava/lang/Class;

.field static primitiveToWrapper:Ljava/util/Hashtable;

.field static wrapperToPrimitive:Ljava/util/Hashtable;


# instance fields
.field private value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lbsh/Primitive;->primitiveToWrapper:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lbsh/Primitive;->wrapperToPrimitive:Ljava/util/Hashtable;

    sget-object v1, Lbsh/Primitive;->primitiveToWrapper:Ljava/util/Hashtable;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v0, Lbsh/Primitive;->class$java$lang$Boolean:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.Boolean"

    invoke-static {v0}, Lbsh/Primitive;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Primitive;->class$java$lang$Boolean:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive;->primitiveToWrapper:Ljava/util/Hashtable;

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v0, Lbsh/Primitive;->class$java$lang$Byte:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "java.lang.Byte"

    invoke-static {v0}, Lbsh/Primitive;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Primitive;->class$java$lang$Byte:Ljava/lang/Class;

    :goto_1
    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive;->primitiveToWrapper:Ljava/util/Hashtable;

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v0, Lbsh/Primitive;->class$java$lang$Short:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "java.lang.Short"

    invoke-static {v0}, Lbsh/Primitive;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Primitive;->class$java$lang$Short:Ljava/lang/Class;

    :goto_2
    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive;->primitiveToWrapper:Ljava/util/Hashtable;

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v0, Lbsh/Primitive;->class$java$lang$Character:Ljava/lang/Class;

    if-nez v0, :cond_3

    const-string v0, "java.lang.Character"

    invoke-static {v0}, Lbsh/Primitive;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Primitive;->class$java$lang$Character:Ljava/lang/Class;

    :goto_3
    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive;->primitiveToWrapper:Ljava/util/Hashtable;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v0, Lbsh/Primitive;->class$java$lang$Integer:Ljava/lang/Class;

    if-nez v0, :cond_4

    const-string v0, "java.lang.Integer"

    invoke-static {v0}, Lbsh/Primitive;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Primitive;->class$java$lang$Integer:Ljava/lang/Class;

    :goto_4
    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive;->primitiveToWrapper:Ljava/util/Hashtable;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v0, Lbsh/Primitive;->class$java$lang$Long:Ljava/lang/Class;

    if-nez v0, :cond_5

    const-string v0, "java.lang.Long"

    invoke-static {v0}, Lbsh/Primitive;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Primitive;->class$java$lang$Long:Ljava/lang/Class;

    :goto_5
    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive;->primitiveToWrapper:Ljava/util/Hashtable;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v0, Lbsh/Primitive;->class$java$lang$Float:Ljava/lang/Class;

    if-nez v0, :cond_6

    const-string v0, "java.lang.Float"

    invoke-static {v0}, Lbsh/Primitive;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Primitive;->class$java$lang$Float:Ljava/lang/Class;

    :goto_6
    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive;->primitiveToWrapper:Ljava/util/Hashtable;

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v0, Lbsh/Primitive;->class$java$lang$Double:Ljava/lang/Class;

    if-nez v0, :cond_7

    const-string v0, "java.lang.Double"

    invoke-static {v0}, Lbsh/Primitive;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Primitive;->class$java$lang$Double:Ljava/lang/Class;

    :goto_7
    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive;->wrapperToPrimitive:Ljava/util/Hashtable;

    sget-object v0, Lbsh/Primitive;->class$java$lang$Boolean:Ljava/lang/Class;

    if-nez v0, :cond_8

    const-string v0, "java.lang.Boolean"

    invoke-static {v0}, Lbsh/Primitive;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Primitive;->class$java$lang$Boolean:Ljava/lang/Class;

    :goto_8
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive;->wrapperToPrimitive:Ljava/util/Hashtable;

    sget-object v0, Lbsh/Primitive;->class$java$lang$Byte:Ljava/lang/Class;

    if-nez v0, :cond_9

    const-string v0, "java.lang.Byte"

    invoke-static {v0}, Lbsh/Primitive;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Primitive;->class$java$lang$Byte:Ljava/lang/Class;

    :goto_9
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive;->wrapperToPrimitive:Ljava/util/Hashtable;

    sget-object v0, Lbsh/Primitive;->class$java$lang$Short:Ljava/lang/Class;

    if-nez v0, :cond_a

    const-string v0, "java.lang.Short"

    invoke-static {v0}, Lbsh/Primitive;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Primitive;->class$java$lang$Short:Ljava/lang/Class;

    :goto_a
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive;->wrapperToPrimitive:Ljava/util/Hashtable;

    sget-object v0, Lbsh/Primitive;->class$java$lang$Character:Ljava/lang/Class;

    if-nez v0, :cond_b

    const-string v0, "java.lang.Character"

    invoke-static {v0}, Lbsh/Primitive;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Primitive;->class$java$lang$Character:Ljava/lang/Class;

    :goto_b
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive;->wrapperToPrimitive:Ljava/util/Hashtable;

    sget-object v0, Lbsh/Primitive;->class$java$lang$Integer:Ljava/lang/Class;

    if-nez v0, :cond_c

    const-string v0, "java.lang.Integer"

    invoke-static {v0}, Lbsh/Primitive;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Primitive;->class$java$lang$Integer:Ljava/lang/Class;

    :goto_c
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive;->wrapperToPrimitive:Ljava/util/Hashtable;

    sget-object v0, Lbsh/Primitive;->class$java$lang$Long:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "java.lang.Long"

    invoke-static {v0}, Lbsh/Primitive;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Primitive;->class$java$lang$Long:Ljava/lang/Class;

    :goto_d
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive;->wrapperToPrimitive:Ljava/util/Hashtable;

    sget-object v0, Lbsh/Primitive;->class$java$lang$Float:Ljava/lang/Class;

    if-nez v0, :cond_e

    const-string v0, "java.lang.Float"

    invoke-static {v0}, Lbsh/Primitive;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Primitive;->class$java$lang$Float:Ljava/lang/Class;

    :goto_e
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive;->wrapperToPrimitive:Ljava/util/Hashtable;

    sget-object v0, Lbsh/Primitive;->class$java$lang$Double:Ljava/lang/Class;

    if-nez v0, :cond_f

    const-string v0, "java.lang.Double"

    invoke-static {v0}, Lbsh/Primitive;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Primitive;->class$java$lang$Double:Ljava/lang/Class;

    :goto_f
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lbsh/Primitive;

    sget-object v1, Lbsh/Primitive$Special;->NULL_VALUE:Lbsh/Primitive$Special;

    invoke-direct {v0, v1}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    new-instance v0, Lbsh/Primitive;

    sget-object v1, Lbsh/Primitive$Special;->VOID_TYPE:Lbsh/Primitive$Special;

    invoke-direct {v0, v1}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    return-void

    :cond_0
    sget-object v0, Lbsh/Primitive;->class$java$lang$Boolean:Ljava/lang/Class;

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lbsh/Primitive;->class$java$lang$Byte:Ljava/lang/Class;

    goto/16 :goto_1

    :cond_2
    sget-object v0, Lbsh/Primitive;->class$java$lang$Short:Ljava/lang/Class;

    goto/16 :goto_2

    :cond_3
    sget-object v0, Lbsh/Primitive;->class$java$lang$Character:Ljava/lang/Class;

    goto/16 :goto_3

    :cond_4
    sget-object v0, Lbsh/Primitive;->class$java$lang$Integer:Ljava/lang/Class;

    goto/16 :goto_4

    :cond_5
    sget-object v0, Lbsh/Primitive;->class$java$lang$Long:Ljava/lang/Class;

    goto/16 :goto_5

    :cond_6
    sget-object v0, Lbsh/Primitive;->class$java$lang$Float:Ljava/lang/Class;

    goto/16 :goto_6

    :cond_7
    sget-object v0, Lbsh/Primitive;->class$java$lang$Double:Ljava/lang/Class;

    goto/16 :goto_7

    :cond_8
    sget-object v0, Lbsh/Primitive;->class$java$lang$Boolean:Ljava/lang/Class;

    goto/16 :goto_8

    :cond_9
    sget-object v0, Lbsh/Primitive;->class$java$lang$Byte:Ljava/lang/Class;

    goto/16 :goto_9

    :cond_a
    sget-object v0, Lbsh/Primitive;->class$java$lang$Short:Ljava/lang/Class;

    goto/16 :goto_a

    :cond_b
    sget-object v0, Lbsh/Primitive;->class$java$lang$Character:Ljava/lang/Class;

    goto/16 :goto_b

    :cond_c
    sget-object v0, Lbsh/Primitive;->class$java$lang$Integer:Ljava/lang/Class;

    goto/16 :goto_c

    :cond_d
    sget-object v0, Lbsh/Primitive;->class$java$lang$Long:Ljava/lang/Class;

    goto :goto_d

    :cond_e
    sget-object v0, Lbsh/Primitive;->class$java$lang$Float:Ljava/lang/Class;

    goto :goto_e

    :cond_f
    sget-object v0, Lbsh/Primitive;->class$java$lang$Double:Ljava/lang/Class;

    goto :goto_f
.end method

.method public constructor <init>(B)V
    .locals 1

    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, p1}, Ljava/lang/Byte;-><init>(B)V

    invoke-direct {p0, v0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(C)V
    .locals 1

    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-direct {p0, v0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-direct {p0, v0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-direct {p0, v0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-direct {p0, v0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "Use Primitve.NULL instead of Primitive(null)"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lbsh/Primitive$Special;->NULL_VALUE:Lbsh/Primitive$Special;

    if-eq p1, v0, :cond_1

    sget-object v0, Lbsh/Primitive$Special;->VOID_TYPE:Lbsh/Primitive$Special;

    if-eq p1, v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lbsh/Primitive;->isWrapperType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lbsh/InterpreterError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Not a wrapper type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(S)V
    .locals 1

    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, p1}, Ljava/lang/Short;-><init>(S)V

    invoke-direct {p0, v0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-direct {p0, v0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static binaryOperation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-eq p0, v0, :cond_0

    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-ne p1, v0, :cond_1

    :cond_0
    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Null value or \'null\' literal in binary operation"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq p0, v0, :cond_2

    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne p1, v0, :cond_3

    :cond_2
    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Undefined variable, class, or \'void\' literal in binary operation"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    instance-of v0, p0, Lbsh/Primitive;

    if-eqz v0, :cond_4

    check-cast p0, Lbsh/Primitive;

    invoke-virtual {p0}, Lbsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object p0

    :cond_4
    instance-of v0, p1, Lbsh/Primitive;

    if-eqz v0, :cond_5

    check-cast p1, Lbsh/Primitive;

    invoke-virtual {p1}, Lbsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object p1

    :cond_5
    invoke-static {p0, p1}, Lbsh/Primitive;->promotePrimitives(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_6

    new-instance v2, Lbsh/UtilEvalError;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Type mismatch in operator.  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " cannot be used with "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    :try_start_0
    invoke-static {v1, v0, p2}, Lbsh/Primitive;->binaryOperationImpl(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sget-object v1, Lbsh/Primitive;->class$bsh$Primitive:Ljava/lang/Class;

    if-nez v1, :cond_a

    const-string v1, "bsh.Primitive"

    invoke-static {v1}, Lbsh/Primitive;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lbsh/Primitive;->class$bsh$Primitive:Ljava/lang/Class;

    :goto_0
    if-ne v2, v1, :cond_7

    sget-object v1, Lbsh/Primitive;->class$bsh$Primitive:Ljava/lang/Class;

    if-nez v1, :cond_b

    const-string v1, "bsh.Primitive"

    invoke-static {v1}, Lbsh/Primitive;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lbsh/Primitive;->class$bsh$Primitive:Ljava/lang/Class;

    :goto_1
    if-eq v3, v1, :cond_8

    :cond_7
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    :cond_8
    new-instance v1, Lbsh/Primitive;

    invoke-direct {v1, v0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    :cond_9
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lbsh/UtilTargetError;

    const-string v2, "Arithemetic Exception in binary op"

    invoke-direct {v1, v2, v0}, Lbsh/UtilTargetError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_a
    sget-object v1, Lbsh/Primitive;->class$bsh$Primitive:Ljava/lang/Class;

    goto :goto_0

    :cond_b
    sget-object v1, Lbsh/Primitive;->class$bsh$Primitive:Ljava/lang/Class;

    goto :goto_1
.end method

.method static binaryOperationImpl(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1, p2}, Lbsh/Primitive;->booleanBinaryOperation(Ljava/lang/Boolean;Ljava/lang/Boolean;I)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Integer;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1, p2}, Lbsh/Primitive;->intBinaryOperation(Ljava/lang/Integer;Ljava/lang/Integer;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Long;

    check-cast p1, Ljava/lang/Long;

    invoke-static {p0, p1, p2}, Lbsh/Primitive;->longBinaryOperation(Ljava/lang/Long;Ljava/lang/Long;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/Float;

    check-cast p1, Ljava/lang/Float;

    invoke-static {p0, p1, p2}, Lbsh/Primitive;->floatBinaryOperation(Ljava/lang/Float;Ljava/lang/Float;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_3
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/lang/Double;

    check-cast p1, Ljava/lang/Double;

    invoke-static {p0, p1, p2}, Lbsh/Primitive;->doubleBinaryOperation(Ljava/lang/Double;Ljava/lang/Double;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Invalid types in binary operator"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static booleanBinaryOperation(Ljava/lang/Boolean;Ljava/lang/Boolean;I)Ljava/lang/Boolean;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "unimplemented binary operator"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v2, Ljava/lang/Boolean;

    if-ne v3, v4, :cond_0

    :goto_0
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0

    :pswitch_2
    new-instance v2, Ljava/lang/Boolean;

    if-eq v3, v4, :cond_1

    :goto_2
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :pswitch_3
    new-instance v2, Ljava/lang/Boolean;

    if-nez v3, :cond_2

    if-eqz v4, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    invoke-direct {v2, v1}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1

    :pswitch_4
    new-instance v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    :goto_3
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x5a
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method static booleanUnaryOperation(Ljava/lang/Boolean;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    packed-switch p1, :pswitch_data_0

    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Operator inappropriate for boolean"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x56
        :pswitch_0
    .end packed-switch
.end method

.method public static boxType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3

    sget-object v0, Lbsh/Primitive;->primitiveToWrapper:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lbsh/InterpreterError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Not a primitive type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static castPrimitive(Ljava/lang/Class;Ljava/lang/Class;Lbsh/Primitive;ZI)Lbsh/Primitive;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "bad cast param 1"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "bad cast param 2"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lbsh/InterpreterError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "bad fromType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-ne p2, v0, :cond_3

    if-eqz p1, :cond_3

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "inconsistent args 1"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne p2, v0, :cond_4

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_4

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "inconsistent args 2"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    if-eqz p3, :cond_5

    sget-object v0, Lbsh/Types;->INVALID_CAST:Lbsh/Primitive;

    :goto_0
    return-object v0

    :cond_5
    invoke-static {p0}, Lbsh/Reflect;->normalizeClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "void value"

    invoke-static {v0, v1, p4}, Lbsh/Types;->castError(Ljava/lang/String;Ljava/lang/String;I)Lbsh/UtilEvalError;

    move-result-object v0

    throw v0

    :cond_6
    const/4 v0, 0x0

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lbsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object v0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_9

    if-nez p1, :cond_d

    if-eqz p3, :cond_8

    sget-object v0, Lbsh/Types;->INVALID_CAST:Lbsh/Primitive;

    goto :goto_0

    :cond_8
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "primitive type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Null value"

    invoke-static {v0, v1, p4}, Lbsh/Types;->castError(Ljava/lang/String;Ljava/lang/String;I)Lbsh/UtilEvalError;

    move-result-object v0

    throw v0

    :cond_9
    if-nez p1, :cond_b

    if-eqz p3, :cond_a

    sget-object v0, Lbsh/Types;->VALID_CAST:Lbsh/Primitive;

    goto :goto_0

    :cond_a
    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    goto :goto_0

    :cond_b
    if-eqz p3, :cond_c

    sget-object v0, Lbsh/Types;->INVALID_CAST:Lbsh/Primitive;

    goto :goto_0

    :cond_c
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "object type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "primitive value"

    invoke-static {v0, v1, p4}, Lbsh/Types;->castError(Ljava/lang/String;Ljava/lang/String;I)Lbsh/UtilEvalError;

    move-result-object v0

    throw v0

    :cond_d
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_11

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_f

    if-eqz p3, :cond_e

    sget-object v0, Lbsh/Types;->INVALID_CAST:Lbsh/Primitive;

    goto :goto_0

    :cond_e
    invoke-static {p0, p1, p4}, Lbsh/Types;->castError(Ljava/lang/Class;Ljava/lang/Class;I)Lbsh/UtilEvalError;

    move-result-object v0

    throw v0

    :cond_f
    if-eqz p3, :cond_10

    sget-object p2, Lbsh/Types;->VALID_CAST:Lbsh/Primitive;

    :cond_10
    move-object v0, p2

    goto :goto_0

    :cond_11
    const/4 v1, 0x1

    if-ne p4, v1, :cond_13

    invoke-static {p0, p1}, Lbsh/Types;->isJavaAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_13

    if-eqz p3, :cond_12

    sget-object v0, Lbsh/Types;->INVALID_CAST:Lbsh/Primitive;

    goto/16 :goto_0

    :cond_12
    invoke-static {p0, p1, p4}, Lbsh/Types;->castError(Ljava/lang/Class;Ljava/lang/Class;I)Lbsh/UtilEvalError;

    move-result-object v0

    throw v0

    :cond_13
    if-eqz p3, :cond_14

    sget-object v0, Lbsh/Types;->VALID_CAST:Lbsh/Primitive;

    goto/16 :goto_0

    :cond_14
    new-instance v1, Lbsh/Primitive;

    invoke-static {p0, v0}, Lbsh/Primitive;->castWrapper(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_0
.end method

.method static castWrapper(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lbsh/InterpreterError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "invalid type in castWrapper: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "null value in castWrapper, guard"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_2

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "bad wrapper cast of boolean"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/Integer;

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    :goto_0
    instance-of v1, v0, Ljava/lang/Number;

    if-nez v1, :cond_3

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "bad type in cast"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    check-cast v0, Ljava/lang/Number;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_4

    new-instance v1, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Byte;-><init>(B)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_4
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_5

    new-instance v1, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Short;-><init>(S)V

    move-object v0, v1

    goto :goto_1

    :cond_5
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_6

    new-instance v1, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-char v0, v0

    invoke-direct {v1, v0}, Ljava/lang/Character;-><init>(C)V

    move-object v0, v1

    goto :goto_1

    :cond_6
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_7

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v1

    goto :goto_1

    :cond_7
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_8

    new-instance v1, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    move-object v0, v1

    goto :goto_1

    :cond_8
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_9

    new-instance v1, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Float;-><init>(F)V

    move-object v0, v1

    goto :goto_1

    :cond_9
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_a

    new-instance v1, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    move-object v0, v1

    goto :goto_1

    :cond_a
    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "error in wrapper cast"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move-object v0, p1

    goto/16 :goto_0
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

.method static doubleBinaryOperation(Ljava/lang/Double;Ljava/lang/Double;I)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "Unimplemented binary double operator"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v2, Ljava/lang/Boolean;

    cmpg-double v3, v4, v6

    if-gez v3, :cond_0

    :goto_0
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0

    :pswitch_2
    new-instance v2, Ljava/lang/Boolean;

    cmpl-double v3, v4, v6

    if-lez v3, :cond_1

    :goto_2
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :pswitch_3
    new-instance v2, Ljava/lang/Boolean;

    cmpl-double v3, v4, v6

    if-nez v3, :cond_2

    :goto_3
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_3

    :pswitch_4
    new-instance v2, Ljava/lang/Boolean;

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_3

    :goto_4
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_4

    :pswitch_5
    new-instance v2, Ljava/lang/Boolean;

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_4

    :goto_5
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_5

    :pswitch_6
    new-instance v2, Ljava/lang/Boolean;

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_5

    :goto_6
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_6

    :pswitch_7
    new-instance v0, Ljava/lang/Double;

    add-double v2, v4, v6

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    goto :goto_1

    :pswitch_8
    new-instance v0, Ljava/lang/Double;

    sub-double v2, v4, v6

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    goto :goto_1

    :pswitch_9
    new-instance v0, Ljava/lang/Double;

    mul-double v2, v4, v6

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    goto :goto_1

    :pswitch_a
    new-instance v0, Ljava/lang/Double;

    div-double v2, v4, v6

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    goto :goto_1

    :pswitch_b
    new-instance v0, Ljava/lang/Double;

    rem-double v2, v4, v6

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    goto :goto_1

    :pswitch_c
    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Can\'t shift doubles"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method static doubleUnaryOperation(Ljava/lang/Double;I)D
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    packed-switch p1, :pswitch_data_0

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "bad double unaryOperation"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    neg-double v0, v0

    :pswitch_1
    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static floatBinaryOperation(Ljava/lang/Float;Ljava/lang/Float;I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "Unimplemented binary float operator"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v2, Ljava/lang/Boolean;

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    :goto_0
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0

    :pswitch_2
    new-instance v2, Ljava/lang/Boolean;

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    :goto_2
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :pswitch_3
    new-instance v2, Ljava/lang/Boolean;

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    :goto_3
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_3

    :pswitch_4
    new-instance v2, Ljava/lang/Boolean;

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3

    :goto_4
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_4

    :pswitch_5
    new-instance v2, Ljava/lang/Boolean;

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_4

    :goto_5
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_5

    :pswitch_6
    new-instance v2, Ljava/lang/Boolean;

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_5

    :goto_6
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_6

    :pswitch_7
    new-instance v0, Ljava/lang/Float;

    add-float v1, v3, v4

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    goto :goto_1

    :pswitch_8
    new-instance v0, Ljava/lang/Float;

    sub-float v1, v3, v4

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    goto :goto_1

    :pswitch_9
    new-instance v0, Ljava/lang/Float;

    mul-float v1, v3, v4

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    goto :goto_1

    :pswitch_a
    new-instance v0, Ljava/lang/Float;

    div-float v1, v3, v4

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    goto :goto_1

    :pswitch_b
    new-instance v0, Ljava/lang/Float;

    rem-float v1, v3, v4

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    goto :goto_1

    :pswitch_c
    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Can\'t shift floats "

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method static floatUnaryOperation(Ljava/lang/Float;I)F
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    packed-switch p1, :pswitch_data_0

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "bad float unaryOperation"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    neg-float v0, v0

    :pswitch_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDefaultValue(Ljava/lang/Class;)Lbsh/Primitive;
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    new-instance v0, Lbsh/Primitive;

    invoke-direct {v0, v1}, Lbsh/Primitive;-><init>(Z)V

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v0, Lbsh/Primitive;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbsh/Primitive;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lbsh/Primitive;->castToType(Ljava/lang/Class;I)Lbsh/Primitive;
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "bad cast"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static intBinaryOperation(Ljava/lang/Integer;Ljava/lang/Integer;I)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "Unimplemented binary integer operator"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v2, Ljava/lang/Boolean;

    if-ge v3, v4, :cond_0

    :goto_0
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0

    :pswitch_2
    new-instance v2, Ljava/lang/Boolean;

    if-le v3, v4, :cond_1

    :goto_2
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :pswitch_3
    new-instance v2, Ljava/lang/Boolean;

    if-ne v3, v4, :cond_2

    :goto_3
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_3

    :pswitch_4
    new-instance v2, Ljava/lang/Boolean;

    if-gt v3, v4, :cond_3

    :goto_4
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_4

    :pswitch_5
    new-instance v2, Ljava/lang/Boolean;

    if-lt v3, v4, :cond_4

    :goto_5
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_5

    :pswitch_6
    new-instance v2, Ljava/lang/Boolean;

    if-eq v3, v4, :cond_5

    :goto_6
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_6

    :pswitch_7
    new-instance v0, Ljava/lang/Integer;

    add-int v1, v3, v4

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_1

    :pswitch_8
    new-instance v0, Ljava/lang/Integer;

    sub-int v1, v3, v4

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_1

    :pswitch_9
    new-instance v0, Ljava/lang/Integer;

    mul-int v1, v3, v4

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_1

    :pswitch_a
    new-instance v0, Ljava/lang/Integer;

    div-int v1, v3, v4

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_1

    :pswitch_b
    new-instance v0, Ljava/lang/Integer;

    rem-int v1, v3, v4

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_1

    :pswitch_c
    new-instance v0, Ljava/lang/Integer;

    shl-int v1, v3, v4

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_1

    :pswitch_d
    new-instance v0, Ljava/lang/Integer;

    shr-int v1, v3, v4

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_1

    :pswitch_e
    new-instance v0, Ljava/lang/Integer;

    ushr-int v1, v3, v4

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_1

    :pswitch_f
    new-instance v0, Ljava/lang/Integer;

    and-int v1, v3, v4

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto/16 :goto_1

    :pswitch_10
    new-instance v0, Ljava/lang/Integer;

    or-int v1, v3, v4

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto/16 :goto_1

    :pswitch_11
    new-instance v0, Ljava/lang/Integer;

    xor-int v1, v3, v4

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_11
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method static intUnaryOperation(Ljava/lang/Integer;I)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "bad integer unaryOperation"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    neg-int v0, v0

    :goto_0
    :sswitch_1
    return v0

    :sswitch_2
    xor-int/lit8 v0, v0, -0x1

    goto :goto_0

    :sswitch_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x57 -> :sswitch_2
        0x64 -> :sswitch_3
        0x65 -> :sswitch_4
        0x66 -> :sswitch_1
        0x67 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isWrapperType(Ljava/lang/Class;)Z
    .locals 1

    sget-object v0, Lbsh/Primitive;->wrapperToPrimitive:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static longBinaryOperation(Ljava/lang/Long;Ljava/lang/Long;I)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "Unimplemented binary long operator"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v2, Ljava/lang/Boolean;

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    :goto_0
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0

    :pswitch_2
    new-instance v2, Ljava/lang/Boolean;

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    :goto_2
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :pswitch_3
    new-instance v2, Ljava/lang/Boolean;

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    :goto_3
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_3

    :pswitch_4
    new-instance v2, Ljava/lang/Boolean;

    cmp-long v3, v4, v6

    if-gtz v3, :cond_3

    :goto_4
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_4

    :pswitch_5
    new-instance v2, Ljava/lang/Boolean;

    cmp-long v3, v4, v6

    if-ltz v3, :cond_4

    :goto_5
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_5

    :pswitch_6
    new-instance v2, Ljava/lang/Boolean;

    cmp-long v3, v4, v6

    if-eqz v3, :cond_5

    :goto_6
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_6

    :pswitch_7
    new-instance v0, Ljava/lang/Long;

    add-long v2, v4, v6

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    goto :goto_1

    :pswitch_8
    new-instance v0, Ljava/lang/Long;

    sub-long v2, v4, v6

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    goto :goto_1

    :pswitch_9
    new-instance v0, Ljava/lang/Long;

    mul-long v2, v4, v6

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    goto :goto_1

    :pswitch_a
    new-instance v0, Ljava/lang/Long;

    div-long v2, v4, v6

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    goto :goto_1

    :pswitch_b
    new-instance v0, Ljava/lang/Long;

    rem-long v2, v4, v6

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    goto :goto_1

    :pswitch_c
    new-instance v0, Ljava/lang/Long;

    long-to-int v1, v6

    shl-long v2, v4, v1

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    goto :goto_1

    :pswitch_d
    new-instance v0, Ljava/lang/Long;

    long-to-int v1, v6

    shr-long v2, v4, v1

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    goto :goto_1

    :pswitch_e
    new-instance v0, Ljava/lang/Long;

    long-to-int v1, v6

    ushr-long v2, v4, v1

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    goto/16 :goto_1

    :pswitch_f
    new-instance v0, Ljava/lang/Long;

    and-long v2, v4, v6

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    goto/16 :goto_1

    :pswitch_10
    new-instance v0, Ljava/lang/Long;

    or-long v2, v4, v6

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    goto/16 :goto_1

    :pswitch_11
    new-instance v0, Ljava/lang/Long;

    xor-long v2, v4, v6

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_11
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method static longUnaryOperation(Ljava/lang/Long;I)J
    .locals 4

    const-wide/16 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "bad long unaryOperation"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    neg-long v0, v0

    :goto_0
    :sswitch_1
    return-wide v0

    :sswitch_2
    const-wide/16 v2, -0x1

    xor-long/2addr v0, v2

    goto :goto_0

    :sswitch_3
    add-long/2addr v0, v2

    goto :goto_0

    :sswitch_4
    sub-long/2addr v0, v2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x57 -> :sswitch_2
        0x64 -> :sswitch_3
        0x65 -> :sswitch_4
        0x66 -> :sswitch_1
        0x67 -> :sswitch_0
    .end sparse-switch
.end method

.method static promotePrimitives(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6

    invoke-static {p0}, Lbsh/Primitive;->promoteToInteger(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1}, Lbsh/Primitive;->promoteToInteger(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v0, v1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    instance-of v0, v3, Ljava/lang/Number;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Ljava/lang/Number;

    move-object v2, v3

    check-cast v2, Ljava/lang/Number;

    instance-of v4, v0, Ljava/lang/Double;

    if-nez v4, :cond_0

    instance-of v5, v2, Ljava/lang/Double;

    if-eqz v5, :cond_3

    :cond_0
    if-eqz v4, :cond_2

    new-instance v3, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V

    :cond_1
    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object v3, v0, v1

    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/lang/Double;-><init>(D)V

    goto :goto_0

    :cond_3
    instance-of v4, v0, Ljava/lang/Float;

    if-nez v4, :cond_4

    instance-of v5, v2, Ljava/lang/Float;

    if-eqz v5, :cond_6

    :cond_4
    if-eqz v4, :cond_5

    new-instance v3, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-direct {v3, v0}, Ljava/lang/Float;-><init>(F)V

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Float;-><init>(F)V

    goto :goto_0

    :cond_6
    instance-of v4, v0, Ljava/lang/Long;

    if-nez v4, :cond_7

    instance-of v5, v2, Ljava/lang/Long;

    if-eqz v5, :cond_1

    :cond_7
    if-eqz v4, :cond_8

    new-instance v3, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0

    :cond_8
    new-instance v1, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0
.end method

.method static promoteToInteger(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/Integer;

    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object p0, v0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_0

    :cond_2
    new-instance v0, Ljava/lang/Integer;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static unaryOperation(Lbsh/Primitive;I)Lbsh/Primitive;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-ne p0, v0, :cond_0

    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "illegal use of null object or \'null\' literal"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne p0, v0, :cond_1

    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "illegal use of undefined object or \'void\' literal"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lbsh/Primitive;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Lbsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lbsh/Primitive;->promoteToInteger(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    new-instance v1, Lbsh/Primitive;

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lbsh/Primitive;->booleanUnaryOperation(Ljava/lang/Boolean;I)Z

    move-result v0

    invoke-direct {v1, v0}, Lbsh/Primitive;-><init>(Z)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_2
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_7

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lbsh/Primitive;->intUnaryOperation(Ljava/lang/Integer;I)I

    move-result v2

    const/16 v0, 0x64

    if-eq p1, v0, :cond_3

    const/16 v0, 0x65

    if-ne p1, v0, :cond_6

    :cond_3
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_4

    new-instance v0, Lbsh/Primitive;

    int-to-byte v1, v2

    invoke-direct {v0, v1}, Lbsh/Primitive;-><init>(B)V

    goto :goto_0

    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_5

    new-instance v0, Lbsh/Primitive;

    int-to-short v1, v2

    invoke-direct {v0, v1}, Lbsh/Primitive;-><init>(S)V

    goto :goto_0

    :cond_5
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_6

    new-instance v0, Lbsh/Primitive;

    int-to-char v1, v2

    invoke-direct {v0, v1}, Lbsh/Primitive;-><init>(C)V

    goto :goto_0

    :cond_6
    new-instance v0, Lbsh/Primitive;

    invoke-direct {v0, v2}, Lbsh/Primitive;-><init>(I)V

    goto :goto_0

    :cond_7
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_8

    new-instance v1, Lbsh/Primitive;

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0, p1}, Lbsh/Primitive;->longUnaryOperation(Ljava/lang/Long;I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lbsh/Primitive;-><init>(J)V

    move-object v0, v1

    goto :goto_0

    :cond_8
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_9

    new-instance v1, Lbsh/Primitive;

    check-cast v0, Ljava/lang/Float;

    invoke-static {v0, p1}, Lbsh/Primitive;->floatUnaryOperation(Ljava/lang/Float;I)F

    move-result v0

    invoke-direct {v1, v0}, Lbsh/Primitive;-><init>(F)V

    move-object v0, v1

    goto :goto_0

    :cond_9
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_a

    new-instance v1, Lbsh/Primitive;

    check-cast v0, Ljava/lang/Double;

    invoke-static {v0, p1}, Lbsh/Primitive;->doubleUnaryOperation(Ljava/lang/Double;I)D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lbsh/Primitive;-><init>(D)V

    move-object v0, v1

    goto :goto_0

    :cond_a
    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "An error occurred.  Please call technical support."

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static unboxType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3

    sget-object v0, Lbsh/Primitive;->wrapperToPrimitive:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lbsh/InterpreterError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Not a primitive wrapper type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static unwrap(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lbsh/Primitive;

    if-eqz v0, :cond_0

    check-cast p0, Lbsh/Primitive;

    invoke-virtual {p0}, Lbsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0
.end method

.method public static unwrap([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-static {v2}, Lbsh/Primitive;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static wrap(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    sget-object p0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-nez p0, :cond_2

    sget-object p0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lbsh/Primitive;

    invoke-direct {v0, p0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static wrap([Ljava/lang/Object;[Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    aget-object v2, p0, v0

    aget-object v3, p1, v0

    invoke-static {v2, v3}, Lbsh/Primitive;->wrap(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public booleanValue()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    iget-object v0, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Primitive not a boolean"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public castToType(Ljava/lang/Class;I)Lbsh/Primitive;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    invoke-virtual {p0}, Lbsh/Primitive;->getType()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, p0, v1, p2}, Lbsh/Primitive;->castPrimitive(Ljava/lang/Class;Ljava/lang/Class;Lbsh/Primitive;ZI)Lbsh/Primitive;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lbsh/Primitive;

    if-eqz v0, :cond_0

    check-cast p1, Lbsh/Primitive;

    iget-object v0, p1, Lbsh/Primitive;->value:Ljava/lang/Object;

    iget-object v1, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne p0, v0, :cond_0

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-ne p0, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lbsh/Primitive;->unboxType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive$Special;->NULL_VALUE:Lbsh/Primitive$Special;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive$Special;->VOID_TYPE:Lbsh/Primitive$Special;

    if-ne v0, v1, :cond_1

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "attempt to unwrap void type"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x15

    return v0
.end method

.method public intValue()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    iget-object v0, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Primitive not a number"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isNumber()Z
    .locals 1

    iget-object v0, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-eq p0, v0, :cond_0

    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public numberValue()Ljava/lang/Number;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    iget-object v0, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Character;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Integer;

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v1

    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    return-object v0

    :cond_1
    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Primitive not a number"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive$Special;->NULL_VALUE:Lbsh/Primitive$Special;

    if-ne v0, v1, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive$Special;->VOID_TYPE:Lbsh/Primitive$Special;

    if-ne v0, v1, :cond_1

    const-string v0, "void"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
