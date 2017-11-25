.class public Lbsh/collection/CollectionManagerImpl;
.super Lbsh/CollectionManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbsh/CollectionManager;-><init>()V

    return-void
.end method


# virtual methods
.method public getBshIterator(Ljava/lang/Object;)Lbsh/BshIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of v0, p1, Ljava/util/Collection;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/util/Iterator;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lbsh/collection/CollectionIterator;

    invoke-direct {v0, p1}, Lbsh/collection/CollectionIterator;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lbsh/CollectionManager$BasicBshIterator;

    invoke-direct {v0, p1}, Lbsh/CollectionManager$BasicBshIterator;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getFromMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isMap(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lbsh/CollectionManager;->isMap(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public putInMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
