.class public Lbsh/util/BeanShellBSFEngine;
.super Lorg/apache/bsf/util/BSFEngineImpl;


# static fields
.field static final bsfApplyMethod:Ljava/lang/String; = "_bsfApply( _bsfNames, _bsfArgs, _bsfText ) {for(i=0;i<_bsfNames.length;i++)this.namespace.setVariable(_bsfNames[i], _bsfArgs[i],false);return this.interpreter.eval(_bsfText, this.namespace);}"


# instance fields
.field installedApplyMethod:Z

.field interpreter:Lbsh/Interpreter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/bsf/util/BSFEngineImpl;-><init>()V

    return-void
.end method

.method private sourceInfo(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, " BSF info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " at line: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " column: columnNo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/String;IILjava/lang/Object;Ljava/util/Vector;Ljava/util/Vector;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/bsf/BSFException;
        }
    .end annotation

    invoke-virtual {p5}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {p6}, Ljava/util/Vector;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Lorg/apache/bsf/BSFException;

    const-string v1, "number of params/names mismatch"

    invoke-direct {v0, v1}, Lorg/apache/bsf/BSFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p4, Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/bsf/BSFException;

    const-string v1, "apply: functino body must be a string"

    invoke-direct {v0, v1}, Lorg/apache/bsf/BSFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p5}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p5, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    invoke-virtual {p6}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p6, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    :try_start_0
    iget-boolean v0, p0, Lbsh/util/BeanShellBSFEngine;->installedApplyMethod:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lbsh/util/BeanShellBSFEngine;->interpreter:Lbsh/Interpreter;

    const-string v3, "_bsfApply( _bsfNames, _bsfArgs, _bsfText ) {for(i=0;i<_bsfNames.length;i++)this.namespace.setVariable(_bsfNames[i], _bsfArgs[i],false);return this.interpreter.eval(_bsfText, this.namespace);}"

    invoke-virtual {v0, v3}, Lbsh/Interpreter;->eval(Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbsh/util/BeanShellBSFEngine;->installedApplyMethod:Z

    :cond_2
    iget-object v0, p0, Lbsh/util/BeanShellBSFEngine;->interpreter:Lbsh/Interpreter;

    const-string v3, "global"

    invoke-virtual {v0, v3}, Lbsh/Interpreter;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/This;

    const-string v3, "_bsfApply"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    check-cast p4, Ljava/lang/String;

    aput-object p4, v4, v1

    invoke-virtual {v0, v3, v4}, Lbsh/This;->invokeMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lbsh/Primitive;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lbsh/InterpreterError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lbsh/TargetError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/bsf/BSFException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "BeanShell interpreter internal error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Lbsh/util/BeanShellBSFEngine;->sourceInfo(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/bsf/BSFException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/apache/bsf/BSFException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "The application script threw an exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lbsh/TargetError;->getTarget()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Lbsh/util/BeanShellBSFEngine;->sourceInfo(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/bsf/BSFException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lorg/apache/bsf/BSFException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "BeanShell script error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Lbsh/util/BeanShellBSFEngine;->sourceInfo(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/bsf/BSFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/bsf/BSFException;
        }
    .end annotation

    if-nez p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lbsh/util/BeanShellBSFEngine;->interpreter:Lbsh/Interpreter;

    const-string v1, "global"

    invoke-virtual {v0, v1}, Lbsh/Interpreter;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    instance-of v1, v0, Lbsh/This;

    if-eqz v1, :cond_0

    :try_start_1
    check-cast v0, Lbsh/This;

    invoke-virtual {v0, p2, p3}, Lbsh/This;->invokeMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lbsh/Primitive;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lbsh/InterpreterError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lbsh/TargetError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lbsh/EvalError; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/bsf/BSFException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "bsh internal error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lbsh/EvalError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/bsf/BSFException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/apache/bsf/BSFException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "BeanShell interpreter internal error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/bsf/BSFException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lorg/apache/bsf/BSFException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "The application script threw an exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lbsh/TargetError;->getTarget()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/bsf/BSFException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lorg/apache/bsf/BSFException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "BeanShell script error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/bsf/BSFException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Lorg/apache/bsf/BSFException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Cannot invoke method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ". Object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " is not a BeanShell scripted object."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/bsf/BSFException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object v0, p1

    goto/16 :goto_0
.end method

.method public declareBean(Lorg/apache/bsf/BSFDeclaredBean;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/bsf/BSFException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lbsh/util/BeanShellBSFEngine;->interpreter:Lbsh/Interpreter;

    iget-object v1, p1, Lorg/apache/bsf/BSFDeclaredBean;->name:Ljava/lang/String;

    iget-object v2, p1, Lorg/apache/bsf/BSFDeclaredBean;->bean:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/bsf/BSFException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "error declaring bean: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p1, Lorg/apache/bsf/BSFDeclaredBean;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lbsh/EvalError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/bsf/BSFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public eval(Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/bsf/BSFException;
        }
    .end annotation

    instance-of v0, p4, Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/bsf/BSFException;

    const-string v1, "BeanShell expression must be a string"

    invoke-direct {v0, v1}, Lorg/apache/bsf/BSFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lbsh/util/BeanShellBSFEngine;->interpreter:Lbsh/Interpreter;

    check-cast p4, Ljava/lang/String;

    invoke-virtual {v0, p4}, Lbsh/Interpreter;->eval(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lbsh/InterpreterError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lbsh/TargetError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/bsf/BSFException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "BeanShell interpreter internal error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Lbsh/util/BeanShellBSFEngine;->sourceInfo(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/bsf/BSFException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/apache/bsf/BSFException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "The application script threw an exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lbsh/TargetError;->getTarget()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Lbsh/util/BeanShellBSFEngine;->sourceInfo(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/bsf/BSFException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lorg/apache/bsf/BSFException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "BeanShell script error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Lbsh/util/BeanShellBSFEngine;->sourceInfo(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/bsf/BSFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public exec(Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/bsf/BSFException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lbsh/util/BeanShellBSFEngine;->eval(Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public initialize(Lorg/apache/bsf/BSFManager;Ljava/lang/String;Ljava/util/Vector;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/bsf/BSFException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lorg/apache/bsf/util/BSFEngineImpl;->initialize(Lorg/apache/bsf/BSFManager;Ljava/lang/String;Ljava/util/Vector;)V

    new-instance v0, Lbsh/Interpreter;

    invoke-direct {v0}, Lbsh/Interpreter;-><init>()V

    iput-object v0, p0, Lbsh/util/BeanShellBSFEngine;->interpreter:Lbsh/Interpreter;

    :try_start_0
    iget-object v0, p0, Lbsh/util/BeanShellBSFEngine;->interpreter:Lbsh/Interpreter;

    const-string v1, "bsf"

    invoke-virtual {v0, v1, p1}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/bsf/BSFDeclaredBean;

    invoke-virtual {p0, v0}, Lbsh/util/BeanShellBSFEngine;->declareBean(Lorg/apache/bsf/BSFDeclaredBean;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/bsf/BSFException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "bsh internal error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lbsh/EvalError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/bsf/BSFException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method public setDebug(Z)V
    .locals 1

    iget-object v0, p0, Lbsh/util/BeanShellBSFEngine;->interpreter:Lbsh/Interpreter;

    sput-boolean p1, Lbsh/Interpreter;->DEBUG:Z

    return-void
.end method

.method public terminate()V
    .locals 0

    return-void
.end method

.method public undeclareBean(Lorg/apache/bsf/BSFDeclaredBean;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/bsf/BSFException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lbsh/util/BeanShellBSFEngine;->interpreter:Lbsh/Interpreter;

    iget-object v1, p1, Lorg/apache/bsf/BSFDeclaredBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbsh/Interpreter;->unset(Ljava/lang/String;)V
    :try_end_0
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/bsf/BSFException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "bsh internal error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lbsh/EvalError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/bsf/BSFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
