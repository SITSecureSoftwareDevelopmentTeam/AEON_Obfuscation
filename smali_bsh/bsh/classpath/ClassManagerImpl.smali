.class public Lbsh/classpath/ClassManagerImpl;
.super Lbsh/BshClassManager;


# static fields
.field static final BSH_PACKAGE:Ljava/lang/String; = "bsh"

.field static class$bsh$Interpreter:Ljava/lang/Class;


# instance fields
.field private baseClassPath:Lbsh/classpath/BshClassPath;

.field private baseLoader:Lbsh/classpath/BshClassLoader;

.field private fullClassPath:Lbsh/classpath/BshClassPath;

.field private listeners:Ljava/util/Vector;

.field private loaderMap:Ljava/util/Map;

.field private refQueue:Ljava/lang/ref/ReferenceQueue;

.field private superImport:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lbsh/BshClassManager;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lbsh/classpath/ClassManagerImpl;->listeners:Ljava/util/Vector;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lbsh/classpath/ClassManagerImpl;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0}, Lbsh/classpath/ClassManagerImpl;->reset()V

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

.method private initBaseLoader()V
    .locals 2

    new-instance v0, Lbsh/classpath/BshClassLoader;

    iget-object v1, p0, Lbsh/classpath/ClassManagerImpl;->baseClassPath:Lbsh/classpath/BshClassPath;

    invoke-direct {v0, p0, v1}, Lbsh/classpath/BshClassLoader;-><init>(Lbsh/BshClassManager;Lbsh/classpath/BshClassPath;)V

    iput-object v0, p0, Lbsh/classpath/ClassManagerImpl;->baseLoader:Lbsh/classpath/BshClassLoader;

    return-void
.end method


