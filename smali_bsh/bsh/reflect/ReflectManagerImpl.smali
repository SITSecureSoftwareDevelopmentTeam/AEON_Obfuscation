.class public Lbsh/reflect/ReflectManagerImpl;
.super Lbsh/ReflectManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbsh/ReflectManager;-><init>()V

    return-void
.end method


# virtual methods
.method public setAccessible(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    instance-of v1, p1, Ljava/lang/reflect/AccessibleObject;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/lang/reflect/AccessibleObject;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
