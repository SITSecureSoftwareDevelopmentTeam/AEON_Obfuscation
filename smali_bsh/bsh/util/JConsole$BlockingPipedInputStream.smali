.class public Lbsh/util/JConsole$BlockingPipedInputStream;
.super Ljava/io/PipedInputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsh/util/JConsole;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockingPipedInputStream"
.end annotation


# instance fields
.field closed:Z


# direct methods
.method public constructor <init>(Ljava/io/PipedOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbsh/util/JConsole$BlockingPipedInputStream;->closed:Z

    invoke-super {p0}, Ljava/io/PipedInputStream;->close()V

    return-void
.end method

.method public declared-synchronized read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbsh/util/JConsole$BlockingPipedInputStream;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :goto_0
    :try_start_1
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    if-gez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v0, 0x2ee

    :try_start_2
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lbsh/util/JConsole$BlockingPipedInputStream;->buffer:[B

    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/PipedInputStream;->out:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    iget-object v2, p0, Lbsh/util/JConsole$BlockingPipedInputStream;->buffer:[B

    array-length v2, v2

    if-lt v1, v2, :cond_2

    const/4 v1, 0x0

    iput v1, p0, Ljava/io/PipedInputStream;->out:I

    :cond_2
    iget v1, p0, Ljava/io/PipedInputStream;->in:I

    iget v2, p0, Ljava/io/PipedInputStream;->out:I

    if-ne v1, v2, :cond_3

    const/4 v1, -0x1

    iput v1, p0, Ljava/io/PipedInputStream;->in:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    monitor-exit p0

    return v0
.end method
