.class final Lbsh/org/objectweb/asm/Item;
.super Ljava/lang/Object;


# instance fields
.field doubleVal:D

.field floatVal:F

.field hashCode:I

.field index:S

.field intVal:I

.field longVal:J

.field next:Lbsh/org/objectweb/asm/Item;

.field strVal1:Ljava/lang/String;

.field strVal2:Ljava/lang/String;

.field strVal3:Ljava/lang/String;

.field type:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(SLbsh/org/objectweb/asm/Item;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lbsh/org/objectweb/asm/Item;->index:S

    iget v0, p2, Lbsh/org/objectweb/asm/Item;->type:I

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->type:I

    iget v0, p2, Lbsh/org/objectweb/asm/Item;->intVal:I

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->intVal:I

    iget-wide v0, p2, Lbsh/org/objectweb/asm/Item;->longVal:J

    iput-wide v0, p0, Lbsh/org/objectweb/asm/Item;->longVal:J

    iget v0, p2, Lbsh/org/objectweb/asm/Item;->floatVal:F

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->floatVal:F

    iget-wide v0, p2, Lbsh/org/objectweb/asm/Item;->doubleVal:D

    iput-wide v0, p0, Lbsh/org/objectweb/asm/Item;->doubleVal:D

    iget-object v0, p2, Lbsh/org/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    iput-object v0, p0, Lbsh/org/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    iget-object v0, p2, Lbsh/org/objectweb/asm/Item;->strVal2:Ljava/lang/String;

    iput-object v0, p0, Lbsh/org/objectweb/asm/Item;->strVal2:Ljava/lang/String;

    iget-object v0, p2, Lbsh/org/objectweb/asm/Item;->strVal3:Ljava/lang/String;

    iput-object v0, p0, Lbsh/org/objectweb/asm/Item;->strVal3:Ljava/lang/String;

    iget v0, p2, Lbsh/org/objectweb/asm/Item;->hashCode:I

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->hashCode:I

    return-void
.end method


# virtual methods
.method isEqualTo(Lbsh/org/objectweb/asm/Item;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p1, Lbsh/org/objectweb/asm/Item;->type:I

    iget v3, p0, Lbsh/org/objectweb/asm/Item;->type:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lbsh/org/objectweb/asm/Item;->type:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    iget-object v2, p1, Lbsh/org/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    iget-object v3, p0, Lbsh/org/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lbsh/org/objectweb/asm/Item;->strVal2:Ljava/lang/String;

    iget-object v3, p0, Lbsh/org/objectweb/asm/Item;->strVal2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lbsh/org/objectweb/asm/Item;->strVal3:Ljava/lang/String;

    iget-object v3, p0, Lbsh/org/objectweb/asm/Item;->strVal3:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    return v0

    :pswitch_1
    iget v2, p1, Lbsh/org/objectweb/asm/Item;->intVal:I

    iget v3, p0, Lbsh/org/objectweb/asm/Item;->intVal:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_2
    iget-wide v2, p1, Lbsh/org/objectweb/asm/Item;->longVal:J

    iget-wide v4, p0, Lbsh/org/objectweb/asm/Item;->longVal:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_3
    iget v2, p1, Lbsh/org/objectweb/asm/Item;->floatVal:F

    iget v3, p0, Lbsh/org/objectweb/asm/Item;->floatVal:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_4
    iget-wide v2, p1, Lbsh/org/objectweb/asm/Item;->doubleVal:D

    iget-wide v4, p0, Lbsh/org/objectweb/asm/Item;->doubleVal:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_5
    iget-object v0, p1, Lbsh/org/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    iget-object v1, p0, Lbsh/org/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :pswitch_6
    iget-object v2, p1, Lbsh/org/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    iget-object v3, p0, Lbsh/org/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lbsh/org/objectweb/asm/Item;->strVal2:Ljava/lang/String;

    iget-object v3, p0, Lbsh/org/objectweb/asm/Item;->strVal2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method set(D)V
    .locals 3

    const/4 v0, 0x6

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->type:I

    iput-wide p1, p0, Lbsh/org/objectweb/asm/Item;->doubleVal:D

    iget v0, p0, Lbsh/org/objectweb/asm/Item;->type:I

    double-to-int v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->hashCode:I

    return-void
.end method

.method set(F)V
    .locals 2

    const/4 v0, 0x4

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->type:I

    iput p1, p0, Lbsh/org/objectweb/asm/Item;->floatVal:F

    iget v0, p0, Lbsh/org/objectweb/asm/Item;->type:I

    float-to-int v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->hashCode:I

    return-void
.end method

.method set(I)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->type:I

    iput p1, p0, Lbsh/org/objectweb/asm/Item;->intVal:I

    iget v0, p0, Lbsh/org/objectweb/asm/Item;->type:I

    add-int/2addr v0, p1

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->hashCode:I

    return-void
.end method

.method set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iput p1, p0, Lbsh/org/objectweb/asm/Item;->type:I

    iput-object p2, p0, Lbsh/org/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    iput-object p3, p0, Lbsh/org/objectweb/asm/Item;->strVal2:Ljava/lang/String;

    iput-object p4, p0, Lbsh/org/objectweb/asm/Item;->strVal3:Ljava/lang/String;

    sparse-switch p1, :sswitch_data_0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->hashCode:I

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->hashCode:I

    goto :goto_0

    :sswitch_1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->hashCode:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch
.end method

.method set(J)V
    .locals 3

    const/4 v0, 0x5

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->type:I

    iput-wide p1, p0, Lbsh/org/objectweb/asm/Item;->longVal:J

    iget v0, p0, Lbsh/org/objectweb/asm/Item;->type:I

    long-to-int v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->hashCode:I

    return-void
.end method