# virtual methods
.method public addClassPath(Ljava/net/URL;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lbsh/classpath/ClassManagerImpl;->baseLoader:Lbsh/classpath/BshClassLoader;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/net/URL;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lbsh/classpath/ClassManagerImpl;->setClassPath([Ljava/net/URL;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lbsh/classpath/ClassManagerImpl;->baseLoader:Lbsh/classpath/BshClassLoader;

    invoke-virtual {v0, p1}, Lbsh/classpath/BshClassLoader;->addURL(Ljava/net/URL;)V

    iget-object v0, p0, Lbsh/classpath/ClassManagerImpl;->baseClassPath:Lbsh/classpath/BshClassPath;

    invoke-virtual {v0, p1}, Lbsh/classpath/BshClassPath;->add(Ljava/net/URL;)V

    invoke-virtual {p0}, Lbsh/classpath/ClassManagerImpl;->classLoaderChanged()V

    goto :goto_0
.end method

.method public addListener(Lbsh/BshClassManager$Listener;)V
    .locals 3

    iget-object v0, p0, Lbsh/classpath/ClassManagerImpl;->listeners:Ljava/util/Vector;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lbsh/classpath/ClassManagerImpl;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lbsh/classpath/ClassManagerImpl;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lbsh/classpath/ClassManagerImpl;->listeners:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "tried to remove non-existent weak ref: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public classForName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3

    iget-object v0, p0, Lbsh/classpath/ClassManagerImpl;->absoluteClassCache:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lbsh/classpath/ClassManagerImpl;->absoluteNonClasses:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-boolean v0, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "absoluteNonClass list hit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-boolean v1, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Trying to load class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0, p1}, Lbsh/classpath/ClassManagerImpl;->getLoaderForClass(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_4

    :try_start_0
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_4
    :goto_1
    if-nez v0, :cond_5

    const-string v1, "bsh"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :try_start_1
    sget-object v1, Lbsh/classpath/ClassManagerImpl;->class$bsh$Interpreter:Ljava/lang/Class;

    if-nez v1, :cond_7

    const-string v1, "bsh.Interpreter"

    invoke-static {v1}, Lbsh/classpath/ClassManagerImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lbsh/classpath/ClassManagerImpl;->class$bsh$Interpreter:Ljava/lang/Class;

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    :cond_5
    :goto_3
    if-nez v0, :cond_6

    invoke-virtual {p0, p1}, Lbsh/classpath/ClassManagerImpl;->loadSourceClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :cond_6
    invoke-virtual {p0, p1, v0}, Lbsh/classpath/ClassManagerImpl;->cacheClassInfo(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {p1, v0}, Lbsh/classpath/ClassManagerImpl;->noClassDefFound(Ljava/lang/String;Ljava/lang/Error;)Ljava/lang/Error;

    move-result-object v0

    throw v0

    :cond_7
    :try_start_2
    sget-object v1, Lbsh/classpath/ClassManagerImpl;->class$bsh$Interpreter:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lbsh/classpath/ClassManagerImpl;->baseLoader:Lbsh/classpath/BshClassLoader;

    if-eqz v1, :cond_9

    :try_start_3
    iget-object v1, p0, Lbsh/classpath/ClassManagerImpl;->baseLoader:Lbsh/classpath/BshClassLoader;

    invoke-virtual {v1, p1}, Lbsh/classpath/BshClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    goto :goto_3

    :cond_9
    :try_start_4
    invoke-virtual {p0, p1}, Lbsh/classpath/ClassManagerImpl;->plainClassForName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v0

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_3
.end method

.method protected classLoaderChanged()V
    .locals 4

    invoke-virtual {p0}, Lbsh/classpath/ClassManagerImpl;->clearCaches()V

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iget-object v0, p0, Lbsh/classpath/ClassManagerImpl;->listeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbsh/BshClassManager$Listener;

    if-nez v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lbsh/BshClassManager$Listener;->classLoaderChanged()V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lbsh/classpath/ClassManagerImpl;->listeners:Ljava/util/Vector;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method public defineClass(Ljava/lang/String;[B)Ljava/lang/Class;
    .locals 4

    iget-object v0, p0, Lbsh/classpath/ClassManagerImpl;->baseClassPath:Lbsh/classpath/BshClassPath;

    new-instance v1, Lbsh/classpath/BshClassPath$GeneratedClassSource;

    invoke-direct {v1, p2}, Lbsh/classpath/BshClassPath$GeneratedClassSource;-><init>([B)V

    invoke-virtual {v0, p1, v1}, Lbsh/classpath/BshClassPath;->setClassSource(Ljava/lang/String;Lbsh/classpath/BshClassPath$ClassSource;)V

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lbsh/classpath/ClassManagerImpl;->reloadClasses([Ljava/lang/String;)V
    :try_end_0
    .catch Lbsh/ClassPathException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1}, Lbsh/classpath/ClassManagerImpl;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lbsh/InterpreterError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "defineClass: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public doSuperImport()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lbsh/classpath/ClassManagerImpl;->getClassPath()Lbsh/classpath/BshClassPath;

    move-result-object v0

    invoke-virtual {v0}, Lbsh/classpath/BshClassPath;->insureInitialized()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lbsh/classpath/ClassManagerImpl;->getClassNameByUnqName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lbsh/ClassPathException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbsh/classpath/ClassManagerImpl;->superImport:Z

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lbsh/UtilEvalError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error importing classpath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "Bsh Class Manager Dump: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "----------------------- "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "baseLoader = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lbsh/classpath/ClassManagerImpl;->baseLoader:Lbsh/classpath/BshClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "loaderMap= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lbsh/classpath/ClassManagerImpl;->loaderMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "----------------------- "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "baseClassPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lbsh/classpath/ClassManagerImpl;->baseClassPath:Lbsh/classpath/BshClassPath;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getBaseLoader()Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Lbsh/classpath/ClassManagerImpl;->baseLoader:Lbsh/classpath/BshClassLoader;

    return-object v0
.end method

.method public getClassNameByUnqName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ClassPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lbsh/classpath/ClassManagerImpl;->getClassPath()Lbsh/classpath/BshClassPath;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbsh/classpath/BshClassPath;->getClassNameByUnqName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClassPath()Lbsh/classpath/BshClassPath;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ClassPathException;
        }
    .end annotation

    iget-object v0, p0, Lbsh/classpath/ClassManagerImpl;->fullClassPath:Lbsh/classpath/BshClassPath;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/classpath/ClassManagerImpl;->fullClassPath:Lbsh/classpath/BshClassPath;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lbsh/classpath/BshClassPath;

    const-string v1, "BeanShell Full Class Path"

    invoke-direct {v0, v1}, Lbsh/classpath/BshClassPath;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbsh/classpath/ClassManagerImpl;->fullClassPath:Lbsh/classpath/BshClassPath;

    iget-object v0, p0, Lbsh/classpath/ClassManagerImpl;->fullClassPath:Lbsh/classpath/BshClassPath;

    invoke-static {}, Lbsh/classpath/BshClassPath;->getUserClassPath()Lbsh/classpath/BshClassPath;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbsh/classpath/BshClassPath;->addComponent(Lbsh/classpath/BshClassPath;)V

    :try_start_0
    iget-object v0, p0, Lbsh/classpath/ClassManagerImpl;->fullClassPath:Lbsh/classpath/BshClassPath;

    invoke-static {}, Lbsh/classpath/BshClassPath;->getBootClassPath()Lbsh/classpath/BshClassPath;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbsh/classpath/BshClassPath;->addComponent(Lbsh/classpath/BshClassPath;)V
    :try_end_0
    .catch Lbsh/ClassPathException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lbsh/classpath/ClassManagerImpl;->fullClassPath:Lbsh/classpath/BshClassPath;

    iget-object v1, p0, Lbsh/classpath/ClassManagerImpl;->baseClassPath:Lbsh/classpath/BshClassPath;

    invoke-virtual {v0, v1}, Lbsh/classpath/BshClassPath;->addComponent(Lbsh/classpath/BshClassPath;)V

    iget-object v0, p0, Lbsh/classpath/ClassManagerImpl;->fullClassPath:Lbsh/classpath/BshClassPath;

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Warning: can\'t get boot class path"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method getLoaderForClass(Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Lbsh/classpath/ClassManagerImpl;->loaderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lbsh/classpath/ClassManagerImpl;->baseLoader:Lbsh/classpath/BshClassLoader;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lbsh/classpath/ClassManagerImpl;->baseLoader:Lbsh/classpath/BshClassLoader;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbsh/classpath/BshClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lbsh/BshClassManager;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lbsh/classpath/ClassManagerImpl;->baseLoader:Lbsh/classpath/BshClassLoader;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lbsh/classpath/ClassManagerImpl;->baseLoader:Lbsh/classpath/BshClassLoader;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbsh/classpath/BshClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lbsh/BshClassManager;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method protected hasSuperImport()Z
    .locals 1

    iget-boolean v0, p0, Lbsh/classpath/ClassManagerImpl;->superImport:Z

    return v0
.end method

.method public plainClassForName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lbsh/BshClassManager;->plainClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public reloadAllClasses()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ClassPathException;
        }
    .end annotation

    new-instance v0, Lbsh/classpath/BshClassPath;

    const-string v1, "temp"

    invoke-direct {v0, v1}, Lbsh/classpath/BshClassPath;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbsh/classpath/ClassManagerImpl;->baseClassPath:Lbsh/classpath/BshClassPath;

    invoke-virtual {v0, v1}, Lbsh/classpath/BshClassPath;->addComponent(Lbsh/classpath/BshClassPath;)V

    invoke-static {}, Lbsh/classpath/BshClassPath;->getUserClassPath()Lbsh/classpath/BshClassPath;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbsh/classpath/BshClassPath;->addComponent(Lbsh/classpath/BshClassPath;)V

    invoke-virtual {v0}, Lbsh/classpath/BshClassPath;->getPathComponents()[Ljava/net/URL;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/classpath/ClassManagerImpl;->setClassPath([Ljava/net/URL;)V

    return-void
.end method

.method public reloadClasses([Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ClassPathException;
        }
    .end annotation

    iget-object v0, p0, Lbsh/classpath/ClassManagerImpl;->baseLoader:Lbsh/classpath/BshClassLoader;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lbsh/classpath/ClassManagerImpl;->initBaseLoader()V

    :cond_0
    new-instance v2, Lbsh/classpath/DiscreteFilesClassLoader$ClassSourceMap;

    invoke-direct {v2}, Lbsh/classpath/DiscreteFilesClassLoader$ClassSourceMap;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    aget-object v3, p1, v0

    iget-object v1, p0, Lbsh/classpath/ClassManagerImpl;->baseClassPath:Lbsh/classpath/BshClassPath;

    invoke-virtual {v1, v3}, Lbsh/classpath/BshClassPath;->getClassSource(Ljava/lang/String;)Lbsh/classpath/BshClassPath$ClassSource;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lbsh/classpath/BshClassPath;->getUserClassPath()Lbsh/classpath/BshClassPath;

    move-result-object v1

    invoke-virtual {v1}, Lbsh/classpath/BshClassPath;->insureInitialized()V

    invoke-static {}, Lbsh/classpath/BshClassPath;->getUserClassPath()Lbsh/classpath/BshClassPath;

    move-result-object v1

    invoke-virtual {v1, v3}, Lbsh/classpath/BshClassPath;->getClassSource(Ljava/lang/String;)Lbsh/classpath/BshClassPath$ClassSource;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    new-instance v0, Lbsh/ClassPathException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Nothing known about class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/ClassPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    instance-of v4, v1, Lbsh/classpath/BshClassPath$JarClassSource;

    if-eqz v4, :cond_3

    new-instance v0, Lbsh/ClassPathException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Cannot reload class: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " from source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/ClassPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v2, v3, v1}, Lbsh/classpath/DiscreteFilesClassLoader$ClassSourceMap;->put(Ljava/lang/String;Lbsh/classpath/BshClassPath$ClassSource;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    new-instance v1, Lbsh/classpath/DiscreteFilesClassLoader;

    invoke-direct {v1, p0, v2}, Lbsh/classpath/DiscreteFilesClassLoader;-><init>(Lbsh/BshClassManager;Lbsh/classpath/DiscreteFilesClassLoader$ClassSourceMap;)V

    invoke-virtual {v2}, Lbsh/classpath/DiscreteFilesClassLoader$ClassSourceMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v3, p0, Lbsh/classpath/ClassManagerImpl;->loaderMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lbsh/classpath/ClassManagerImpl;->classLoaderChanged()V

    return-void
.end method

.method public reloadPackage(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ClassPathException;
        }
    .end annotation

    iget-object v0, p0, Lbsh/classpath/ClassManagerImpl;->baseClassPath:Lbsh/classpath/BshClassPath;

    invoke-virtual {v0, p1}, Lbsh/classpath/BshClassPath;->getClassesForPackage(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lbsh/classpath/BshClassPath;->getUserClassPath()Lbsh/classpath/BshClassPath;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbsh/classpath/BshClassPath;->getClassesForPackage(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Lbsh/ClassPathException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No classes found for package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/ClassPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lbsh/classpath/ClassManagerImpl;->reloadClasses([Ljava/lang/String;)V

    return-void
.end method

.method public removeListener(Lbsh/BshClassManager$Listener;)V
    .locals 2

    new-instance v0, Ljava/lang/Error;

    const-string v1, "unimplemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 2

    new-instance v0, Lbsh/classpath/BshClassPath;

    const-string v1, "baseClassPath"

    invoke-direct {v0, v1}, Lbsh/classpath/BshClassPath;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbsh/classpath/ClassManagerImpl;->baseClassPath:Lbsh/classpath/BshClassPath;

    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/classpath/ClassManagerImpl;->baseLoader:Lbsh/classpath/BshClassLoader;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbsh/classpath/ClassManagerImpl;->loaderMap:Ljava/util/Map;

    invoke-virtual {p0}, Lbsh/classpath/ClassManagerImpl;->classLoaderChanged()V

    return-void
.end method

.method public setClassPath([Ljava/net/URL;)V
    .locals 1

    iget-object v0, p0, Lbsh/classpath/ClassManagerImpl;->baseClassPath:Lbsh/classpath/BshClassPath;

    invoke-virtual {v0, p1}, Lbsh/classpath/BshClassPath;->setPath([Ljava/net/URL;)V

    invoke-direct {p0}, Lbsh/classpath/ClassManagerImpl;->initBaseLoader()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbsh/classpath/ClassManagerImpl;->loaderMap:Ljava/util/Map;

    invoke-virtual {p0}, Lbsh/classpath/ClassManagerImpl;->classLoaderChanged()V

    return-void
.end method
