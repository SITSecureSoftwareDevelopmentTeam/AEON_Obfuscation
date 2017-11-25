.class public Lbsh/servlet/BshServlet;
.super Ljavax/servlet/http/HttpServlet;


# static fields
.field static bshVersion:Ljava/lang/String;

.field static class$bsh$servlet$BshServlet:Ljava/lang/Class;

.field static exampleScript:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "print(\"hello!\");"

    sput-object v0, Lbsh/servlet/BshServlet;->exampleScript:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljavax/servlet/http/HttpServlet;-><init>()V

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

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const-string v1, "&<>"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "&amp;"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    const-string v4, "&lt;"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "&gt;"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget-object v4, v2, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getBshVersion()Ljava/lang/String;
    .locals 4

    sget-object v0, Lbsh/servlet/BshServlet;->bshVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lbsh/servlet/BshServlet;->bshVersion:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lbsh/Interpreter;

    invoke-direct {v1}, Lbsh/Interpreter;-><init>()V

    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v0, Lbsh/servlet/BshServlet;->class$bsh$servlet$BshServlet:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "bsh.servlet.BshServlet"

    invoke-static {v0}, Lbsh/servlet/BshServlet;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/servlet/BshServlet;->class$bsh$servlet$BshServlet:Ljava/lang/Class;

    :goto_1
    const-string v3, "getVersion.bsh"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v2}, Lbsh/Interpreter;->eval(Ljava/io/Reader;)Ljava/lang/Object;

    const-string v0, "getVersion()"

    invoke-virtual {v1, v0}, Lbsh/Interpreter;->eval(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lbsh/servlet/BshServlet;->bshVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    sget-object v0, Lbsh/servlet/BshServlet;->bshVersion:Ljava/lang/String;

    goto :goto_0

    :cond_1
    :try_start_1
    sget-object v0, Lbsh/servlet/BshServlet;->class$bsh$servlet$BshServlet:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "BeanShell: unknown version"

    sput-object v0, Lbsh/servlet/BshServlet;->bshVersion:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method public doGet(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v1, "bsh.script"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "bsh.client"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "bsh.servlet.output"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v1, "bsh.servlet.captureOutErr"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    :cond_0
    const/4 v8, 0x0

    const/4 v7, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v2, :cond_1

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lbsh/servlet/BshServlet;->evalScript(Ljava/lang/String;Ljava/lang/StringBuffer;ZLjavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :cond_1
    :goto_0
    const-string v1, "Bsh-Return"

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-interface {v0, v1, v5}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v10, :cond_2

    const-string v1, "raw"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    if-eqz v9, :cond_4

    const-string v1, "Remote"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Lbsh/servlet/BshServlet;->sendRaw(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    :goto_1
    return-void

    :cond_4
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object v12, v2

    move-object v13, v7

    move-object v14, v8

    move-object v15, v3

    move/from16 v16, v4

    invoke-virtual/range {v9 .. v16}, Lbsh/servlet/BshServlet;->sendHTML(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/StringBuffer;Z)V

    goto :goto_1

    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public doPost(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lbsh/servlet/BshServlet;->doGet(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    return-void
.end method

.method evalScript(Ljava/lang/String;Ljava/lang/StringBuffer;ZLjavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v2, Lbsh/Interpreter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v1, v4}, Lbsh/Interpreter;-><init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;Z)V

    const-string v3, "bsh.httpServletRequest"

    invoke-virtual {v2, v3, p4}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "bsh.httpServletResponse"

    invoke-virtual {v2, v3, p5}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-eqz p3, :cond_0

    invoke-static {v1}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    invoke-static {v1}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    :cond_0
    :try_start_0
    invoke-virtual {v2, p1}, Lbsh/Interpreter;->eval(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz p3, :cond_1

    invoke-static {v3}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    invoke-static {v4}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    :cond_1
    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object v2

    :catchall_0
    move-exception v0

    if-eqz p3, :cond_2

    invoke-static {v3}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    invoke-static {v4}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    :cond_2
    throw v0
.end method

.method formatScriptResultHTML(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_2

    new-instance v1, Lbsh/servlet/SimpleTemplate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "error.template"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-direct {v1, v0}, Lbsh/servlet/SimpleTemplate;-><init>(Ljava/net/URL;)V

    instance-of v0, p3, Lbsh/EvalError;

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Lbsh/EvalError;

    invoke-virtual {v0}, Lbsh/EvalError;->getErrorLineNumber()I

    move-result v2

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x4

    invoke-static {v0}, Lbsh/servlet/BshServlet;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, -0x1

    if-le v2, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, "<hr>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, v2, v3}, Lbsh/servlet/BshServlet;->showScriptContextHTML(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    const-string v2, "error"

    invoke-virtual {v1, v2, v0}, Lbsh/servlet/SimpleTemplate;->replace(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    invoke-virtual {v0}, Lbsh/servlet/SimpleTemplate;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsh/servlet/BshServlet;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Lbsh/servlet/SimpleTemplate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "result.template"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/servlet/SimpleTemplate;-><init>(Ljava/net/URL;)V

    const-string v1, "value"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbsh/servlet/BshServlet;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbsh/servlet/SimpleTemplate;->replace(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "output"

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbsh/servlet/BshServlet;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbsh/servlet/SimpleTemplate;->replace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method sendHTML(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/StringBuffer;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Lbsh/servlet/SimpleTemplate;

    sget-object v0, Lbsh/servlet/BshServlet;->class$bsh$servlet$BshServlet:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "bsh.servlet.BshServlet"

    invoke-static {v0}, Lbsh/servlet/BshServlet;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/servlet/BshServlet;->class$bsh$servlet$BshServlet:Ljava/lang/Class;

    :goto_0
    const-string v2, "page.template"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-direct {v1, v0}, Lbsh/servlet/SimpleTemplate;-><init>(Ljava/net/URL;)V

    const-string v0, "version"

    invoke-static {}, Lbsh/servlet/BshServlet;->getBshVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lbsh/servlet/SimpleTemplate;->replace(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v0

    const-string v2, "servletURL"

    invoke-virtual {v1, v2, v0}, Lbsh/servlet/SimpleTemplate;->replace(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    const-string v0, "script"

    invoke-virtual {v1, v0, p3}, Lbsh/servlet/SimpleTemplate;->replace(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz p7, :cond_3

    const-string v0, "captureOutErr"

    const-string v2, "CHECKED"

    invoke-virtual {v1, v0, v2}, Lbsh/servlet/SimpleTemplate;->replace(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-eqz p3, :cond_0

    const-string v0, "scriptResult"

    invoke-virtual {p0, p3, p5, p4, p6}, Lbsh/servlet/BshServlet;->formatScriptResultHTML(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lbsh/servlet/SimpleTemplate;->replace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "text/html"

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbsh/servlet/SimpleTemplate;->write(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void

    :cond_1
    sget-object v0, Lbsh/servlet/BshServlet;->class$bsh$servlet$BshServlet:Ljava/lang/Class;

    goto :goto_0

    :cond_2
    const-string v0, "script"

    sget-object v2, Lbsh/servlet/BshServlet;->exampleScript:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lbsh/servlet/SimpleTemplate;->replace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "captureOutErr"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lbsh/servlet/SimpleTemplate;->replace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method sendRaw(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/StringBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "text/plain"

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v0

    if-eqz p3, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Script Error:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void

    :cond_0
    invoke-virtual {p5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method showScriptContextHTML(Ljava/lang/String;II)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    sub-int v3, p2, p3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int v4, p2, p3

    :goto_0
    add-int v5, p2, p3

    add-int/lit8 v5, v5, 0x1

    if-gt v0, v5, :cond_1

    if-ge v0, v3, :cond_0

    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-le v0, v4, :cond_2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    if-eqz v5, :cond_1

    if-ne v0, p2, :cond_3

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "<font color=\"red\">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "</font><br/>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "<br/>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
