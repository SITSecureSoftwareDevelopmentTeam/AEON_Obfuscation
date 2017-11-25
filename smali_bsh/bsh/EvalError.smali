.class public Lbsh/EvalError;
.super Ljava/lang/Exception;


# instance fields
.field callstack:Lbsh/CallStack;

.field message:Ljava/lang/String;

.field node:Lbsh/SimpleNode;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p0, p1}, Lbsh/EvalError;->setMessage(Ljava/lang/String;)V

    iput-object p2, p0, Lbsh/EvalError;->node:Lbsh/SimpleNode;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lbsh/CallStack;->copy()Lbsh/CallStack;

    move-result-object v0

    iput-object v0, p0, Lbsh/EvalError;->callstack:Lbsh/CallStack;

    :cond_0
    return-void
.end method


# virtual methods
.method public getErrorLineNumber()I
    .locals 1

    iget-object v0, p0, Lbsh/EvalError;->node:Lbsh/SimpleNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/EvalError;->node:Lbsh/SimpleNode;

    invoke-virtual {v0}, Lbsh/SimpleNode;->getLineNumber()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getErrorSourceFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbsh/EvalError;->node:Lbsh/SimpleNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/EvalError;->node:Lbsh/SimpleNode;

    invoke-virtual {v0}, Lbsh/SimpleNode;->getSourceFile()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "<unknown file>"

    goto :goto_0
.end method

.method public getErrorText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbsh/EvalError;->node:Lbsh/SimpleNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/EvalError;->node:Lbsh/SimpleNode;

    invoke-virtual {v0}, Lbsh/SimpleNode;->getText()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "<unknown error>"

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbsh/EvalError;->message:Ljava/lang/String;

    return-object v0
.end method

.method getNode()Lbsh/SimpleNode;
    .locals 1

    iget-object v0, p0, Lbsh/EvalError;->node:Lbsh/SimpleNode;

    return-object v0
.end method

.method public getScriptStackTrace()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lbsh/EvalError;->callstack:Lbsh/CallStack;

    if-nez v0, :cond_1

    const-string v0, "<Unknown>"

    :cond_0
    return-object v0

    :cond_1
    const-string v0, ""

    iget-object v1, p0, Lbsh/EvalError;->callstack:Lbsh/CallStack;

    invoke-virtual {v1}, Lbsh/CallStack;->copy()Lbsh/CallStack;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-virtual {v1}, Lbsh/CallStack;->depth()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1}, Lbsh/CallStack;->pop()Lbsh/NameSpace;

    move-result-object v2

    invoke-virtual {v2}, Lbsh/NameSpace;->getNode()Lbsh/SimpleNode;

    move-result-object v3

    iget-boolean v4, v2, Lbsh/NameSpace;->isMethod:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, "\nCalled from method: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v2}, Lbsh/NameSpace;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_2

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " : at Line: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v3}, Lbsh/SimpleNode;->getLineNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " : in file: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v3}, Lbsh/SimpleNode;->getSourceFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v3}, Lbsh/SimpleNode;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected prependMessage(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lbsh/EvalError;->message:Ljava/lang/String;

    if-nez v0, :cond_1

    iput-object p1, p0, Lbsh/EvalError;->message:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lbsh/EvalError;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbsh/EvalError;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method public reThrow(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lbsh/EvalError;->prependMessage(Ljava/lang/String;)V

    throw p0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbsh/EvalError;->message:Ljava/lang/String;

    return-void
.end method

.method setNode(Lbsh/SimpleNode;)V
    .locals 0

    iput-object p1, p0, Lbsh/EvalError;->node:Lbsh/SimpleNode;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lbsh/EvalError;->node:Lbsh/SimpleNode;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, " : at Line: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lbsh/EvalError;->node:Lbsh/SimpleNode;

    invoke-virtual {v1}, Lbsh/SimpleNode;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " : in file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lbsh/EvalError;->node:Lbsh/SimpleNode;

    invoke-virtual {v1}, Lbsh/SimpleNode;->getSourceFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lbsh/EvalError;->node:Lbsh/SimpleNode;

    invoke-virtual {v1}, Lbsh/SimpleNode;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lbsh/EvalError;->callstack:Lbsh/CallStack;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lbsh/EvalError;->getScriptStackTrace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lbsh/EvalError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ": <at unknown location>"

    goto :goto_0
.end method
