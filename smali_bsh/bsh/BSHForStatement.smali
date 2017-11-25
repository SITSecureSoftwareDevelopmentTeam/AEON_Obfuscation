.class Lbsh/BSHForStatement;
.super Lbsh/SimpleNode;

# interfaces
.implements Lbsh/ParserConstants;


# instance fields
.field private expression:Lbsh/SimpleNode;

.field private forInit:Lbsh/SimpleNode;

.field private forUpdate:Lbsh/SimpleNode;

.field public hasExpression:Z

.field public hasForInit:Z

.field public hasForUpdate:Z

.field private parsed:Z

.field private statement:Lbsh/SimpleNode;


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lbsh/BSHForStatement;->hasForInit:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0, v3}, Lbsh/BSHForStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    iput-object v0, p0, Lbsh/BSHForStatement;->forInit:Lbsh/SimpleNode;

    move v0, v2

    :goto_0
    iget-boolean v1, p0, Lbsh/BSHForStatement;->hasExpression:Z

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Lbsh/BSHForStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    iput-object v0, p0, Lbsh/BSHForStatement;->expression:Lbsh/SimpleNode;

    move v0, v1

    :cond_0
    iget-boolean v1, p0, Lbsh/BSHForStatement;->hasForUpdate:Z

    if-eqz v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Lbsh/BSHForStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    iput-object v0, p0, Lbsh/BSHForStatement;->forUpdate:Lbsh/SimpleNode;

    move v0, v1

    :cond_1
    invoke-virtual {p0}, Lbsh/BSHForStatement;->jjtGetNumChildren()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lbsh/BSHForStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    iput-object v0, p0, Lbsh/BSHForStatement;->statement:Lbsh/SimpleNode;

    :cond_2
    invoke-virtual {p1}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v5

    new-instance v0, Lbsh/BlockNameSpace;

    invoke-direct {v0, v5}, Lbsh/BlockNameSpace;-><init>(Lbsh/NameSpace;)V

    invoke-virtual {p1, v0}, Lbsh/CallStack;->swap(Lbsh/NameSpace;)Lbsh/NameSpace;

    iget-boolean v0, p0, Lbsh/BSHForStatement;->hasForInit:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbsh/BSHForStatement;->forInit:Lbsh/SimpleNode;

    invoke-virtual {v0, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    :cond_3
    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    move-object v4, v0

    :goto_1
    iget-boolean v0, p0, Lbsh/BSHForStatement;->hasExpression:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbsh/BSHForStatement;->expression:Lbsh/SimpleNode;

    invoke-static {v0, p1, p2}, Lbsh/BSHIfStatement;->evaluateCondition(Lbsh/SimpleNode;Lbsh/CallStack;Lbsh/Interpreter;)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_2
    invoke-virtual {p1, v5}, Lbsh/CallStack;->swap(Lbsh/NameSpace;)Lbsh/NameSpace;

    return-object v4

    :cond_4
    iget-object v0, p0, Lbsh/BSHForStatement;->statement:Lbsh/SimpleNode;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lbsh/BSHForStatement;->statement:Lbsh/SimpleNode;

    invoke-virtual {v0, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, Lbsh/ReturnControl;

    if-eqz v0, :cond_5

    move-object v0, v1

    check-cast v0, Lbsh/ReturnControl;

    iget v0, v0, Lbsh/ReturnControl;->kind:I

    sparse-switch v0, :sswitch_data_0

    :cond_5
    move v1, v3

    move-object v0, v4

    :goto_3
    if-eqz v1, :cond_6

    move-object v4, v0

    goto :goto_2

    :sswitch_0
    move-object v0, v1

    move v1, v2

    goto :goto_3

    :sswitch_1
    move v1, v3

    move-object v0, v4

    goto :goto_3

    :sswitch_2
    move v1, v2

    move-object v0, v4

    goto :goto_3

    :cond_6
    iget-boolean v1, p0, Lbsh/BSHForStatement;->hasForUpdate:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lbsh/BSHForStatement;->forUpdate:Lbsh/SimpleNode;

    invoke-virtual {v1, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-object v4, v0

    goto :goto_1

    :cond_7
    move-object v4, v0

    goto :goto_1

    :cond_8
    move v0, v3

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_2
        0x13 -> :sswitch_1
        0x2e -> :sswitch_0
    .end sparse-switch
.end method
