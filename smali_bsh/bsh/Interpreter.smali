.class public Lbsh/Interpreter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;
.implements Lbsh/ConsoleInterface;
.implements Ljava/io/Serializable;


# static fields
.field public static DEBUG:Z = false

.field public static LOCALSCOPING:Z = false

.field public static TRACE:Z = false

.field public static final VERSION:Ljava/lang/String; = "2.0b2"

.field static array$Ljava$lang$String:Ljava/lang/Class;

.field static transient debug:Ljava/io/PrintStream;

.field static sharedObject:Lbsh/This;

.field static systemLineSeparator:Ljava/lang/String;


# instance fields
.field console:Lbsh/ConsoleInterface;

.field transient err:Ljava/io/PrintStream;

.field protected evalOnly:Z

.field private exitOnEOF:Z

.field globalNameSpace:Lbsh/NameSpace;

.field transient in:Ljava/io/Reader;

.field protected interactive:Z

.field transient out:Ljava/io/PrintStream;

.field parent:Lbsh/Interpreter;

.field transient parser:Lbsh/Parser;

.field sourceFileInfo:Ljava/lang/String;

.field private strictJava:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\n"

    sput-object v0, Lbsh/Interpreter;->systemLineSeparator:Ljava/lang/String;

    invoke-static {}, Lbsh/Interpreter;->staticInit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x1

    new-instance v1, Ljava/io/StringReader;

    const-string v0, ""

    invoke-direct {v1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbsh/Interpreter;-><init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;ZLbsh/NameSpace;)V

    iput-boolean v6, p0, Lbsh/Interpreter;->evalOnly:Z

    const-string v0, "bsh.evalOnly"

    new-instance v1, Lbsh/Primitive;

    invoke-direct {v1, v6}, Lbsh/Primitive;-><init>(Z)V

    invoke-virtual {p0, v0, v1}, Lbsh/Interpreter;->setu(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lbsh/ConsoleInterface;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbsh/Interpreter;-><init>(Lbsh/ConsoleInterface;Lbsh/NameSpace;)V

    return-void
.end method

.method public constructor <init>(Lbsh/ConsoleInterface;Lbsh/NameSpace;)V
    .locals 6

    invoke-interface {p1}, Lbsh/ConsoleInterface;->getIn()Ljava/io/Reader;

    move-result-object v1

    invoke-interface {p1}, Lbsh/ConsoleInterface;->getOut()Ljava/io/PrintStream;

    move-result-object v2

    invoke-interface {p1}, Lbsh/ConsoleInterface;->getErr()Ljava/io/PrintStream;

    move-result-object v3

    const/4 v4, 0x1

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lbsh/Interpreter;-><init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;ZLbsh/NameSpace;)V

    invoke-virtual {p0, p1}, Lbsh/Interpreter;->setConsole(Lbsh/ConsoleInterface;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;Z)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lbsh/Interpreter;-><init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;ZLbsh/NameSpace;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;ZLbsh/NameSpace;)V
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lbsh/Interpreter;-><init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;ZLbsh/NameSpace;Lbsh/Interpreter;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;ZLbsh/NameSpace;Lbsh/Interpreter;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbsh/Interpreter;->strictJava:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbsh/Interpreter;->exitOnEOF:Z

    new-instance v0, Lbsh/Parser;

    invoke-direct {v0, p1}, Lbsh/Parser;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lbsh/Interpreter;->parser:Lbsh/Parser;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-object p1, p0, Lbsh/Interpreter;->in:Ljava/io/Reader;

    iput-object p2, p0, Lbsh/Interpreter;->out:Ljava/io/PrintStream;

    iput-object p3, p0, Lbsh/Interpreter;->err:Ljava/io/PrintStream;

    iput-boolean p4, p0, Lbsh/Interpreter;->interactive:Z

    sput-object p3, Lbsh/Interpreter;->debug:Ljava/io/PrintStream;

    iput-object p6, p0, Lbsh/Interpreter;->parent:Lbsh/Interpreter;

    if-eqz p6, :cond_0

    invoke-virtual {p6}, Lbsh/Interpreter;->getStrictJava()Z

    move-result v2

    invoke-virtual {p0, v2}, Lbsh/Interpreter;->setStrictJava(Z)V

    :cond_0
    iput-object p7, p0, Lbsh/Interpreter;->sourceFileInfo:Ljava/lang/String;

    invoke-static {p0}, Lbsh/BshClassManager;->createClassManager(Lbsh/Interpreter;)Lbsh/BshClassManager;

    move-result-object v2

    if-nez p5, :cond_4

    new-instance v3, Lbsh/NameSpace;

    const-string v4, "global"

    invoke-direct {v3, v2, v4}, Lbsh/NameSpace;-><init>(Lbsh/BshClassManager;Ljava/lang/String;)V

    iput-object v3, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    :goto_0
    const-string v2, "bsh"

    invoke-virtual {p0, v2}, Lbsh/Interpreter;->getu(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lbsh/This;

    if-nez v2, :cond_1

    invoke-direct {p0}, Lbsh/Interpreter;->initRootSystemObject()V

    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lbsh/Interpreter;->loadRCFiles()V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-boolean v4, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Time to initialize interpreter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sub-long v0, v2, v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    iput-object p5, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    goto :goto_0
.end method

.method private Line()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    iget-object v0, p0, Lbsh/Interpreter;->parser:Lbsh/Parser;

    invoke-virtual {v0}, Lbsh/Parser;->Line()Z

    move-result v0

    return v0
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

.method public static final debug(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lbsh/Interpreter;->debug:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "// Debug: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getBshPrompt()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "getBshPrompt()"

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->eval(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "bsh % "

    goto :goto_0
.end method

.method private get_jj_input_stream()Lbsh/JavaCharStream;
    .locals 1

    iget-object v0, p0, Lbsh/Interpreter;->parser:Lbsh/Parser;

    iget-object v0, v0, Lbsh/Parser;->jj_input_stream:Lbsh/JavaCharStream;

    return-object v0
.end method

.method private get_jjtree()Lbsh/JJTParserState;
    .locals 1

    iget-object v0, p0, Lbsh/Interpreter;->parser:Lbsh/Parser;

    iget-object v0, v0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    return-object v0
.end method

.method private initRootSystemObject()V
    .locals 4

    invoke-virtual {p0}, Lbsh/Interpreter;->getClassManager()Lbsh/BshClassManager;

    move-result-object v0

    const-string v1, "bsh"

    new-instance v2, Lbsh/NameSpace;

    const-string v3, "Bsh Object"

    invoke-direct {v2, v0, v3}, Lbsh/NameSpace;-><init>(Lbsh/BshClassManager;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lbsh/Interpreter;->setu(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lbsh/Interpreter;->sharedObject:Lbsh/This;

    if-nez v1, :cond_0

    new-instance v1, Lbsh/NameSpace;

    const-string v2, "Bsh Shared System Object"

    invoke-direct {v1, v0, v2}, Lbsh/NameSpace;-><init>(Lbsh/BshClassManager;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v1

    sput-object v1, Lbsh/Interpreter;->sharedObject:Lbsh/This;

    :cond_0
    const-string v1, "bsh.system"

    sget-object v2, Lbsh/Interpreter;->sharedObject:Lbsh/This;

    invoke-virtual {p0, v1, v2}, Lbsh/Interpreter;->setu(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "bsh.shared"

    sget-object v2, Lbsh/Interpreter;->sharedObject:Lbsh/This;

    invoke-virtual {p0, v1, v2}, Lbsh/Interpreter;->setu(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lbsh/NameSpace;

    const-string v2, "Bsh Command Help Text"

    invoke-direct {v1, v0, v2}, Lbsh/NameSpace;-><init>(Lbsh/BshClassManager;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v0

    const-string v1, "bsh.help"

    invoke-virtual {p0, v1, v0}, Lbsh/Interpreter;->setu(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    const-string v0, "bsh.cwd"

    const-string v1, "user.dir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lbsh/Interpreter;->setu(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "bsh.interactive"

    new-instance v1, Lbsh/Primitive;

    iget-boolean v2, p0, Lbsh/Interpreter;->interactive:Z

    invoke-direct {v1, v2}, Lbsh/Primitive;-><init>(Z)V

    invoke-virtual {p0, v0, v1}, Lbsh/Interpreter;->setu(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "bsh.evalOnly"

    new-instance v1, Lbsh/Primitive;

    iget-boolean v2, p0, Lbsh/Interpreter;->evalOnly:Z

    invoke-direct {v1, v2}, Lbsh/Primitive;-><init>(Z)V

    invoke-virtual {p0, v0, v1}, Lbsh/Interpreter;->setu(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    const-string v0, "bsh.cwd"

    const-string v1, "."

    invoke-virtual {p0, v0, v1}, Lbsh/Interpreter;->setu(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static invokeMain(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v1, "main"

    new-array v2, v3, [Ljava/lang/Class;

    sget-object v0, Lbsh/Interpreter;->array$Ljava$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "[Ljava.lang.String;"

    invoke-static {v0}, Lbsh/Interpreter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Interpreter;->array$Ljava$lang$String:Ljava/lang/Class;

    :goto_0
    aput-object v0, v2, v4

    invoke-static {v5, p0, v1, v2, v3}, Lbsh/Reflect;->resolveJavaMethod(Lbsh/BshClassManager;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v0, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lbsh/Interpreter;->array$Ljava$lang$String:Ljava/lang/Class;

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    array-length v1, p0

    if-lez v1, :cond_3

    aget-object v2, p0, v4

    array-length v1, p0

    if-le v1, v5, :cond_1

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [Ljava/lang/String;

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    invoke-static {p0, v5, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v1

    :goto_0
    new-instance v1, Lbsh/Interpreter;

    invoke-direct {v1}, Lbsh/Interpreter;-><init>()V

    const-string v4, "bsh.args"

    invoke-virtual {v1, v4, v3}, Lbsh/Interpreter;->setu(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    iget-object v4, v1, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    invoke-virtual {v1, v2, v4}, Lbsh/Interpreter;->source(Ljava/lang/String;Lbsh/NameSpace;)Ljava/lang/Object;

    move-result-object v2

    instance-of v1, v2, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lbsh/TargetError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v1, :cond_0

    :try_start_1
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    invoke-static {v1, v3}, Lbsh/Interpreter;->invokeMain(Ljava/lang/Class;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lbsh/TargetError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lbsh/EvalError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-array v1, v4, [Ljava/lang/String;

    move-object v3, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    instance-of v3, v1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v3, :cond_2

    check-cast v1, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    :cond_2
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, " main method threw exception:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lbsh/TargetError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lbsh/EvalError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    :catch_1
    move-exception v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "File not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Script threw exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Lbsh/TargetError;->inNativeCode()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lbsh/Interpreter;->DEBUG:Z

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2, v3}, Lbsh/TargetError;->printStackTrace(ZLjava/io/PrintStream;)V

    goto :goto_1

    :catch_3
    move-exception v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Evaluation Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_4
    move-exception v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "I/O Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const-string v1, "os.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Windows"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "java.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1.1."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lbsh/Interpreter$1;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lbsh/Interpreter$1;-><init>(Ljava/io/InputStream;)V

    :goto_2
    new-instance v2, Lbsh/CommandLineReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Lbsh/CommandLineReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Lbsh/Interpreter;

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v1, v2, v3, v4, v5}, Lbsh/Interpreter;-><init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;Z)V

    invoke-virtual {v1}, Lbsh/Interpreter;->run()V

    goto/16 :goto_1

    :cond_4
    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    goto :goto_2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object v0, p0, Lbsh/Interpreter;->console:Lbsh/ConsoleInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/Interpreter;->console:Lbsh/ConsoleInterface;

    invoke-interface {v0}, Lbsh/ConsoleInterface;->getOut()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->setOut(Ljava/io/PrintStream;)V

    iget-object v0, p0, Lbsh/Interpreter;->console:Lbsh/ConsoleInterface;

    invoke-interface {v0}, Lbsh/ConsoleInterface;->getErr()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->setErr(Ljava/io/PrintStream;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->setOut(Ljava/io/PrintStream;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->setErr(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method public static redirectOutputToFile(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/PrintStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v0}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    invoke-static {v0}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Can\'t redirect output to file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showEvalString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x50

    const/16 v2, 0x20

    const/16 v0, 0xa

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " . . . "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static staticInit()V
    .locals 4

    :try_start_0
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbsh/Interpreter;->systemLineSeparator:Ljava/lang/String;

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sput-object v0, Lbsh/Interpreter;->debug:Ljava/io/PrintStream;

    const-string v0, "debug"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lbsh/Interpreter;->DEBUG:Z

    const-string v0, "trace"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lbsh/Interpreter;->TRACE:Z

    const-string v0, "localscoping"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lbsh/Interpreter;->LOCALSCOPING:Z

    const-string v0, "outfile"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lbsh/Interpreter;->redirectOutputToFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not init static:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not init static(2):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not init static(3):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final error(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lbsh/Interpreter;->console:Lbsh/ConsoleInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/Interpreter;->console:Lbsh/ConsoleInterface;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "// Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lbsh/ConsoleInterface;->error(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lbsh/Interpreter;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "// Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lbsh/Interpreter;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    goto :goto_0
.end method

.method public eval(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    iget-object v0, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    const-string v1, "eval stream"

    invoke-virtual {p0, p1, v0, v1}, Lbsh/Interpreter;->eval(Ljava/io/Reader;Lbsh/NameSpace;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public eval(Ljava/io/Reader;Lbsh/NameSpace;Ljava/lang/String;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x1

    sget-boolean v1, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "eval: nameSpace = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lbsh/Interpreter;

    iget-object v3, p0, Lbsh/Interpreter;->out:Ljava/io/PrintStream;

    iget-object v4, p0, Lbsh/Interpreter;->err:Ljava/io/PrintStream;

    move-object v2, p1

    move-object v6, p2

    move-object v7, p0

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lbsh/Interpreter;-><init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;ZLbsh/NameSpace;Lbsh/Interpreter;Ljava/lang/String;)V

    new-instance v6, Lbsh/CallStack;

    invoke-direct {v6, p2}, Lbsh/CallStack;-><init>(Lbsh/NameSpace;)V

    move v4, v5

    move-object v3, v9

    :goto_0
    if-nez v4, :cond_e

    :try_start_0
    invoke-direct {v1}, Lbsh/Interpreter;->Line()Z
    :try_end_0
    .catch Lbsh/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lbsh/InterpreterError; {:try_start_0 .. :try_end_0} :catch_c
    .catch Lbsh/TargetError; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lbsh/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    :try_start_1
    invoke-direct {v1}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v2

    invoke-virtual {v2}, Lbsh/JJTParserState;->nodeArity()I

    move-result v2

    if-lez v2, :cond_6

    invoke-direct {v1}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v2

    invoke-virtual {v2}, Lbsh/JJTParserState;->rootNode()Lbsh/Node;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lbsh/SimpleNode;

    move-object v4, v0
    :try_end_1
    .catch Lbsh/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lbsh/InterpreterError; {:try_start_1 .. :try_end_1} :catch_c
    .catch Lbsh/TargetError; {:try_start_1 .. :try_end_1} :catch_b
    .catch Lbsh/EvalError; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lbsh/TokenMgrError; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4, p3}, Lbsh/SimpleNode;->setSourceFile(Ljava/lang/String;)V

    sget-boolean v2, Lbsh/Interpreter;->TRACE:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "// "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v4}, Lbsh/SimpleNode;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lbsh/Interpreter;->println(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v4, v6, v1}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v6}, Lbsh/CallStack;->depth()I

    move-result v2

    if-le v2, v10, :cond_4

    new-instance v2, Lbsh/InterpreterError;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Callstack growing: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Lbsh/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lbsh/InterpreterError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lbsh/TargetError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lbsh/EvalError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lbsh/TokenMgrError; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception v2

    :try_start_3
    sget-boolean v3, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v3, :cond_2

    sget-boolean v3, Lbsh/Interpreter;->DEBUG:Z

    invoke-virtual {v2, v3}, Lbsh/ParseException;->getMessage(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lbsh/Interpreter;->error(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v2, p3}, Lbsh/ParseException;->setErrorSourceFile(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v2

    invoke-direct {v1}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v1

    invoke-virtual {v1}, Lbsh/JJTParserState;->reset()V

    invoke-virtual {v6}, Lbsh/CallStack;->depth()I

    move-result v1

    if-le v1, v10, :cond_3

    invoke-virtual {v6}, Lbsh/CallStack;->clear()V

    invoke-virtual {v6, p2}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    :cond_3
    throw v2

    :cond_4
    :try_start_4
    instance-of v2, v3, Lbsh/ReturnControl;

    if-eqz v2, :cond_6

    move-object v0, v3

    check-cast v0, Lbsh/ReturnControl;

    move-object v2, v0

    iget-object v2, v2, Lbsh/ReturnControl;->value:Ljava/lang/Object;
    :try_end_4
    .catch Lbsh/ParseException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lbsh/InterpreterError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lbsh/TargetError; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lbsh/EvalError; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lbsh/TokenMgrError; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-direct {v1}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v1

    invoke-virtual {v1}, Lbsh/JJTParserState;->reset()V

    invoke-virtual {v6}, Lbsh/CallStack;->depth()I

    move-result v1

    if-le v1, v10, :cond_5

    invoke-virtual {v6}, Lbsh/CallStack;->clear()V

    invoke-virtual {v6, p2}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    :cond_5
    move-object v1, v2

    :goto_1
    invoke-static {v1}, Lbsh/Primitive;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_6
    invoke-direct {v1}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v2

    invoke-virtual {v2}, Lbsh/JJTParserState;->reset()V

    invoke-virtual {v6}, Lbsh/CallStack;->depth()I

    move-result v2

    if-le v2, v10, :cond_7

    invoke-virtual {v6}, Lbsh/CallStack;->clear()V

    invoke-virtual {v6, p2}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    :cond_7
    move v4, v5

    goto/16 :goto_0

    :catch_1
    move-exception v2

    :goto_2
    :try_start_5
    invoke-virtual {v2}, Lbsh/InterpreterError;->printStackTrace()V

    new-instance v3, Lbsh/EvalError;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Sourced file: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v7, " internal Error: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v2}, Lbsh/InterpreterError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v4, v6}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v3

    :catch_2
    move-exception v2

    move v11, v5

    move-object v5, v3

    move v3, v11

    :goto_3
    invoke-virtual {v2}, Lbsh/TargetError;->getNode()Lbsh/SimpleNode;

    move-result-object v7

    if-nez v7, :cond_8

    invoke-virtual {v2, v4}, Lbsh/TargetError;->setNode(Lbsh/SimpleNode;)V

    :cond_8
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Sourced file: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lbsh/TargetError;->reThrow(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-direct {v1}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v2

    invoke-virtual {v2}, Lbsh/JJTParserState;->reset()V

    invoke-virtual {v6}, Lbsh/CallStack;->depth()I

    move-result v2

    if-le v2, v10, :cond_9

    invoke-virtual {v6}, Lbsh/CallStack;->clear()V

    invoke-virtual {v6, p2}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    :cond_9
    move v4, v3

    move-object v3, v5

    goto/16 :goto_0

    :catch_3
    move-exception v2

    :goto_4
    :try_start_6
    sget-boolean v7, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v7, :cond_a

    invoke-virtual {v2}, Lbsh/EvalError;->printStackTrace()V

    :cond_a
    invoke-virtual {v2}, Lbsh/EvalError;->getNode()Lbsh/SimpleNode;

    move-result-object v7

    if-nez v7, :cond_b

    invoke-virtual {v2, v4}, Lbsh/EvalError;->setNode(Lbsh/SimpleNode;)V

    :cond_b
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Sourced file: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lbsh/EvalError;->reThrow(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-direct {v1}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v2

    invoke-virtual {v2}, Lbsh/JJTParserState;->reset()V

    invoke-virtual {v6}, Lbsh/CallStack;->depth()I

    move-result v2

    if-le v2, v10, :cond_c

    invoke-virtual {v6}, Lbsh/CallStack;->clear()V

    invoke-virtual {v6, p2}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    :cond_c
    move v4, v5

    goto/16 :goto_0

    :catch_4
    move-exception v2

    :goto_5
    :try_start_7
    sget-boolean v3, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v3, :cond_d

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    new-instance v3, Lbsh/EvalError;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Sourced file: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v7, " unknown error: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v4, v6}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v3

    :catch_5
    move-exception v2

    :goto_6
    new-instance v3, Lbsh/EvalError;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Sourced file: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v7, " Token Parsing Error: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v2}, Lbsh/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v4, v6}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catch_6
    move-exception v2

    move-object v4, v9

    goto :goto_6

    :catch_7
    move-exception v2

    move-object v4, v9

    goto :goto_5

    :catch_8
    move-exception v2

    move v5, v4

    move-object v4, v9

    goto/16 :goto_4

    :catch_9
    move-exception v2

    move-object v4, v9

    goto/16 :goto_4

    :catch_a
    move-exception v2

    move-object v5, v3

    move v3, v4

    move-object v4, v9

    goto/16 :goto_3

    :catch_b
    move-exception v2

    move-object v4, v9

    move v11, v5

    move-object v5, v3

    move v3, v11

    goto/16 :goto_3

    :catch_c
    move-exception v2

    move-object v4, v9

    goto/16 :goto_2

    :cond_e
    move-object v1, v3

    goto/16 :goto_1
.end method

.method public eval(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    sget-boolean v0, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "eval(String): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    invoke-virtual {p0, p1, v0}, Lbsh/Interpreter;->eval(Ljava/lang/String;Lbsh/NameSpace;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public eval(Ljava/lang/String;Lbsh/NameSpace;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "inline evaluation of: ``"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-direct {p0, p1}, Lbsh/Interpreter;->showEvalString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p2, v1}, Lbsh/Interpreter;->eval(Ljava/io/Reader;Lbsh/NameSpace;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    invoke-virtual {v0, p1, p0}, Lbsh/NameSpace;->get(Ljava/lang/String;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lbsh/Primitive;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lbsh/SimpleNode;->JAVACODE:Lbsh/SimpleNode;

    new-instance v2, Lbsh/CallStack;

    invoke-direct {v2}, Lbsh/CallStack;-><init>()V

    invoke-virtual {v0, v1, v2}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v0

    throw v0
.end method

.method public getClassManager()Lbsh/BshClassManager;
    .locals 1

    invoke-virtual {p0}, Lbsh/Interpreter;->getNameSpace()Lbsh/NameSpace;

    move-result-object v0

    invoke-virtual {v0}, Lbsh/NameSpace;->getClassManager()Lbsh/BshClassManager;

    move-result-object v0

    return-object v0
.end method

.method public getErr()Ljava/io/PrintStream;
    .locals 1

    iget-object v0, p0, Lbsh/Interpreter;->err:Ljava/io/PrintStream;

    return-object v0
.end method

.method public getIn()Ljava/io/Reader;
    .locals 1

    iget-object v0, p0, Lbsh/Interpreter;->in:Ljava/io/Reader;

    return-object v0
.end method

.method public getInterface(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    invoke-virtual {v0, p0}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbsh/This;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lbsh/SimpleNode;->JAVACODE:Lbsh/SimpleNode;

    new-instance v2, Lbsh/CallStack;

    invoke-direct {v2}, Lbsh/CallStack;-><init>()V

    invoke-virtual {v0, v1, v2}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v0

    throw v0
.end method

.method public getNameSpace()Lbsh/NameSpace;
    .locals 1

    iget-object v0, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    return-object v0
.end method

.method public getOut()Ljava/io/PrintStream;
    .locals 1

    iget-object v0, p0, Lbsh/Interpreter;->out:Ljava/io/PrintStream;

    return-object v0
.end method

.method public getParent()Lbsh/Interpreter;
    .locals 1

    iget-object v0, p0, Lbsh/Interpreter;->parent:Lbsh/Interpreter;

    return-object v0
.end method

.method public getSourceFileInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbsh/Interpreter;->sourceFileInfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/Interpreter;->sourceFileInfo:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "<unknown source>"

    goto :goto_0
.end method

.method public getStrictJava()Z
    .locals 1

    iget-boolean v0, p0, Lbsh/Interpreter;->strictJava:Z

    return v0
.end method

.method getu(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    :try_start_0
    invoke-virtual {p0, p1}, Lbsh/Interpreter;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lbsh/InterpreterError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method loadRCFiles()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "user.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".bshrc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    invoke-virtual {p0, v0, v1}, Lbsh/Interpreter;->source(Ljava/lang/String;Lbsh/NameSpace;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not find rc file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pathToFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "bsh.cwd"

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->getu(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public final print(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbsh/Interpreter;->console:Lbsh/ConsoleInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/Interpreter;->console:Lbsh/ConsoleInterface;

    invoke-interface {v0, p1}, Lbsh/ConsoleInterface;->print(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lbsh/Interpreter;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    iget-object v0, p0, Lbsh/Interpreter;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    goto :goto_0
.end method

.method public final println(Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lbsh/Interpreter;->systemLineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->print(Ljava/lang/Object;)V

    return-void
.end method

.method public run()V
    .locals 7

    const/4 v4, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lbsh/Interpreter;->evalOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bsh Interpreter: No stream"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lbsh/Interpreter;->interactive:Z

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "printBanner();"

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->eval(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    new-instance v5, Lbsh/CallStack;

    iget-object v0, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    invoke-direct {v5, v0}, Lbsh/CallStack;-><init>(Lbsh/NameSpace;)V

    move v1, v4

    :cond_2
    :goto_1
    if-nez v1, :cond_13

    :try_start_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    invoke-static {}, Ljava/lang/Thread;->yield()V

    iget-boolean v0, p0, Lbsh/Interpreter;->interactive:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lbsh/Interpreter;->getBshPrompt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->print(Ljava/lang/Object;)V

    :cond_3
    invoke-direct {p0}, Lbsh/Interpreter;->Line()Z

    move-result v1

    invoke-direct {p0}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v0

    invoke-virtual {v0}, Lbsh/JJTParserState;->nodeArity()I

    move-result v0

    if-lez v0, :cond_8

    invoke-direct {p0}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v0

    invoke-virtual {v0}, Lbsh/JJTParserState;->rootNode()Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    sget-boolean v3, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, ">"

    invoke-virtual {v0, v3}, Lbsh/SimpleNode;->dump(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0, v5, p0}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5}, Lbsh/CallStack;->depth()I

    move-result v3

    if-le v3, v2, :cond_7

    new-instance v0, Lbsh/InterpreterError;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Callstack growing: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lbsh/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lbsh/InterpreterError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lbsh/TargetError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lbsh/EvalError; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lbsh/TokenMgrError; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Parser Error: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-boolean v6, Lbsh/Interpreter;->DEBUG:Z

    invoke-virtual {v0, v6}, Lbsh/ParseException;->getMessage(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lbsh/Interpreter;->error(Ljava/lang/Object;)V

    sget-boolean v3, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lbsh/ParseException;->printStackTrace()V

    :cond_5
    iget-boolean v0, p0, Lbsh/Interpreter;->interactive:Z

    if-nez v0, :cond_6

    move v1, v2

    :cond_6
    iget-object v0, p0, Lbsh/Interpreter;->parser:Lbsh/Parser;

    iget-object v3, p0, Lbsh/Interpreter;->in:Ljava/io/Reader;

    invoke-virtual {v0, v3}, Lbsh/Parser;->reInitInput(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v0

    invoke-virtual {v0}, Lbsh/JJTParserState;->reset()V

    invoke-virtual {v5}, Lbsh/CallStack;->depth()I

    move-result v0

    if-le v0, v2, :cond_2

    invoke-virtual {v5}, Lbsh/CallStack;->clear()V

    iget-object v0, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    :goto_2
    invoke-virtual {v5, v0}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    const-string v0, "BeanShell 2.0b2 - by Pat Niemeyer (pat@pat.net)"

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->println(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    :try_start_3
    instance-of v3, v0, Lbsh/ReturnControl;

    if-eqz v3, :cond_15

    check-cast v0, Lbsh/ReturnControl;

    iget-object v0, v0, Lbsh/ReturnControl;->value:Ljava/lang/Object;

    move-object v3, v0

    :goto_3
    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq v3, v0, :cond_8

    const-string v0, "$_"

    invoke-virtual {p0, v0, v3}, Lbsh/Interpreter;->setu(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "bsh.show"

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->getu(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v6, v0, Ljava/lang/Boolean;

    if-eqz v6, :cond_8

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v2, :cond_8

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "<"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->println(Ljava/lang/Object;)V
    :try_end_3
    .catch Lbsh/ParseException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lbsh/InterpreterError; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lbsh/TargetError; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lbsh/EvalError; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lbsh/TokenMgrError; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_8
    invoke-direct {p0}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v0

    invoke-virtual {v0}, Lbsh/JJTParserState;->reset()V

    invoke-virtual {v5}, Lbsh/CallStack;->depth()I

    move-result v0

    if-le v0, v2, :cond_2

    invoke-virtual {v5}, Lbsh/CallStack;->clear()V

    iget-object v0, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_4
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Internal Error: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lbsh/InterpreterError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lbsh/Interpreter;->error(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lbsh/InterpreterError;->printStackTrace()V

    iget-boolean v0, p0, Lbsh/Interpreter;->interactive:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_9

    move v1, v2

    :cond_9
    invoke-direct {p0}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v0

    invoke-virtual {v0}, Lbsh/JJTParserState;->reset()V

    invoke-virtual {v5}, Lbsh/CallStack;->depth()I

    move-result v0

    if-le v0, v2, :cond_2

    invoke-virtual {v5}, Lbsh/CallStack;->clear()V

    iget-object v0, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    goto/16 :goto_2

    :catch_3
    move-exception v0

    :try_start_5
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "// Uncaught Exception: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lbsh/Interpreter;->error(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lbsh/TargetError;->inNativeCode()Z

    move-result v3

    if-eqz v3, :cond_a

    sget-boolean v3, Lbsh/Interpreter;->DEBUG:Z

    iget-object v6, p0, Lbsh/Interpreter;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v3, v6}, Lbsh/TargetError;->printStackTrace(ZLjava/io/PrintStream;)V

    :cond_a
    iget-boolean v3, p0, Lbsh/Interpreter;->interactive:Z

    if-nez v3, :cond_b

    move v1, v2

    :cond_b
    const-string v3, "$_e"

    invoke-virtual {v0}, Lbsh/TargetError;->getTarget()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lbsh/Interpreter;->setu(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-direct {p0}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v0

    invoke-virtual {v0}, Lbsh/JJTParserState;->reset()V

    invoke-virtual {v5}, Lbsh/CallStack;->depth()I

    move-result v0

    if-le v0, v2, :cond_2

    invoke-virtual {v5}, Lbsh/CallStack;->clear()V

    iget-object v0, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    goto/16 :goto_2

    :catch_4
    move-exception v0

    :try_start_6
    iget-boolean v3, p0, Lbsh/Interpreter;->interactive:Z

    if-eqz v3, :cond_e

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "EvalError: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lbsh/EvalError;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lbsh/Interpreter;->error(Ljava/lang/Object;)V

    :goto_4
    sget-boolean v3, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v3, :cond_c

    invoke-virtual {v0}, Lbsh/EvalError;->printStackTrace()V

    :cond_c
    iget-boolean v0, p0, Lbsh/Interpreter;->interactive:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v0, :cond_d

    move v1, v2

    :cond_d
    invoke-direct {p0}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v0

    invoke-virtual {v0}, Lbsh/JJTParserState;->reset()V

    invoke-virtual {v5}, Lbsh/CallStack;->depth()I

    move-result v0

    if-le v0, v2, :cond_2

    invoke-virtual {v5}, Lbsh/CallStack;->clear()V

    iget-object v0, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    goto/16 :goto_2

    :cond_e
    :try_start_7
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "EvalError: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lbsh/EvalError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lbsh/Interpreter;->error(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v1

    invoke-virtual {v1}, Lbsh/JJTParserState;->reset()V

    invoke-virtual {v5}, Lbsh/CallStack;->depth()I

    move-result v1

    if-le v1, v2, :cond_f

    invoke-virtual {v5}, Lbsh/CallStack;->clear()V

    iget-object v1, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    invoke-virtual {v5, v1}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    :cond_f
    throw v0

    :catch_5
    move-exception v0

    :try_start_8
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Unknown error: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lbsh/Interpreter;->error(Ljava/lang/Object;)V

    sget-boolean v3, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v3, :cond_10

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_10
    iget-boolean v0, p0, Lbsh/Interpreter;->interactive:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v0, :cond_11

    move v1, v2

    :cond_11
    invoke-direct {p0}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v0

    invoke-virtual {v0}, Lbsh/JJTParserState;->reset()V

    invoke-virtual {v5}, Lbsh/CallStack;->depth()I

    move-result v0

    if-le v0, v2, :cond_2

    invoke-virtual {v5}, Lbsh/CallStack;->clear()V

    iget-object v0, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    goto/16 :goto_2

    :catch_6
    move-exception v0

    :try_start_9
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Error parsing input: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->error(Ljava/lang/Object;)V

    iget-object v0, p0, Lbsh/Interpreter;->parser:Lbsh/Parser;

    iget-object v3, p0, Lbsh/Interpreter;->in:Ljava/io/Reader;

    invoke-virtual {v0, v3}, Lbsh/Parser;->reInitTokenInput(Ljava/io/Reader;)V

    iget-boolean v0, p0, Lbsh/Interpreter;->interactive:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-nez v0, :cond_12

    move v1, v2

    :cond_12
    invoke-direct {p0}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v0

    invoke-virtual {v0}, Lbsh/JJTParserState;->reset()V

    invoke-virtual {v5}, Lbsh/CallStack;->depth()I

    move-result v0

    if-le v0, v2, :cond_2

    invoke-virtual {v5}, Lbsh/CallStack;->clear()V

    iget-object v0, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    goto/16 :goto_2

    :cond_13
    iget-boolean v0, p0, Lbsh/Interpreter;->interactive:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lbsh/Interpreter;->exitOnEOF:Z

    if-eqz v0, :cond_14

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    :cond_14
    return-void

    :cond_15
    move-object v3, v0

    goto/16 :goto_3
.end method

.method public set(Ljava/lang/String;D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    new-instance v0, Lbsh/Primitive;

    invoke-direct {v0, p2, p3}, Lbsh/Primitive;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public set(Ljava/lang/String;F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    new-instance v0, Lbsh/Primitive;

    invoke-direct {v0, p2}, Lbsh/Primitive;-><init>(F)V

    invoke-virtual {p0, p1, v0}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public set(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    new-instance v0, Lbsh/Primitive;

    invoke-direct {v0, p2}, Lbsh/Primitive;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public set(Ljava/lang/String;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    new-instance v0, Lbsh/Primitive;

    invoke-direct {v0, p2, p3}, Lbsh/Primitive;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    if-nez p2, :cond_0

    sget-object p2, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    :cond_0
    new-instance v1, Lbsh/CallStack;

    invoke-direct {v1}, Lbsh/CallStack;-><init>()V

    :try_start_0
    invoke-static {p1}, Lbsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    invoke-virtual {v0, p1}, Lbsh/NameSpace;->getNameResolver(Ljava/lang/String;)Lbsh/Name;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Lbsh/Name;->toLHS(Lbsh/CallStack;Lbsh/Interpreter;)Lbsh/LHS;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v2}, Lbsh/NameSpace;->setVariable(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lbsh/SimpleNode;->JAVACODE:Lbsh/SimpleNode;

    invoke-virtual {v0, v2, v1}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v0

    throw v0
.end method

.method public set(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    new-instance v0, Lbsh/Primitive;

    invoke-direct {v0, p2}, Lbsh/Primitive;-><init>(Z)V

    invoke-virtual {p0, p1, v0}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 1

    invoke-virtual {p0}, Lbsh/Interpreter;->getClassManager()Lbsh/BshClassManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbsh/BshClassManager;->setClassLoader(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public setConsole(Lbsh/ConsoleInterface;)V
    .locals 1

    iput-object p1, p0, Lbsh/Interpreter;->console:Lbsh/ConsoleInterface;

    const-string v0, "bsh.console"

    invoke-virtual {p0, v0, p1}, Lbsh/Interpreter;->setu(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Lbsh/ConsoleInterface;->getOut()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->setOut(Ljava/io/PrintStream;)V

    invoke-interface {p1}, Lbsh/ConsoleInterface;->getErr()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->setErr(Ljava/io/PrintStream;)V

    return-void
.end method

.method public setErr(Ljava/io/PrintStream;)V
    .locals 0

    iput-object p1, p0, Lbsh/Interpreter;->err:Ljava/io/PrintStream;

    return-void
.end method

.method public setExitOnEOF(Z)V
    .locals 0

    iput-boolean p1, p0, Lbsh/Interpreter;->exitOnEOF:Z

    return-void
.end method

.method public setNameSpace(Lbsh/NameSpace;)V
    .locals 0

    iput-object p1, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    return-void
.end method

.method public setOut(Ljava/io/PrintStream;)V
    .locals 0

    iput-object p1, p0, Lbsh/Interpreter;->out:Ljava/io/PrintStream;

    return-void
.end method

.method public setStrictJava(Z)V
    .locals 0

    iput-boolean p1, p0, Lbsh/Interpreter;->strictJava:Z

    return-void
.end method

.method setu(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lbsh/InterpreterError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public source(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lbsh/EvalError;
        }
    .end annotation

    iget-object v0, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    invoke-virtual {p0, p1, v0}, Lbsh/Interpreter;->source(Ljava/lang/String;Lbsh/NameSpace;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public source(Ljava/lang/String;Lbsh/NameSpace;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lbsh/EvalError;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lbsh/Interpreter;->pathToFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sget-boolean v1, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Sourcing file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :try_start_0
    invoke-virtual {p0, v1, p2, p1}, Lbsh/Interpreter;->eval(Ljava/io/Reader;Lbsh/NameSpace;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    throw v0
.end method

.method public unset(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    new-instance v0, Lbsh/CallStack;

    invoke-direct {v0}, Lbsh/CallStack;-><init>()V

    :try_start_0
    iget-object v1, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    invoke-virtual {v1, p1}, Lbsh/NameSpace;->getNameResolver(Ljava/lang/String;)Lbsh/Name;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lbsh/Name;->toLHS(Lbsh/CallStack;Lbsh/Interpreter;)Lbsh/LHS;

    move-result-object v0

    iget v1, v0, Lbsh/LHS;->type:I

    if-eqz v1, :cond_0

    new-instance v0, Lbsh/EvalError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Can\'t unset, not a variable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lbsh/SimpleNode;->JAVACODE:Lbsh/SimpleNode;

    new-instance v3, Lbsh/CallStack;

    invoke-direct {v3}, Lbsh/CallStack;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lbsh/EvalError;

    invoke-virtual {v0}, Lbsh/UtilEvalError;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lbsh/SimpleNode;->JAVACODE:Lbsh/SimpleNode;

    new-instance v3, Lbsh/CallStack;

    invoke-direct {v3}, Lbsh/CallStack;-><init>()V

    invoke-direct {v1, v0, v2, v3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v1

    :cond_0
    :try_start_1
    iget-object v0, v0, Lbsh/LHS;->nameSpace:Lbsh/NameSpace;

    invoke-virtual {v0, p1}, Lbsh/NameSpace;->unsetVariable(Ljava/lang/String;)V
    :try_end_1
    .catch Lbsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method
