.class Lbsh/BSHBlock;
.super Lbsh/SimpleNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsh/BSHBlock$NodeFilter;
    }
.end annotation


# instance fields
.field public isSynchronized:Z


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbsh/BSHBlock;->isSynchronized:Z

    return-void
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lbsh/BSHBlock;->eval(Lbsh/CallStack;Lbsh/Interpreter;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public eval(Lbsh/CallStack;Lbsh/Interpreter;Z)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    const/4 v1, 0x0

    iget-boolean v0, p0, Lbsh/BSHBlock;->isSynchronized:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHBlock;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    invoke-virtual {v0, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iget-boolean v2, p0, Lbsh/BSHBlock;->isSynchronized:Z

    if-eqz v2, :cond_0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v1}, Lbsh/BSHBlock;->evalBlock(Lbsh/CallStack;Lbsh/Interpreter;ZLbsh/BSHBlock$NodeFilter;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    move-object v0, v1

    :goto_1
    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, v1}, Lbsh/BSHBlock;->evalBlock(Lbsh/CallStack;Lbsh/Interpreter;ZLbsh/BSHBlock$NodeFilter;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method evalBlock(Lbsh/CallStack;Lbsh/Interpreter;ZLbsh/BSHBlock$NodeFilter;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    sget-object v3, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    const/4 v0, 0x0

    if-nez p3, :cond_a

    invoke-virtual {p1}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v0

    new-instance v1, Lbsh/BlockNameSpace;

    invoke-direct {v1, v0}, Lbsh/BlockNameSpace;-><init>(Lbsh/NameSpace;)V

    invoke-virtual {p1, v1}, Lbsh/CallStack;->swap(Lbsh/NameSpace;)Lbsh/NameSpace;

    move-object v1, v0

    :goto_0
    iget-boolean v0, p0, Lbsh/BSHBlock;->isSynchronized:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v2, v0

    :goto_1
    invoke-virtual {p0}, Lbsh/BSHBlock;->jjtGetNumChildren()I

    move-result v5

    move v4, v2

    :goto_2
    if-ge v4, v5, :cond_4

    :try_start_0
    invoke-virtual {p0, v4}, Lbsh/BSHBlock;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    if-eqz p4, :cond_2

    invoke-interface {p4, v0}, Lbsh/BSHBlock$NodeFilter;->isVisible(Lbsh/SimpleNode;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    :goto_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    goto :goto_1

    :cond_2
    instance-of v6, v0, Lbsh/BSHClassDeclaration;

    if-eqz v6, :cond_0

    invoke-virtual {v0, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    if-nez p3, :cond_3

    invoke-virtual {p1, v1}, Lbsh/CallStack;->swap(Lbsh/NameSpace;)Lbsh/NameSpace;

    :cond_3
    throw v0

    :cond_4
    move v7, v2

    move-object v2, v3

    move v3, v7

    :goto_4
    if-ge v3, v5, :cond_9

    :try_start_1
    invoke-virtual {p0, v3}, Lbsh/BSHBlock;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    instance-of v4, v0, Lbsh/BSHClassDeclaration;

    if-eqz v4, :cond_6

    move-object v0, v2

    :cond_5
    :goto_5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v0

    goto :goto_4

    :cond_6
    if-eqz p4, :cond_7

    invoke-interface {p4, v0}, Lbsh/BSHBlock$NodeFilter;->isVisible(Lbsh/SimpleNode;)Z

    move-result v4

    if-nez v4, :cond_7

    move-object v0, v2

    goto :goto_5

    :cond_7
    invoke-virtual {v0, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lbsh/ReturnControl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_5

    :goto_6
    if-nez p3, :cond_8

    invoke-virtual {p1, v1}, Lbsh/CallStack;->swap(Lbsh/NameSpace;)Lbsh/NameSpace;

    :cond_8
    return-object v0

    :cond_9
    move-object v0, v2

    goto :goto_6

    :cond_a
    move-object v1, v0

    goto :goto_0
.end method
