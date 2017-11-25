.class public Lbsh/CollectionManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsh/CollectionManager$BasicBshIterator;
    }
.end annotation


# static fields
.field private static manager:Lbsh/CollectionManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getCollectionManager()Lbsh/CollectionManager;
    .locals 4

    const-class v1, Lbsh/CollectionManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lbsh/CollectionManager;->manager:Lbsh/CollectionManager;

    if-nez v0, :cond_0

    const-string v0, "java.util.Collection"

    invoke-static {v0}, Lbsh/Capabilities;->classExists(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    const-string v0, "bsh.collection.CollectionManagerImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/CollectionManager;

    sput-object v0, Lbsh/CollectionManager;->manager:Lbsh/CollectionManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lbsh/CollectionManager;->manager:Lbsh/CollectionManager;

    if-nez v0, :cond_1

    new-instance v0, Lbsh/CollectionManager;

    invoke-direct {v0}, Lbsh/CollectionManager;-><init>()V

    sput-object v0, Lbsh/CollectionManager;->manager:Lbsh/CollectionManager;

    :cond_1
    sget-object v0, Lbsh/CollectionManager;->manager:Lbsh/CollectionManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "unable to load CollectionManagerImpl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getBshIterator(Ljava/lang/Object;)Lbsh/BshIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lbsh/CollectionManager$BasicBshIterator;

    invoke-direct {v0, p1}, Lbsh/CollectionManager$BasicBshIterator;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getFromMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/Hashtable;

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isBshIterable(Ljava/lang/Object;)Z
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lbsh/CollectionManager;->getBshIterator(Ljava/lang/Object;)Lbsh/BshIterator;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMap(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/util/Hashtable;

    return v0
.end method

.method public putInMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/Hashtable;

    invoke-virtual {p1, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
