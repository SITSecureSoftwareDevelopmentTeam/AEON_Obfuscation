.class Lbsh/ClassGeneratorImpl$ClassNodeFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lbsh/BSHBlock$NodeFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsh/ClassGeneratorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClassNodeFilter"
.end annotation


# static fields
.field public static CLASSCLASSES:Lbsh/ClassGeneratorImpl$ClassNodeFilter; = null

.field public static final CLASSES:I = 0x2

.field public static CLASSINSTANCE:Lbsh/ClassGeneratorImpl$ClassNodeFilter; = null

.field public static CLASSSTATIC:Lbsh/ClassGeneratorImpl$ClassNodeFilter; = null

.field public static final INSTANCE:I = 0x1

.field public static final STATIC:I


# instance fields
.field context:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbsh/ClassGeneratorImpl$ClassNodeFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbsh/ClassGeneratorImpl$ClassNodeFilter;-><init>(I)V

    sput-object v0, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->CLASSSTATIC:Lbsh/ClassGeneratorImpl$ClassNodeFilter;

    new-instance v0, Lbsh/ClassGeneratorImpl$ClassNodeFilter;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lbsh/ClassGeneratorImpl$ClassNodeFilter;-><init>(I)V

    sput-object v0, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->CLASSINSTANCE:Lbsh/ClassGeneratorImpl$ClassNodeFilter;

    new-instance v0, Lbsh/ClassGeneratorImpl$ClassNodeFilter;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lbsh/ClassGeneratorImpl$ClassNodeFilter;-><init>(I)V

    sput-object v0, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->CLASSCLASSES:Lbsh/ClassGeneratorImpl$ClassNodeFilter;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->context:I

    return-void
.end method


# virtual methods
.method isStatic(Lbsh/SimpleNode;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    instance-of v0, p1, Lbsh/BSHTypedVariableDeclaration;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lbsh/BSHTypedVariableDeclaration;

    iget-object v0, v0, Lbsh/BSHTypedVariableDeclaration;->modifiers:Lbsh/Modifiers;

    if-eqz v0, :cond_1

    check-cast p1, Lbsh/BSHTypedVariableDeclaration;

    iget-object v0, p1, Lbsh/BSHTypedVariableDeclaration;->modifiers:Lbsh/Modifiers;

    const-string v3, "static"

    invoke-virtual {v0, v3}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    move v2, v0

    :cond_0
    :goto_1
    return v2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lbsh/BSHMethodDeclaration;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lbsh/BSHMethodDeclaration;

    iget-object v0, v0, Lbsh/BSHMethodDeclaration;->modifiers:Lbsh/Modifiers;

    if-eqz v0, :cond_3

    check-cast p1, Lbsh/BSHMethodDeclaration;

    iget-object v0, p1, Lbsh/BSHMethodDeclaration;->modifiers:Lbsh/Modifiers;

    const-string v3, "static"

    invoke-virtual {v0, v3}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    instance-of v0, p1, Lbsh/BSHBlock;

    if-eqz v0, :cond_0

    goto :goto_1
.end method

.method public isVisible(Lbsh/SimpleNode;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->context:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    instance-of v0, p1, Lbsh/BSHClassDeclaration;

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lbsh/BSHClassDeclaration;

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->context:I

    if-nez v2, :cond_3

    invoke-virtual {p0, p1}, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->isStatic(Lbsh/SimpleNode;)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget v2, p0, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->context:I

    if-ne v2, v0, :cond_0

    invoke-virtual {p0, p1}, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->isStatic(Lbsh/SimpleNode;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
