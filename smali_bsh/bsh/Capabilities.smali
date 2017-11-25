.class public Lbsh/Capabilities;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsh/Capabilities$Unavailable;
    }
.end annotation


# static fields
.field private static accessibility:Z

.field private static classes:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lbsh/Capabilities;->accessibility:Z

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lbsh/Capabilities;->classes:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canGenerateInterfaces()Z
    .locals 1

    const-string v0, "java.lang.reflect.Proxy"

    invoke-static {v0}, Lbsh/Capabilities;->classExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static classExists(Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lbsh/Capabilities;->classes:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    sget-object v1, Lbsh/Capabilities;->classes:Ljava/util/Hashtable;

    const-string v2, "unused"

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static haveAccessibility()Z
    .locals 1

    sget-boolean v0, Lbsh/Capabilities;->accessibility:Z

    if-eqz v0, :cond_0

    const-string v0, "java.lang.reflect.AccessibleObject"

    invoke-static {v0}, Lbsh/Capabilities;->classExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bsh.reflect.ReflectManagerImpl"

    invoke-static {v0}, Lbsh/Capabilities;->classExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static haveSwing()Z
    .locals 1

    const-string v0, "javax.swing.JButton"

    invoke-static {v0}, Lbsh/Capabilities;->classExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setAccessibility(Z)V
    .locals 0

    sput-boolean p0, Lbsh/Capabilities;->accessibility:Z

    return-void
.end method
