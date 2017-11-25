.class Lbsh/BSHFormalParameters;
.super Lbsh/SimpleNode;


# instance fields
.field numArgs:I

.field private paramNames:[Ljava/lang/String;

.field paramTypes:[Ljava/lang/Class;

.field typeDescriptors:[Ljava/lang/String;


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

    iget-object v0, p0, Lbsh/BSHFormalParameters;->paramTypes:[Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/BSHFormalParameters;->paramTypes:[Ljava/lang/Class;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lbsh/BSHFormalParameters;->insureParsed()V

    iget v0, p0, Lbsh/BSHFormalParameters;->numArgs:I

    new-array v2, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget v0, p0, Lbsh/BSHFormalParameters;->numArgs:I

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lbsh/BSHFormalParameters;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHFormalParameter;

    invoke-virtual {v0, p1, p2}, Lbsh/BSHFormalParameter;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    iput-object v2, p0, Lbsh/BSHFormalParameters;->paramTypes:[Ljava/lang/Class;

    move-object v0, v2

    goto :goto_0
.end method

.method public getParamNames()[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lbsh/BSHFormalParameters;->insureParsed()V

    iget-object v0, p0, Lbsh/BSHFormalParameters;->paramNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getTypeDescriptors(Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lbsh/BSHFormalParameters;->typeDescriptors:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/BSHFormalParameters;->typeDescriptors:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lbsh/BSHFormalParameters;->insureParsed()V

    iget v0, p0, Lbsh/BSHFormalParameters;->numArgs:I

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget v0, p0, Lbsh/BSHFormalParameters;->numArgs:I

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lbsh/BSHFormalParameters;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHFormalParameter;

    invoke-virtual {v0, p1, p2, p3}, Lbsh/BSHFormalParameter;->getTypeDescriptor(Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    iput-object v2, p0, Lbsh/BSHFormalParameters;->typeDescriptors:[Ljava/lang/String;

    move-object v0, v2

    goto :goto_0
.end method

.method insureParsed()V
    .locals 3

    iget-object v0, p0, Lbsh/BSHFormalParameters;->paramNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lbsh/BSHFormalParameters;->jjtGetNumChildren()I

    move-result v0

    iput v0, p0, Lbsh/BSHFormalParameters;->numArgs:I

    iget v0, p0, Lbsh/BSHFormalParameters;->numArgs:I

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget v0, p0, Lbsh/BSHFormalParameters;->numArgs:I

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lbsh/BSHFormalParameters;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHFormalParameter;

    iget-object v0, v0, Lbsh/BSHFormalParameter;->name:Ljava/lang/String;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    iput-object v2, p0, Lbsh/BSHFormalParameters;->paramNames:[Ljava/lang/String;

    goto :goto_0
.end method
