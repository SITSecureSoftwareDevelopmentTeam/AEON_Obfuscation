.class public Lbsh/classpath/BshClassLoader;
.super Ljava/net/URLClassLoader;


# static fields
.field static class$bsh$Interpreter:Ljava/lang/Class;


# instance fields
.field classManager:Lbsh/BshClassManager;


# direct methods
.method protected constructor <init>(Lbsh/BshClassManager;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/net/URL;

    invoke-direct {p0, p1, v0}, Lbsh/classpath/BshClassLoader;-><init>(Lbsh/BshClassManager;[Ljava/net/URL;)V

    return-void
.end method

.method public constructor <init>(Lbsh/BshClassManager;Lbsh/classpath/BshClassPath;)V
    .locals 1

    invoke-virtual {p2}, Lbsh/classpath/BshClassPath;->getPathComponents()[Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lbsh/classpath/BshClassLoader;-><init>(Lbsh/BshClassManager;[Ljava/net/URL;)V

    return-void
.end method

.method public constructor <init>(Lbsh/BshClassManager;[Ljava/net/URL;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;)V

    iput-object p1, p0, Lbsh/classpath/BshClassLoader;->classManager:Lbsh/BshClassManager;

    return-void
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


# virtual methods
.method public addURL(Ljava/net/URL;)V
    .locals 0

    invoke-super {p0, p1}, Ljava/net/URLClassLoader;->addURL(Ljava/net/URL;)V

    return-void
.end method

.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Lbsh/classpath/BshClassLoader;->getClassManager()Lbsh/BshClassManager;

    move-result-object v0

    check-cast v0, Lbsh/classpath/ClassManagerImpl;

    invoke-virtual {v0, p1}, Lbsh/classpath/ClassManagerImpl;->getLoaderForClass(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eq v1, p0, :cond_0

    :try_start_0
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/ClassNotFoundException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Designated loader could not find class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Lbsh/classpath/BshClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_1

    :try_start_1
    invoke-super {p0, p1}, Ljava/net/URLClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v1

    :cond_1
    invoke-virtual {v0}, Lbsh/classpath/ClassManagerImpl;->getBaseLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eq v1, p0, :cond_2

    :try_start_2
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto :goto_0

    :catch_2
    move-exception v1

    :cond_2
    invoke-virtual {v0, p1}, Lbsh/classpath/ClassManagerImpl;->plainClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method getClassManager()Lbsh/BshClassManager;
    .locals 1

    iget-object v0, p0, Lbsh/classpath/BshClassLoader;->classManager:Lbsh/BshClassManager;

    return-object v0
.end method

.method public loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lbsh/classpath/BshClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "bsh"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_0
    sget-object v1, Lbsh/classpath/BshClassLoader;->class$bsh$Interpreter:Ljava/lang/Class;

    if-nez v1, :cond_2

    const-string v1, "bsh.Interpreter"

    invoke-static {v1}, Lbsh/classpath/BshClassLoader;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lbsh/classpath/BshClassLoader;->class$bsh$Interpreter:Ljava/lang/Class;

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v1, Lbsh/classpath/BshClassLoader;->class$bsh$Interpreter:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :cond_3
    :try_start_1
    invoke-virtual {p0, p1}, Lbsh/classpath/BshClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_2
    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/ClassNotFoundException;

    const-string v1, "here in loaClass"

    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-eqz p2, :cond_0

    invoke-virtual {p0, v0}, Lbsh/classpath/BshClassLoader;->resolveClass(Ljava/lang/Class;)V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_2
.end method
