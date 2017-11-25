.class public Lbsh/servlet/SimpleTemplate;
.super Ljava/lang/Object;


# static fields
.field static NO_TEMPLATE:Ljava/lang/String;

.field static cacheTemplates:Z

.field static templateData:Ljava/util/Map;


# instance fields
.field buff:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "NO_TEMPLATE"

    sput-object v0, Lbsh/servlet/SimpleTemplate;->NO_TEMPLATE:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lbsh/servlet/SimpleTemplate;->templateData:Ljava/util/Map;

    const/4 v0, 0x1

    sput-boolean v0, Lbsh/servlet/SimpleTemplate;->cacheTemplates:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lbsh/servlet/SimpleTemplate;->getStringFromStream(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbsh/servlet/SimpleTemplate;->init(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lbsh/servlet/SimpleTemplate;->init(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lbsh/servlet/SimpleTemplate;->getStringFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbsh/servlet/SimpleTemplate;->init(Ljava/lang/String;)V

    return-void
.end method

.method public static getStringFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lbsh/servlet/SimpleTemplate;->getStringFromStream(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringFromStream(Ljava/io/Reader;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTemplate(Ljava/lang/String;)Lbsh/servlet/SimpleTemplate;
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lbsh/servlet/SimpleTemplate;->templateData:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-boolean v2, Lbsh/servlet/SimpleTemplate;->cacheTemplates:Z

    if-nez v2, :cond_1

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lbsh/servlet/SimpleTemplate;->getStringFromStream(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lbsh/servlet/SimpleTemplate;->templateData:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    :goto_0
    if-nez v2, :cond_2

    move-object v0, v1

    :goto_1
    return-object v0

    :catch_0
    move-exception v2

    sget-object v2, Lbsh/servlet/SimpleTemplate;->templateData:Ljava/util/Map;

    sget-object v3, Lbsh/servlet/SimpleTemplate;->NO_TEMPLATE:Ljava/lang/String;

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    goto :goto_0

    :cond_1
    sget-object v2, Lbsh/servlet/SimpleTemplate;->NO_TEMPLATE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v1

    goto :goto_1

    :cond_2
    new-instance v0, Lbsh/servlet/SimpleTemplate;

    invoke-direct {v0, v2}, Lbsh/servlet/SimpleTemplate;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v2, v0

    goto :goto_0
.end method

.method private init(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbsh/servlet/SimpleTemplate;->buff:Ljava/lang/StringBuffer;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/4 v1, 0x1

    aget-object v1, p0, v1

    const/4 v2, 0x2

    aget-object v2, p0, v2

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lbsh/servlet/SimpleTemplate;->getStringFromStream(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lbsh/servlet/SimpleTemplate;

    invoke-direct {v3, v0}, Lbsh/servlet/SimpleTemplate;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Lbsh/servlet/SimpleTemplate;->replace(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Lbsh/servlet/SimpleTemplate;->write(Ljava/io/PrintStream;)V

    return-void
.end method

.method public static setCacheTemplates(Z)V
    .locals 0

    sput-boolean p0, Lbsh/servlet/SimpleTemplate;->cacheTemplates:Z

    return-void
.end method


# virtual methods
.method findTemplate(Ljava/lang/String;)[I
    .locals 11

    const/4 v3, 0x0

    const/4 v10, -0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lbsh/servlet/SimpleTemplate;->buff:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    move v1, v3

    :goto_0
    if-ge v1, v6, :cond_0

    const-string v2, "<!--"

    invoke-virtual {v5, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v10, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    const-string v1, "-->"

    invoke-virtual {v5, v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v10, :cond_0

    const-string v2, "-->"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int v4, v1, v2

    const-string v1, "TEMPLATE-"

    invoke-virtual {v5, v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v10, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    if-le v1, v4, :cond_3

    move v1, v4

    goto :goto_0

    :cond_3
    const-string v2, "TEMPLATE-"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    move v1, v2

    :goto_2
    if-ge v1, v6, :cond_4

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x20

    if-eq v8, v9, :cond_4

    const/16 v9, 0x9

    if-eq v8, v9, :cond_4

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_5

    :cond_4
    if-ge v1, v6, :cond_0

    invoke-virtual {v5, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v7, v0, v3

    const/4 v1, 0x1

    aput v4, v0, v1

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    move v1, v4

    goto :goto_0
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :goto_0
    invoke-virtual {p0, p1}, Lbsh/servlet/SimpleTemplate;->findTemplate(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lbsh/servlet/SimpleTemplate;->buff:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {v1, v2, v0, p2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbsh/servlet/SimpleTemplate;->buff:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/PrintStream;)V
    .locals 1

    invoke-virtual {p0}, Lbsh/servlet/SimpleTemplate;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public write(Ljava/io/PrintWriter;)V
    .locals 1

    invoke-virtual {p0}, Lbsh/servlet/SimpleTemplate;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
