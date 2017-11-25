.class Lbsh/BSHImportDeclaration;
.super Lbsh/SimpleNode;


# instance fields
.field public importPackage:Z

.field public staticImport:Z

.field public superImport:Z


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v1

    iget-boolean v0, p0, Lbsh/BSHImportDeclaration;->superImport:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lbsh/NameSpace;->doSuperImport()V
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0, p0, p1}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v0

    throw v0

    :cond_0
    iget-boolean v0, p0, Lbsh/BSHImportDeclaration;->staticImport:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lbsh/BSHImportDeclaration;->importPackage:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lbsh/BSHImportDeclaration;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHAmbiguousName;

    invoke-virtual {v0, p1, p2}, Lbsh/BSHAmbiguousName;->toClass(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbsh/NameSpace;->importStatic(Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lbsh/EvalError;

    const-string v1, "static field imports not supported yet"

    invoke-direct {v0, v1, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0

    :cond_2
    invoke-virtual {p0, v2}, Lbsh/BSHImportDeclaration;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHAmbiguousName;

    iget-object v0, v0, Lbsh/BSHAmbiguousName;->text:Ljava/lang/String;

    iget-boolean v2, p0, Lbsh/BSHImportDeclaration;->importPackage:Z

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Lbsh/NameSpace;->importPackage(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v0}, Lbsh/NameSpace;->importClass(Ljava/lang/String;)V

    goto :goto_0
.end method
