.class Lbsh/util/ClassBrowser$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/swing/event/TreeSelectionListener;


# instance fields
.field private final this$0:Lbsh/util/ClassBrowser;


# direct methods
.method constructor <init>(Lbsh/util/ClassBrowser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsh/util/ClassBrowser$1;->this$0:Lbsh/util/ClassBrowser;

    return-void
.end method


# virtual methods
.method public valueChanged(Ljavax/swing/event/TreeSelectionEvent;)V
    .locals 5

    invoke-virtual {p1}, Ljavax/swing/event/TreeSelectionEvent;->getPath()Ljavax/swing/tree/TreePath;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/swing/tree/TreePath;->getPath()[Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x1

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v0, 0x1

    array-length v4, v1

    if-ge v3, v4, :cond_0

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbsh/util/ClassBrowser$1;->this$0:Lbsh/util/ClassBrowser;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbsh/util/ClassBrowser;->setClist(Ljava/lang/String;)V

    return-void
.end method
