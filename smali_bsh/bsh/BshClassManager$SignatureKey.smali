.class Lbsh/BshClassManager$SignatureKey;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsh/BshClassManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SignatureKey"
.end annotation


# instance fields
.field clas:Ljava/lang/Class;

.field hashCode:I

.field methodName:Ljava/lang/String;

.field types:[Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lbsh/BshClassManager$SignatureKey;->hashCode:I

    iput-object p1, p0, Lbsh/BshClassManager$SignatureKey;->clas:Ljava/lang/Class;

    iput-object p2, p0, Lbsh/BshClassManager$SignatureKey;->methodName:Ljava/lang/String;

    iput-object p3, p0, Lbsh/BshClassManager$SignatureKey;->types:[Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    check-cast p1, Lbsh/BshClassManager$SignatureKey;

    iget-object v2, p0, Lbsh/BshClassManager$SignatureKey;->types:[Ljava/lang/Class;

    if-nez v2, :cond_2

    iget-object v2, p1, Lbsh/BshClassManager$SignatureKey;->types:[Ljava/lang/Class;

    if-nez v2, :cond_1

    :goto_0
    move v1, v0

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lbsh/BshClassManager$SignatureKey;->clas:Ljava/lang/Class;

    iget-object v3, p1, Lbsh/BshClassManager$SignatureKey;->clas:Ljava/lang/Class;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lbsh/BshClassManager$SignatureKey;->methodName:Ljava/lang/String;

    iget-object v3, p1, Lbsh/BshClassManager$SignatureKey;->methodName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lbsh/BshClassManager$SignatureKey;->types:[Ljava/lang/Class;

    array-length v2, v2

    iget-object v3, p1, Lbsh/BshClassManager$SignatureKey;->types:[Ljava/lang/Class;

    array-length v3, v3

    if-ne v2, v3, :cond_0

    move v2, v1

    :goto_2
    iget-object v3, p0, Lbsh/BshClassManager$SignatureKey;->types:[Ljava/lang/Class;

    array-length v3, v3

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lbsh/BshClassManager$SignatureKey;->types:[Ljava/lang/Class;

    aget-object v3, v3, v2

    if-nez v3, :cond_4

    iget-object v3, p1, Lbsh/BshClassManager$SignatureKey;->types:[Ljava/lang/Class;

    aget-object v3, v3, v2

    if-nez v3, :cond_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lbsh/BshClassManager$SignatureKey;->types:[Ljava/lang/Class;

    aget-object v3, v3, v2

    iget-object v4, p1, Lbsh/BshClassManager$SignatureKey;->types:[Ljava/lang/Class;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_5
    move v1, v0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lbsh/BshClassManager$SignatureKey;->hashCode:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lbsh/BshClassManager$SignatureKey;->clas:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lbsh/BshClassManager$SignatureKey;->methodName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lbsh/BshClassManager$SignatureKey;->hashCode:I

    iget-object v0, p0, Lbsh/BshClassManager$SignatureKey;->types:[Ljava/lang/Class;

    if-nez v0, :cond_0

    iget v0, p0, Lbsh/BshClassManager$SignatureKey;->hashCode:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lbsh/BshClassManager$SignatureKey;->types:[Ljava/lang/Class;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lbsh/BshClassManager$SignatureKey;->types:[Ljava/lang/Class;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    const/16 v1, 0x15

    :goto_2
    iget v2, p0, Lbsh/BshClassManager$SignatureKey;->hashCode:I

    add-int/lit8 v3, v0, 0x1

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lbsh/BshClassManager$SignatureKey;->hashCode:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lbsh/BshClassManager$SignatureKey;->types:[Ljava/lang/Class;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    iget v0, p0, Lbsh/BshClassManager$SignatureKey;->hashCode:I

    goto :goto_0
.end method
