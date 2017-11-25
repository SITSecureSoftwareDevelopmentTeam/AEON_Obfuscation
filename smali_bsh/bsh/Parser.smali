.class public Lbsh/Parser;
.super Ljava/lang/Object;

# interfaces
.implements Lbsh/ParserTreeConstants;
.implements Lbsh/ParserConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsh/Parser$1;,
        Lbsh/Parser$LookaheadSuccess;
    }
.end annotation


# instance fields
.field jj_input_stream:Lbsh/JavaCharStream;

.field private jj_la:I

.field private jj_lastpos:Lbsh/Token;

.field private final jj_ls:Lbsh/Parser$LookaheadSuccess;

.field public jj_nt:Lbsh/Token;

.field private jj_ntk:I

.field private jj_scanpos:Lbsh/Token;

.field private jj_semLA:Z

.field protected jjtree:Lbsh/JJTParserState;

.field public lookingAhead:Z

.field retainComments:Z

.field public token:Lbsh/Token;

.field public token_source:Lbsh/ParserTokenManager;


# direct methods
.method public constructor <init>(Lbsh/ParserTokenManager;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbsh/JJTParserState;

    invoke-direct {v0}, Lbsh/JJTParserState;-><init>()V

    iput-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    iput-boolean v1, p0, Lbsh/Parser;->retainComments:Z

    iput-boolean v1, p0, Lbsh/Parser;->lookingAhead:Z

    new-instance v0, Lbsh/Parser$LookaheadSuccess;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbsh/Parser$LookaheadSuccess;-><init>(Lbsh/Parser$1;)V

    iput-object v0, p0, Lbsh/Parser;->jj_ls:Lbsh/Parser$LookaheadSuccess;

    iput-object p1, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    new-instance v0, Lbsh/Token;

    invoke-direct {v0}, Lbsh/Token;-><init>()V

    iput-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    const/4 v0, -0x1

    iput v0, p0, Lbsh/Parser;->jj_ntk:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbsh/JJTParserState;

    invoke-direct {v0}, Lbsh/JJTParserState;-><init>()V

    iput-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    iput-boolean v1, p0, Lbsh/Parser;->retainComments:Z

    iput-boolean v1, p0, Lbsh/Parser;->lookingAhead:Z

    new-instance v0, Lbsh/Parser$LookaheadSuccess;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbsh/Parser$LookaheadSuccess;-><init>(Lbsh/Parser$1;)V

    iput-object v0, p0, Lbsh/Parser;->jj_ls:Lbsh/Parser$LookaheadSuccess;

    new-instance v0, Lbsh/JavaCharStream;

    invoke-direct {v0, p1, v2, v2}, Lbsh/JavaCharStream;-><init>(Ljava/io/InputStream;II)V

    iput-object v0, p0, Lbsh/Parser;->jj_input_stream:Lbsh/JavaCharStream;

    new-instance v0, Lbsh/ParserTokenManager;

    iget-object v1, p0, Lbsh/Parser;->jj_input_stream:Lbsh/JavaCharStream;

    invoke-direct {v0, v1}, Lbsh/ParserTokenManager;-><init>(Lbsh/JavaCharStream;)V

    iput-object v0, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    new-instance v0, Lbsh/Token;

    invoke-direct {v0}, Lbsh/Token;-><init>()V

    iput-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    const/4 v0, -0x1

    iput v0, p0, Lbsh/Parser;->jj_ntk:I

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbsh/JJTParserState;

    invoke-direct {v0}, Lbsh/JJTParserState;-><init>()V

    iput-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    iput-boolean v1, p0, Lbsh/Parser;->retainComments:Z

    iput-boolean v1, p0, Lbsh/Parser;->lookingAhead:Z

    new-instance v0, Lbsh/Parser$LookaheadSuccess;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbsh/Parser$LookaheadSuccess;-><init>(Lbsh/Parser$1;)V

    iput-object v0, p0, Lbsh/Parser;->jj_ls:Lbsh/Parser$LookaheadSuccess;

    new-instance v0, Lbsh/JavaCharStream;

    invoke-direct {v0, p1, v2, v2}, Lbsh/JavaCharStream;-><init>(Ljava/io/Reader;II)V

    iput-object v0, p0, Lbsh/Parser;->jj_input_stream:Lbsh/JavaCharStream;

    new-instance v0, Lbsh/ParserTokenManager;

    iget-object v1, p0, Lbsh/Parser;->jj_input_stream:Lbsh/JavaCharStream;

    invoke-direct {v0, v1}, Lbsh/ParserTokenManager;-><init>(Lbsh/JavaCharStream;)V

    iput-object v0, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    new-instance v0, Lbsh/Token;

    invoke-direct {v0}, Lbsh/Token;-><init>()V

    iput-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    const/4 v0, -0x1

    iput v0, p0, Lbsh/Parser;->jj_ntk:I

    return-void
.end method

.method private final jj_2_1(I)Z
    .locals 2

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_1()Z
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final jj_2_10(I)Z
    .locals 2

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_10()Z
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final jj_2_11(I)Z
    .locals 2

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_11()Z
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final jj_2_12(I)Z
    .locals 2

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_12()Z
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final jj_2_13(I)Z
    .locals 2

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_13()Z
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final jj_2_14(I)Z
    .locals 2

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_14()Z
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final jj_2_15(I)Z
    .locals 2

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_15()Z
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final jj_2_16(I)Z
    .locals 2

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_16()Z
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final jj_2_17(I)Z
    .locals 2

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_17()Z
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final jj_2_18(I)Z
    .locals 2

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_18()Z
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final jj_2_19(I)Z
    .locals 2

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_19()Z
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final jj_2_2(I)Z
    .locals 2

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_2()Z
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final jj_2_20(I)Z
    .locals 2

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_20()Z
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final jj_2_21(I)Z
    .locals 2

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_21()Z
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final jj_2_22(I)Z
    .locals 2

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_22()Z
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final jj_2_23(I)Z
    .locals 2

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_23()Z
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final jj_2_24(I)Z
    .locals 2

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_24()Z
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final jj_2_25(I)Z
    .locals 2

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_25()Z
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final jj_2_26(I)Z
    .locals 2

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_26()Z
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final jj_2_27(I)Z
    .locals 2

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_27()Z
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final jj_2_28(I)Z
    .locals 2

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_28()Z
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final jj_2_29(I)Z
    .locals 2

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_29()Z
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final jj_2_3(I)Z
    .locals 2

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_3()Z
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final jj_2_30(I)Z
    .locals 2

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_30()Z
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final jj_2_31(I)Z
    .locals 2

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_31()Z
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final jj_2_4(I)Z
    .locals 2

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_4()Z
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final jj_2_5(I)Z
    .locals 2

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_5()Z
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final jj_2_6(I)Z
    .locals 2

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_6()Z
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final jj_2_7(I)Z
    .locals 2

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_7()Z
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final jj_2_8(I)Z
    .locals 2

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_8()Z
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final jj_2_9(I)Z
    .locals 2

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_9()Z
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final jj_3R_100()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_130()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_101()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_37()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_102()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_32()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_103()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_29()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_104()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3_16()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_131()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_132()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_133()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_105()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_129()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_106()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_134()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_107()Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_33()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_34()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_108()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_135()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_156()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_109()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3_5()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_136()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_110()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x4f

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_109()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_111()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x4f

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_29()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_112()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_113()Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x32

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x4a

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_183()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x4b

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_114()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_45()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_184()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_115()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x3b

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_45()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_116()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x15

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_45()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x3b

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x4e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_117()Z
    .locals 4

    const/16 v3, 0x4e

    const/4 v0, 0x1

    const/16 v1, 0x1e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_185()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_2
    invoke-direct {p0, v3}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_186()Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_3
    invoke-direct {p0, v3}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_187()Z

    move-result v2

    if-eqz v2, :cond_4

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_4
    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_45()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_118()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3_30()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_137()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_119()Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x45

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_2
    const/16 v1, 0x4e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_120()Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x13

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x45

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_2
    const/16 v1, 0x4e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_121()Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x2e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_188()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_2
    const/16 v1, 0x4e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_122()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x33

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_38()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_123()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x35

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x4e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_124()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x38

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_38()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_189()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_190()Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_125()Z
    .locals 1

    const/16 v0, 0x25

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_126()Z
    .locals 1

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_127()Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_42()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x45

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_128()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x22

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x68

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x4e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_129()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_138()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_139()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_140()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_141()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_142()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_143()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_144()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_130()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3_18()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_145()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_131()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x4c

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x4d

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_132()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x50

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x45

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_146()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_133()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x4a

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x4b

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_134()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_147()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_135()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_148()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_159()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_136()Z
    .locals 1

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_137()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x1e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_32()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x45

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x59

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_45()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_138()Z
    .locals 1

    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_139()Z
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_140()Z
    .locals 1

    const/16 v0, 0x42

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_141()Z
    .locals 1

    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_142()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_149()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_143()Z
    .locals 1

    const/16 v0, 0x29

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_144()Z
    .locals 1

    const/16 v0, 0x39

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_145()Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x28

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_29()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_151()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_152()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_146()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_69()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_147()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x4f

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_148()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_153()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_162()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_149()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_154()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_155()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_150()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3_21()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_157()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_151()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_150()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_152()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_69()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3_17()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_153()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_158()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_165()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_154()Z
    .locals 1

    const/16 v0, 0x37

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_155()Z
    .locals 1

    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_156()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x58

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x59

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_108()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_157()Z
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_160()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_160()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_97()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_158()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_161()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_167()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_159()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x60

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x61

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_148()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_160()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x4c

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x4d

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_161()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_164()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_169()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_162()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x62

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x63

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_153()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_163()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_31()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3_4()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_164()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_166()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_171()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_165()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x6c

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x6d

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_158()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_166()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_168()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_179()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_167()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x6e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_161()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_168()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_170()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_182()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_169()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x6a

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x6b

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_164()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_170()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_178()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_192()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_171()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x5a

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x5f

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_166()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_172()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x19

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_29()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_173()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x21

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_76()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_174()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x36

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_76()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_175()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_38()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_176()Z
    .locals 2

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_180()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_177()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x4f

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_176()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_178()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_181()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_200()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_179()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x23

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_32()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_180()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x51

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_31()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_181()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_191()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_209()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_182()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x54

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x55

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x52

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x53

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x5b

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x5c

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x5d

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x5e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_170()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_183()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_193()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3_29()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_184()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x17

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_45()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_185()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_194()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_186()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_187()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_195()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_188()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_189()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_109()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_38()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_190()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_38()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_191()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_196()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_197()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_198()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_199()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_192()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x70

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x71

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x72

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x73

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x74

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x75

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_178()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_193()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_201()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_202()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_194()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_203()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_204()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_195()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_205()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_196()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x66

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x67

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_191()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_197()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_206()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_198()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_207()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_199()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_208()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_200()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x66

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x67

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_181()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_201()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0xf

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x59

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_202()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x14

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x59

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_203()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_93()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_204()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_205()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_205()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_112()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_210()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_206()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x64

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_33()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_207()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x65

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_33()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_208()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_211()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_212()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_213()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_209()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x68

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x69

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x6f

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_191()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_210()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x4f

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_112()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_211()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x57

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x56

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_191()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_212()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_214()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_213()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_215()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_214()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_216()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_217()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_215()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_218()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_219()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_216()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_32()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_191()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_217()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_32()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_208()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_218()Z
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_33()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x65

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_219()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_33()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_28()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_46()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_47()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_48()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_49()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3_28()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_50()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_51()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_52()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_29()Z
    .locals 2

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3_7()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_30()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x50

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x68

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_31()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_53()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_54()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_32()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_55()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_56()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3_6()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_33()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_57()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_58()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_34()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x51

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x78

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x79

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x7f

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x76

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x77

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x7a

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x7e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x7c

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x80

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x81

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x82

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x83

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x84

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v0, 0x85

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_35()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3_10()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_59()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_60()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_36()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_61()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_62()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_63()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_64()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_65()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_66()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_67()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_68()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_37()Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_29()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_69()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_38()Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x4a

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3_23()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x4b

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_39()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_70()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_71()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_40()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x45

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x59

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_45()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_41()Z
    .locals 2

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_72()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_42()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_73()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_74()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_43()Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_75()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_2
    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_44()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x36

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_76()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_45()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3_22()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_77()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v3, 0x4e

    invoke-direct {p0, v3}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_78()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_79()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_80()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_81()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_82()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-boolean v0, p0, Lbsh/Parser;->lookingAhead:Z

    invoke-virtual {p0}, Lbsh/Parser;->isRegularForStatement()Z

    move-result v3

    iput-boolean v3, p0, Lbsh/Parser;->jj_semLA:Z

    iput-boolean v1, p0, Lbsh/Parser;->lookingAhead:Z

    iget-boolean v3, p0, Lbsh/Parser;->jj_semLA:Z

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_83()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iput-object v2, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_84()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_85()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_86()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_87()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_88()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_89()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_90()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private final jj_3R_46()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_91()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_47()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_92()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_48()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_92()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_49()Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_93()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x4e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_50()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_94()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_51()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_95()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_52()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_96()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_53()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_97()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_54()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_55()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_36()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_56()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_29()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_57()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_98()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_99()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_100()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_101()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_102()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_103()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_58()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_104()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_59()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_29()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x4c

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x4d

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_60()Z
    .locals 4

    const/16 v3, 0x48

    const/4 v0, 0x1

    invoke-direct {p0, v3}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_29()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x57

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x56

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0, v3}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x45

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x28

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_105()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_61()Z
    .locals 1

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_62()Z
    .locals 1

    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_63()Z
    .locals 1

    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_64()Z
    .locals 1

    const/16 v0, 0x2f

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_65()Z
    .locals 1

    const/16 v0, 0x24

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_66()Z
    .locals 1

    const/16 v0, 0x26

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_67()Z
    .locals 1

    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_68()Z
    .locals 1

    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_69()Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_106()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_2
    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_70()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_107()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_71()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_108()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_72()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x2b

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x2c

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x2d

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x33

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x1b

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x27

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x34

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x3a

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x30

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v0, 0x31

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_73()Z
    .locals 1

    const/16 v0, 0x39

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_74()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_32()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_75()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_109()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_110()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_76()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_29()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_111()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_77()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_38()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_78()Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_112()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x4e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_79()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_113()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_80()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_114()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_81()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_115()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_82()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_116()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_83()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_117()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_84()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_118()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_85()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_119()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_86()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_120()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_87()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_121()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_88()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_122()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_89()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_123()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_90()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_124()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_91()Z
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_41()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0xd

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_125()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/16 v1, 0x45

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_172()Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_3
    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_173()Z

    move-result v2

    if-eqz v2, :cond_4

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_4
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_38()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_92()Z
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_41()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_126()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_127()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_43()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_174()Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_3
    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_175()Z

    move-result v2

    if-eqz v2, :cond_4

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x4e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_93()Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_41()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_32()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_176()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_177()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_94()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3_3()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_128()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_95()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x2a

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_29()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_96()Z
    .locals 1

    const/16 v0, 0x44

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_97()Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x4a

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_163()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_2
    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x4f

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_3
    const/16 v1, 0x4b

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_98()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_129()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_99()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3_1()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_28()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3_10()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_36()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3_11()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_29()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x4c

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3_12()Z
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_33()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x65

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3_13()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_36()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3_14()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_37()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3_15()Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_32()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x50

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3_16()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x50

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3_17()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_38()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3_18()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x28

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_36()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_150()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3_19()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x4c

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x4d

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3_2()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x45

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3_20()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x4c

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x4d

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3_21()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3_19()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3_19()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_1
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3_20()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3_22()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_40()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3_23()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_28()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3_24()Z
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_41()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0xd

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x25

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3_25()Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_41()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_42()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x45

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3_26()Z
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_41()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x45

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_43()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_44()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_2
    const/16 v1, 0x4a

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3_27()Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_41()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_32()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x45

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3_28()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_45()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3_29()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_28()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3_3()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x30

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_0
    const/16 v1, 0x22

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_29()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_30()Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_3
    const/16 v1, 0x4e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3_30()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x1e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x45

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x59

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_45()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3_31()Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_41()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_32()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x45

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3_4()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x4f

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_31()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3_5()Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_32()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x45

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3_6()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x4c

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x4d

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3_7()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x50

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x45

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3_8()Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_33()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_34()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3_9()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_35()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_consume_token(I)Lbsh/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iget-object v1, v0, Lbsh/Token;->next:Lbsh/Token;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iget-object v1, v1, Lbsh/Token;->next:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lbsh/Parser;->jj_ntk:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iget v1, v1, Lbsh/Token;->kind:I

    if-ne v1, p1, :cond_1

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    return-object v0

    :cond_0
    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iget-object v2, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    invoke-virtual {v2}, Lbsh/ParserTokenManager;->getNextToken()Lbsh/Token;

    move-result-object v2

    iput-object v2, v1, Lbsh/Token;->next:Lbsh/Token;

    iput-object v2, p0, Lbsh/Parser;->token:Lbsh/Token;

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->generateParseException()Lbsh/ParseException;

    move-result-object v0

    throw v0
.end method

.method private final jj_ntk()I
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iget-object v0, v0, Lbsh/Token;->next:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_nt:Lbsh/Token;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iget-object v1, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    invoke-virtual {v1}, Lbsh/ParserTokenManager;->getNextToken()Lbsh/Token;

    move-result-object v1

    iput-object v1, v0, Lbsh/Token;->next:Lbsh/Token;

    iget v0, v1, Lbsh/Token;->kind:I

    iput v0, p0, Lbsh/Parser;->jj_ntk:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_nt:Lbsh/Token;

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_0
.end method

.method private final jj_scan_token(I)Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iget-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lbsh/Parser;->jj_la:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbsh/Parser;->jj_la:I

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iget-object v0, v0, Lbsh/Token;->next:Lbsh/Token;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iget-object v1, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    invoke-virtual {v1}, Lbsh/ParserTokenManager;->getNextToken()Lbsh/Token;

    move-result-object v1

    iput-object v1, v0, Lbsh/Token;->next:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :goto_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iget v0, v0, Lbsh/Token;->kind:I

    if-eq v0, p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iget-object v0, v0, Lbsh/Token;->next:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iget-object v0, v0, Lbsh/Token;->next:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    goto :goto_0

    :cond_2
    iget v0, p0, Lbsh/Parser;->jj_la:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iget-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lbsh/Parser;->jj_ls:Lbsh/Parser$LookaheadSuccess;

    throw v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    aget-object v2, p0, v0

    const-string v3, "-p"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_2

    new-instance v3, Ljava/io/FileReader;

    aget-object v4, p0, v0

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v4, Lbsh/Parser;

    invoke-direct {v4, v3}, Lbsh/Parser;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v4, v1}, Lbsh/Parser;->setRetainComments(Z)V

    :cond_0
    :goto_1
    invoke-virtual {v4}, Lbsh/Parser;->Line()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Lbsh/Parser;->popNode()Lbsh/SimpleNode;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    move v2, v0

    goto :goto_0
.end method


# virtual methods
.method public final AdditiveExpression()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v5, -0x1

    invoke-virtual {p0}, Lbsh/Parser;->MultiplicativeExpression()V

    :goto_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1
    packed-switch v0, :pswitch_data_0

    return-void

    :cond_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_2
    packed-switch v0, :pswitch_data_1

    invoke-direct {p0, v5}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_2

    :pswitch_1
    const/16 v0, 0x66

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    :goto_3
    invoke-virtual {p0}, Lbsh/Parser;->MultiplicativeExpression()V

    new-instance v2, Lbsh/BSHBinaryExpression;

    const/16 v1, 0xf

    invoke-direct {v2, v1}, Lbsh/BSHBinaryExpression;-><init>(I)V

    const/4 v1, 0x1

    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v2}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_0
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v2, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v2, v6}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_2
    throw v0

    :pswitch_2
    const/16 v0, 0x67

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x66
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final AllocationExpression()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, -0x1

    new-instance v3, Lbsh/BSHAllocationExpression;

    const/16 v0, 0x17

    invoke-direct {v3, v0}, Lbsh/BSHAllocationExpression;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/4 v0, 0x2

    :try_start_0
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_18(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->PrimitiveType()V

    invoke-virtual {p0}, Lbsh/Parser;->ArrayDimensions()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    return-void

    :cond_1
    :try_start_1
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1
    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v1, 0x0

    :try_start_3
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_5

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_2
    throw v0

    :cond_3
    :try_start_4
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1

    :pswitch_0
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_3
    sparse-switch v0, :sswitch_data_0

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_2

    :cond_4
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_3

    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->ArrayDimensions()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lbsh/Parser;->Arguments()V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_17(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbsh/Parser;->Block()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :cond_5
    :try_start_5
    instance-of v4, v0, Lbsh/ParseException;

    if-eqz v4, :cond_6

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_6
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x48 -> :sswitch_1
        0x4c -> :sswitch_0
    .end sparse-switch
.end method

.method public final AmbiguousName()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v3, Lbsh/BSHAmbiguousName;

    const/16 v0, 0xc

    invoke-direct {v3, v0}, Lbsh/BSHAmbiguousName;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/16 v0, 0x45

    :try_start_0
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuffer;

    iget-object v0, v0, Lbsh/Token;->image:Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_7(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, v0, Lbsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move v1, v2

    :goto_1
    if-eqz v1, :cond_0

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_0
    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lbsh/BSHAmbiguousName;->text:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public final AndExpression()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v5, -0x1

    invoke-virtual {p0}, Lbsh/Parser;->EqualityExpression()V

    :goto_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1
    packed-switch v0, :pswitch_data_0

    return-void

    :cond_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_2
    packed-switch v0, :pswitch_data_1

    invoke-direct {p0, v5}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_2

    :pswitch_1
    const/16 v0, 0x6a

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    :goto_3
    invoke-virtual {p0}, Lbsh/Parser;->EqualityExpression()V

    new-instance v2, Lbsh/BSHBinaryExpression;

    const/16 v1, 0xf

    invoke-direct {v2, v1}, Lbsh/BSHBinaryExpression;-><init>(I)V

    const/4 v1, 0x1

    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v2}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_0
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v2, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v2, v6}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_2
    throw v0

    :pswitch_2
    const/16 v0, 0x6b

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x6a
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6a
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final ArgumentList()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    :goto_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1
    packed-switch v0, :pswitch_data_0

    return-void

    :cond_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1

    :pswitch_0
    const/16 v0, 0x4f

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_0
    .end packed-switch
.end method

.method public final Arguments()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v3, Lbsh/BSHArguments;

    const/16 v0, 0x16

    invoke-direct {v3, v0}, Lbsh/BSHArguments;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/16 v0, 0x48

    :try_start_0
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    :goto_1
    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->ArgumentList()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v1, 0x0

    :try_start_3
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_2

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_1

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_1
    throw v0

    :cond_2
    :try_start_4
    instance-of v4, v0, Lbsh/ParseException;

    if-eqz v4, :cond_3

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_3
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1d -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2f -> :sswitch_0
        0x37 -> :sswitch_0
        0x39 -> :sswitch_0
        0x3c -> :sswitch_0
        0x40 -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x45 -> :sswitch_0
        0x48 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ArrayDimensions()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, -0x1

    new-instance v3, Lbsh/BSHArrayDimensions;

    const/16 v0, 0x18

    invoke-direct {v3, v0}, Lbsh/BSHArrayDimensions;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/4 v0, 0x2

    :try_start_0
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_21(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    const/16 v0, 0x4d

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {v3}, Lbsh/BSHArrayDimensions;->addDefinedDimension()V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_19(I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_20(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x4d

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {v3}, Lbsh/BSHArrayDimensions;->addUndefinedDimension()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    :try_start_2
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_6

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_1

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_1
    throw v0

    :cond_2
    :try_start_3
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_2
    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_1

    :cond_3
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_2

    :pswitch_0
    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x4d

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {v3}, Lbsh/BSHArrayDimensions;->addUndefinedDimension()V

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_3
    packed-switch v0, :pswitch_data_1

    invoke-virtual {p0}, Lbsh/Parser;->ArrayInitializer()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    return-void

    :cond_5
    :try_start_4
    iget v0, p0, Lbsh/Parser;->jj_ntk:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :cond_6
    :try_start_5
    instance-of v4, v0, Lbsh/ParseException;

    if-eqz v4, :cond_7

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_7
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :pswitch_data_0
    .packed-switch 0x4c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4c
        :pswitch_0
    .end packed-switch
.end method

.method public final ArrayInitializer()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v1, -0x1

    const/4 v2, 0x1

    new-instance v3, Lbsh/BSHArrayInitializer;

    const/4 v0, 0x6

    invoke-direct {v3, v0}, Lbsh/BSHArrayInitializer;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/16 v0, 0x4a

    :try_start_0
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    :cond_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1
    packed-switch v0, :pswitch_data_0

    :goto_2
    const/16 v0, 0x4b

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    return-void

    :cond_1
    :try_start_1
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->VariableInitializer()V

    :goto_3
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_4(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4f

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->VariableInitializer()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v1, 0x0

    :try_start_3
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_4

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_2

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_2
    throw v0

    :cond_3
    :try_start_4
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1

    :pswitch_0
    const/16 v0, 0x4f

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_4

    :cond_4
    :try_start_5
    instance-of v4, v0, Lbsh/ParseException;

    if-eqz v4, :cond_5

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_5
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1d -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2f -> :sswitch_0
        0x37 -> :sswitch_0
        0x39 -> :sswitch_0
        0x3c -> :sswitch_0
        0x40 -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x45 -> :sswitch_0
        0x48 -> :sswitch_0
        0x4a -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_0
    .end packed-switch
.end method

.method public final Assignment()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v3, Lbsh/BSHAssignment;

    const/16 v0, 0xd

    invoke-direct {v3, v0}, Lbsh/BSHAssignment;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_0
    invoke-virtual {p0}, Lbsh/Parser;->PrimaryExpression()V

    invoke-virtual {p0}, Lbsh/Parser;->AssignmentOperator()I

    move-result v0

    iput v0, v3, Lbsh/BSHAssignment;->operator:I

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    :try_start_2
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_1

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :goto_0
    if-eqz v1, :cond_0

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_0
    throw v0

    :cond_1
    :try_start_3
    instance-of v4, v0, Lbsh/ParseException;

    if-eqz v4, :cond_2

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_2
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_0
.end method

.method public final AssignmentOperator()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v1, -0x1

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_0

    :sswitch_0
    const/16 v0, 0x51

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/Parser;->getToken(I)Lbsh/Token;

    move-result-object v0

    iget v0, v0, Lbsh/Token;->kind:I

    return v0

    :sswitch_1
    const/16 v0, 0x78

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_1

    :sswitch_2
    const/16 v0, 0x79

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_1

    :sswitch_3
    const/16 v0, 0x7f

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_1

    :sswitch_4
    const/16 v0, 0x76

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_1

    :sswitch_5
    const/16 v0, 0x77

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_1

    :sswitch_6
    const/16 v0, 0x7a

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_1

    :sswitch_7
    const/16 v0, 0x7e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_1

    :sswitch_8
    const/16 v0, 0x7c

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_1

    :sswitch_9
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_1

    :sswitch_a
    const/16 v0, 0x81

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_1

    :sswitch_b
    const/16 v0, 0x82

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_1

    :sswitch_c
    const/16 v0, 0x83

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_1

    :sswitch_d
    const/16 v0, 0x84

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_1

    :sswitch_e
    const/16 v0, 0x85

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x51 -> :sswitch_0
        0x76 -> :sswitch_4
        0x77 -> :sswitch_5
        0x78 -> :sswitch_1
        0x79 -> :sswitch_2
        0x7a -> :sswitch_6
        0x7c -> :sswitch_8
        0x7e -> :sswitch_7
        0x7f -> :sswitch_3
        0x80 -> :sswitch_9
        0x81 -> :sswitch_a
        0x82 -> :sswitch_b
        0x83 -> :sswitch_c
        0x84 -> :sswitch_d
        0x85 -> :sswitch_e
    .end sparse-switch
.end method

.method public final Block()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v3, Lbsh/BSHBlock;

    const/16 v0, 0x19

    invoke-direct {v3, v0}, Lbsh/BSHBlock;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/16 v0, 0x4a

    :try_start_0
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_23(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbsh/Parser;->BlockStatement()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    :try_start_2
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_2

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_0

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_0
    throw v0

    :cond_1
    const/16 v0, 0x4b

    :try_start_3
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    return-void

    :cond_2
    :try_start_4
    instance-of v4, v0, Lbsh/ParseException;

    if-eqz v4, :cond_3

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_3
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_1
.end method

.method public final BlockStatement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, -0x1

    const v1, 0x7fffffff

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_2_24(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbsh/Parser;->ClassDeclaration()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v1}, Lbsh/Parser;->jj_2_25(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbsh/Parser;->MethodDeclaration()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lbsh/Parser;->jj_2_26(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lbsh/Parser;->MethodDeclaration()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lbsh/Parser;->jj_2_27(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lbsh/Parser;->TypedVariableDeclaration()V

    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_28(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lbsh/Parser;->Statement()V

    goto :goto_0

    :cond_4
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v2, :cond_5

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1
    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_5
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1

    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->ImportDeclaration()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lbsh/Parser;->PackageDeclaration()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lbsh/Parser;->FormalComment()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2a -> :sswitch_1
        0x30 -> :sswitch_0
        0x44 -> :sswitch_2
    .end sparse-switch
.end method

.method public final BooleanLiteral()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v1, -0x1

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_0

    :sswitch_0
    const/16 v0, 0x37

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/4 v0, 0x1

    :goto_1
    return v0

    :sswitch_1
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_1
        0x37 -> :sswitch_0
    .end sparse-switch
.end method

.method public final BreakStatement()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v3, Lbsh/BSHReturnStatement;

    const/16 v0, 0x23

    invoke-direct {v3, v0}, Lbsh/BSHReturnStatement;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/16 v0, 0xc

    :try_start_0
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    const/16 v0, 0xc

    iput v0, v3, Lbsh/BSHReturnStatement;->kind:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_0
    :try_start_2
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move v1, v2

    :goto_2
    if-eqz v1, :cond_1

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x45
        :pswitch_0
    .end packed-switch
.end method

.method public final CastExpression()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v1, -0x1

    const/4 v2, 0x1

    new-instance v3, Lbsh/BSHCastExpression;

    const/16 v0, 0x11

    invoke-direct {v3, v0}, Lbsh/BSHCastExpression;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const v0, 0x7fffffff

    :try_start_0
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_13(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Type()V

    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->UnaryExpression()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1
    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v1, 0x0

    :try_start_3
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_3

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_1

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_1
    throw v0

    :cond_2
    :try_start_4
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1

    :pswitch_0
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Type()V

    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->UnaryExpressionNotPlusMinus()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_2

    :cond_3
    :try_start_5
    instance-of v4, v0, Lbsh/ParseException;

    if-eqz v4, :cond_4

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_4
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    nop

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
    .end packed-switch
.end method

.method public final CastLookahead()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/16 v2, 0x48

    const/4 v1, -0x1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_10(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->PrimitiveType()V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_11(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V

    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x4d

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_0

    :cond_1
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1
    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_2
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V

    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_2
    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_3
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_2

    :sswitch_0
    const/16 v0, 0x57

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x56

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lbsh/Parser;->Literal()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_5
        0x28 -> :sswitch_4
        0x29 -> :sswitch_5
        0x37 -> :sswitch_5
        0x39 -> :sswitch_5
        0x3c -> :sswitch_5
        0x40 -> :sswitch_5
        0x42 -> :sswitch_5
        0x43 -> :sswitch_5
        0x45 -> :sswitch_3
        0x48 -> :sswitch_2
        0x56 -> :sswitch_1
        0x57 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ClassDeclaration()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v6, -0x1

    const/4 v2, 0x1

    new-instance v4, Lbsh/BSHClassDeclaration;

    invoke-direct {v4, v2}, Lbsh/BSHClassDeclaration;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v4}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lbsh/Parser;->Modifiers(IZ)Lbsh/Modifiers;

    move-result-object v1

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v6, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :catch_0
    move-exception v0

    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    :try_start_1
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v4}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_2
    :try_start_2
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_5

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v3, :cond_0

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v4, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_0
    throw v0

    :cond_1
    :try_start_3
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_0

    :sswitch_0
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    :goto_4
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v5

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v6, :cond_2

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_5
    packed-switch v0, :pswitch_data_0

    :goto_6
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v6, :cond_3

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_7
    packed-switch v0, :pswitch_data_1

    :goto_8
    invoke-virtual {p0}, Lbsh/Parser;->Block()V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v6, 0x1

    invoke-virtual {v0, v4, v6}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iput-object v1, v4, Lbsh/BSHClassDeclaration;->modifiers:Lbsh/Modifiers;

    iget-object v0, v5, Lbsh/Token;->image:Ljava/lang/String;

    iput-object v0, v4, Lbsh/BSHClassDeclaration;->name:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :sswitch_1
    const/16 v0, 0x25

    :try_start_5
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/4 v0, 0x1

    iput-boolean v0, v4, Lbsh/BSHClassDeclaration;->isInterface:Z

    goto :goto_4

    :catchall_1
    move-exception v0

    move v3, v2

    goto :goto_3

    :cond_2
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_5

    :pswitch_0
    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V

    const/4 v0, 0x1

    iput-boolean v0, v4, Lbsh/BSHClassDeclaration;->extend:Z

    goto :goto_6

    :cond_3
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_7

    :pswitch_1
    const/16 v0, 0x21

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->NameList()I

    move-result v0

    iput v0, v4, Lbsh/BSHClassDeclaration;->numInterfaces:I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_8

    :cond_4
    :try_start_6
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3}, Lbsh/JJTParserState;->popNode()Lbsh/Node;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move v3, v1

    goto :goto_2

    :cond_5
    :try_start_7
    instance-of v1, v0, Lbsh/ParseException;

    if-eqz v1, :cond_6

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_6
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_2
    move-exception v0

    move v3, v1

    goto :goto_3

    :catch_1
    move-exception v0

    move v1, v3

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x25 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_1
    .end packed-switch
.end method

.method public final ConditionalAndExpression()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v5, -0x1

    invoke-virtual {p0}, Lbsh/Parser;->InclusiveOrExpression()V

    :goto_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1
    packed-switch v0, :pswitch_data_0

    return-void

    :cond_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_2
    packed-switch v0, :pswitch_data_1

    invoke-direct {p0, v5}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_2

    :pswitch_1
    const/16 v0, 0x62

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    :goto_3
    invoke-virtual {p0}, Lbsh/Parser;->InclusiveOrExpression()V

    new-instance v2, Lbsh/BSHBinaryExpression;

    const/16 v1, 0xf

    invoke-direct {v2, v1}, Lbsh/BSHBinaryExpression;-><init>(I)V

    const/4 v1, 0x1

    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v2}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_0
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v2, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v2, v6}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_2
    throw v0

    :pswitch_2
    const/16 v0, 0x63

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x62
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x62
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final ConditionalExpression()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v4, 0x3

    invoke-virtual {p0}, Lbsh/Parser;->ConditionalOrExpression()V

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x58

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    const/16 v0, 0x59

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v2, Lbsh/BSHTernaryExpression;

    const/16 v0, 0xe

    invoke-direct {v2, v0}, Lbsh/BSHTernaryExpression;-><init>(I)V

    const/4 v1, 0x1

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v2}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_0
    invoke-virtual {p0}, Lbsh/Parser;->ConditionalExpression()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v2, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v2}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    const/4 v1, 0x0

    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_2

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v2, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_1
    throw v0

    :cond_2
    :try_start_2
    instance-of v3, v0, Lbsh/ParseException;

    if-eqz v3, :cond_3

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_3
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    :pswitch_data_0
    .packed-switch 0x58
        :pswitch_0
    .end packed-switch
.end method

.method public final ConditionalOrExpression()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v5, -0x1

    invoke-virtual {p0}, Lbsh/Parser;->ConditionalAndExpression()V

    :goto_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1
    packed-switch v0, :pswitch_data_0

    return-void

    :cond_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_2
    packed-switch v0, :pswitch_data_1

    invoke-direct {p0, v5}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_2

    :pswitch_1
    const/16 v0, 0x60

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    :goto_3
    invoke-virtual {p0}, Lbsh/Parser;->ConditionalAndExpression()V

    new-instance v2, Lbsh/BSHBinaryExpression;

    const/16 v1, 0xf

    invoke-direct {v2, v1}, Lbsh/BSHBinaryExpression;-><init>(I)V

    const/4 v1, 0x1

    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v2}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_0
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v2, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v2, v6}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_2
    throw v0

    :pswitch_2
    const/16 v0, 0x61

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x60
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final ContinueStatement()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v3, Lbsh/BSHReturnStatement;

    const/16 v0, 0x23

    invoke-direct {v3, v0}, Lbsh/BSHReturnStatement;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/16 v0, 0x13

    :try_start_0
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    const/16 v0, 0x13

    iput v0, v3, Lbsh/BSHReturnStatement;->kind:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_0
    :try_start_2
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move v1, v2

    :goto_2
    if-eqz v1, :cond_1

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x45
        :pswitch_0
    .end packed-switch
.end method

.method public final DoStatement()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v4, Lbsh/BSHWhileStatement;

    const/16 v0, 0x1e

    invoke-direct {v4, v0}, Lbsh/BSHWhileStatement;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v4}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/16 v0, 0x15

    :try_start_0
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Statement()V

    const/16 v0, 0x3b

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    const/4 v0, 0x1

    iput-boolean v0, v4, Lbsh/BSHWhileStatement;->isDoStatement:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    return-void

    :catch_0
    move-exception v0

    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    :try_start_2
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v4}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    move v1, v2

    :goto_1
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_0

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v4, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_0
    throw v0

    :cond_1
    :try_start_3
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    goto :goto_1

    :cond_2
    instance-of v2, v0, Lbsh/ParseException;

    if-eqz v2, :cond_3

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_3
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_1
    move-exception v0

    move v1, v3

    goto :goto_2

    :catchall_2
    move-exception v0

    move v1, v2

    goto :goto_2

    :catch_1
    move-exception v0

    move v1, v2

    goto :goto_0
.end method

.method public final EmptyStatement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    return-void
.end method

.method public final EnhancedForStatement()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v4, Lbsh/BSHEnhancedForStatement;

    const/16 v0, 0x20

    invoke-direct {v4, v0}, Lbsh/BSHEnhancedForStatement;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v4}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/4 v0, 0x4

    :try_start_0
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_30(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    const/16 v1, 0x59

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Statement()V

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget-object v0, v0, Lbsh/Token;->image:Ljava/lang/String;

    iput-object v0, v4, Lbsh/BSHEnhancedForStatement;->varName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_2
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1
    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    move-exception v0

    move v1, v3

    :goto_2
    if-eqz v1, :cond_3

    :try_start_3
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v4}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_3
    :try_start_4
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v2, :cond_1

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v4, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_1
    throw v0

    :cond_2
    :try_start_5
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1

    :pswitch_0
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Type()V

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    const/16 v1, 0x59

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Statement()V

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget-object v0, v0, Lbsh/Token;->image:Ljava/lang/String;

    iput-object v0, v4, Lbsh/BSHEnhancedForStatement;->varName:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    move v1, v2

    goto :goto_2

    :cond_3
    :try_start_7
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2}, Lbsh/JJTParserState;->popNode()Lbsh/Node;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move v2, v1

    goto :goto_3

    :cond_4
    :try_start_8
    instance-of v1, v0, Lbsh/ParseException;

    if-eqz v1, :cond_5

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_5
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_1
    move-exception v0

    move v2, v3

    goto :goto_4

    :catchall_2
    move-exception v0

    move v2, v1

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
    .end packed-switch
.end method

.method public final EqualityExpression()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v5, -0x1

    invoke-virtual {p0}, Lbsh/Parser;->InstanceOfExpression()V

    :goto_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1
    sparse-switch v0, :sswitch_data_0

    return-void

    :cond_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1

    :sswitch_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_2
    sparse-switch v0, :sswitch_data_1

    invoke-direct {p0, v5}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_2

    :sswitch_1
    const/16 v0, 0x5a

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    :goto_3
    invoke-virtual {p0}, Lbsh/Parser;->InstanceOfExpression()V

    new-instance v2, Lbsh/BSHBinaryExpression;

    const/16 v1, 0xf

    invoke-direct {v2, v1}, Lbsh/BSHBinaryExpression;-><init>(I)V

    const/4 v1, 0x1

    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v2}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_0
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v2, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v2, v6}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_2
    throw v0

    :sswitch_2
    const/16 v0, 0x5f

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x5f -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x5a -> :sswitch_1
        0x5f -> :sswitch_2
    .end sparse-switch
.end method

.method public final ExclusiveOrExpression()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v5, 0x2

    invoke-virtual {p0}, Lbsh/Parser;->AndExpression()V

    :goto_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1
    packed-switch v0, :pswitch_data_0

    return-void

    :cond_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1

    :pswitch_0
    const/16 v0, 0x6e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    invoke-virtual {p0}, Lbsh/Parser;->AndExpression()V

    new-instance v2, Lbsh/BSHBinaryExpression;

    const/16 v1, 0xf

    invoke-direct {v2, v1}, Lbsh/BSHBinaryExpression;-><init>(I)V

    const/4 v1, 0x1

    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v2}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_0
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v2, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v2, v5}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_1
    throw v0

    :pswitch_data_0
    .packed-switch 0x6e
        :pswitch_0
    .end packed-switch
.end method

.method public final Expression()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v1, -0x1

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_8(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbsh/Parser;->Assignment()V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1
    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1

    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->ConditionalExpression()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1d -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2f -> :sswitch_0
        0x37 -> :sswitch_0
        0x39 -> :sswitch_0
        0x3c -> :sswitch_0
        0x40 -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x45 -> :sswitch_0
        0x48 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ForInit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v1, -0x1

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_31(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbsh/Parser;->TypedVariableDeclaration()V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1
    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1

    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->StatementExpressionList()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1d -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2f -> :sswitch_0
        0x37 -> :sswitch_0
        0x39 -> :sswitch_0
        0x3c -> :sswitch_0
        0x40 -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x45 -> :sswitch_0
        0x48 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ForStatement()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v1, -0x1

    const/4 v2, 0x1

    new-instance v3, Lbsh/BSHForStatement;

    const/16 v0, 0x1f

    invoke-direct {v3, v0}, Lbsh/BSHForStatement;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/16 v0, 0x1e

    :try_start_0
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    :goto_1
    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_2
    sparse-switch v0, :sswitch_data_1

    :goto_3
    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_4
    sparse-switch v0, :sswitch_data_2

    :goto_5
    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Statement()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->ForInit()V

    const/4 v0, 0x1

    iput-boolean v0, v3, Lbsh/BSHForStatement;->hasForInit:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v1, 0x0

    :try_start_3
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_4

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_6
    if-eqz v1, :cond_1

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_1
    throw v0

    :cond_2
    :try_start_4
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_2

    :sswitch_1
    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    const/4 v0, 0x1

    iput-boolean v0, v3, Lbsh/BSHForStatement;->hasExpression:Z

    goto :goto_3

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_6

    :cond_3
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_4

    :sswitch_2
    invoke-virtual {p0}, Lbsh/Parser;->ForUpdate()V

    const/4 v0, 0x1

    iput-boolean v0, v3, Lbsh/BSHForStatement;->hasForUpdate:Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :cond_4
    :try_start_5
    instance-of v4, v0, Lbsh/ParseException;

    if-eqz v4, :cond_5

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_5
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1b -> :sswitch_0
        0x1d -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x27 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x2d -> :sswitch_0
        0x2f -> :sswitch_0
        0x30 -> :sswitch_0
        0x31 -> :sswitch_0
        0x33 -> :sswitch_0
        0x34 -> :sswitch_0
        0x37 -> :sswitch_0
        0x39 -> :sswitch_0
        0x3a -> :sswitch_0
        0x3c -> :sswitch_0
        0x40 -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x45 -> :sswitch_0
        0x48 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xb -> :sswitch_1
        0xe -> :sswitch_1
        0x11 -> :sswitch_1
        0x16 -> :sswitch_1
        0x1a -> :sswitch_1
        0x1d -> :sswitch_1
        0x24 -> :sswitch_1
        0x26 -> :sswitch_1
        0x28 -> :sswitch_1
        0x29 -> :sswitch_1
        0x2f -> :sswitch_1
        0x37 -> :sswitch_1
        0x39 -> :sswitch_1
        0x3c -> :sswitch_1
        0x40 -> :sswitch_1
        0x42 -> :sswitch_1
        0x43 -> :sswitch_1
        0x45 -> :sswitch_1
        0x48 -> :sswitch_1
        0x56 -> :sswitch_1
        0x57 -> :sswitch_1
        0x64 -> :sswitch_1
        0x65 -> :sswitch_1
        0x66 -> :sswitch_1
        0x67 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0xb -> :sswitch_2
        0xe -> :sswitch_2
        0x11 -> :sswitch_2
        0x16 -> :sswitch_2
        0x1a -> :sswitch_2
        0x1d -> :sswitch_2
        0x24 -> :sswitch_2
        0x26 -> :sswitch_2
        0x28 -> :sswitch_2
        0x29 -> :sswitch_2
        0x2f -> :sswitch_2
        0x37 -> :sswitch_2
        0x39 -> :sswitch_2
        0x3c -> :sswitch_2
        0x40 -> :sswitch_2
        0x42 -> :sswitch_2
        0x43 -> :sswitch_2
        0x45 -> :sswitch_2
        0x48 -> :sswitch_2
        0x56 -> :sswitch_2
        0x57 -> :sswitch_2
        0x64 -> :sswitch_2
        0x65 -> :sswitch_2
        0x66 -> :sswitch_2
        0x67 -> :sswitch_2
    .end sparse-switch
.end method

.method public final ForUpdate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lbsh/Parser;->StatementExpressionList()V

    return-void
.end method

.method public final FormalComment()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    new-instance v2, Lbsh/BSHFormalComment;

    const/16 v0, 0x1a

    invoke-direct {v2, v0}, Lbsh/BSHFormalComment;-><init>(I)V

    const/4 v1, 0x1

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v2}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/16 v0, 0x44

    :try_start_0
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    iget-boolean v4, p0, Lbsh/Parser;->retainComments:Z

    invoke-virtual {v3, v2, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget-object v0, v0, Lbsh/Token;->image:Ljava/lang/String;

    iput-object v0, v2, Lbsh/BSHFormalComment;->text:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    iget-boolean v3, p0, Lbsh/Parser;->retainComments:Z

    invoke-virtual {v1, v2, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_0
    throw v0
.end method

.method public final FormalParameter()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v4, Lbsh/BSHFormalParameter;

    const/16 v0, 0x8

    invoke-direct {v4, v0}, Lbsh/BSHFormalParameter;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v4}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/4 v0, 0x2

    :try_start_0
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_5(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbsh/Parser;->Type()V

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget-object v0, v0, Lbsh/Token;->image:Ljava/lang/String;

    iput-object v0, v4, Lbsh/BSHFormalParameter;->name:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_2
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1
    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    move-exception v0

    move v1, v3

    :goto_2
    if-eqz v1, :cond_3

    :try_start_3
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v4}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_3
    :try_start_4
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v2, :cond_1

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v4, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_1
    throw v0

    :cond_2
    :try_start_5
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1

    :pswitch_0
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget-object v0, v0, Lbsh/Token;->image:Ljava/lang/String;

    iput-object v0, v4, Lbsh/BSHFormalParameter;->name:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    move v1, v2

    goto :goto_2

    :cond_3
    :try_start_7
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2}, Lbsh/JJTParserState;->popNode()Lbsh/Node;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move v2, v1

    goto :goto_3

    :cond_4
    :try_start_8
    instance-of v1, v0, Lbsh/ParseException;

    if-eqz v1, :cond_5

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_5
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_1
    move-exception v0

    move v2, v3

    goto :goto_4

    :catchall_2
    move-exception v0

    move v2, v1

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x45
        :pswitch_0
    .end packed-switch
.end method

.method public final FormalParameters()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v1, -0x1

    const/4 v2, 0x1

    new-instance v3, Lbsh/BSHFormalParameters;

    const/4 v0, 0x7

    invoke-direct {v3, v0}, Lbsh/BSHFormalParameters;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/16 v0, 0x48

    :try_start_0
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    :goto_1
    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->FormalParameter()V

    :goto_2
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_3
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 v0, 0x4f

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->FormalParameter()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v1, 0x0

    :try_start_3
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_3

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_1

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_1
    throw v0

    :cond_2
    :try_start_4
    iget v0, p0, Lbsh/Parser;->jj_ntk:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :cond_3
    :try_start_5
    instance-of v4, v0, Lbsh/ParseException;

    if-eqz v4, :cond_4

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_4
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1d -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x2f -> :sswitch_0
        0x45 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_0
    .end packed-switch
.end method

.method public final IfStatement()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v3, Lbsh/BSHIfStatement;

    const/16 v0, 0x1d

    invoke-direct {v3, v0}, Lbsh/BSHIfStatement;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/16 v0, 0x20

    :try_start_0
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Statement()V

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Statement()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v1, 0x0

    :try_start_3
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_2

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_1

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_1
    throw v0

    :cond_2
    :try_start_4
    instance-of v4, v0, Lbsh/ParseException;

    if-eqz v4, :cond_3

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_3
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public final ImportDeclaration()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v6, -0x1

    const/4 v2, 0x1

    new-instance v5, Lbsh/BSHImportDeclaration;

    const/4 v0, 0x4

    invoke-direct {v5, v0}, Lbsh/BSHImportDeclaration;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v5}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v5}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x3

    :try_start_0
    invoke-direct {p0, v4}, Lbsh/Parser;->jj_2_3(I)Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v4, v6, :cond_2

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v4

    :goto_0
    packed-switch v4, :pswitch_data_0

    move-object v4, v1

    :goto_1
    const/16 v1, 0x22

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V

    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v1, v6, :cond_3

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :goto_2
    packed-switch v1, :pswitch_data_1

    :goto_3
    const/16 v1, 0x4e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v5}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v5, Lbsh/BSHImportDeclaration;->staticImport:Z

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, v5, Lbsh/BSHImportDeclaration;->importPackage:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_4
    return-void

    :cond_2
    :try_start_2
    iget v4, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_0

    :pswitch_0
    const/16 v1, 0x30

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v1

    move-object v4, v1

    goto :goto_1

    :cond_3
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_2

    :pswitch_1
    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    const/16 v1, 0x68

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catch_0
    move-exception v0

    move v1, v2

    :goto_5
    if-eqz v1, :cond_7

    :try_start_3
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v5}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_6
    :try_start_4
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_8

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    :goto_7
    if-eqz v3, :cond_4

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v5, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v5}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_4
    throw v0

    :cond_5
    :try_start_5
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v6, :cond_6

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_8
    packed-switch v0, :pswitch_data_2

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :catchall_1
    move-exception v0

    move v3, v2

    goto :goto_7

    :cond_6
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_8

    :pswitch_2
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x68

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v1, 0x1

    invoke-virtual {v0, v5, v1}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {p0, v5}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    const/4 v0, 0x1

    iput-boolean v0, v5, Lbsh/BSHImportDeclaration;->superImport:Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v0

    move v1, v3

    goto :goto_5

    :cond_7
    :try_start_7
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3}, Lbsh/JJTParserState;->popNode()Lbsh/Node;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move v3, v1

    goto :goto_6

    :cond_8
    :try_start_8
    instance-of v1, v0, Lbsh/ParseException;

    if-eqz v1, :cond_9

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_9
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_2
    move-exception v0

    move v3, v1

    goto :goto_7

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x50
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x22
        :pswitch_2
    .end packed-switch
.end method

.method public final InclusiveOrExpression()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v5, -0x1

    invoke-virtual {p0}, Lbsh/Parser;->ExclusiveOrExpression()V

    :goto_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1
    packed-switch v0, :pswitch_data_0

    return-void

    :cond_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_2
    packed-switch v0, :pswitch_data_1

    invoke-direct {p0, v5}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_2

    :pswitch_1
    const/16 v0, 0x6c

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    :goto_3
    invoke-virtual {p0}, Lbsh/Parser;->ExclusiveOrExpression()V

    new-instance v2, Lbsh/BSHBinaryExpression;

    const/16 v1, 0xf

    invoke-direct {v2, v1}, Lbsh/BSHBinaryExpression;-><init>(I)V

    const/4 v1, 0x1

    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v2}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_0
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v2, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v2, v6}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_2
    throw v0

    :pswitch_2
    const/16 v0, 0x6d

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x6c
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6c
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final InstanceOfExpression()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v5, 0x2

    invoke-virtual {p0}, Lbsh/Parser;->RelationalExpression()V

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x23

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    invoke-virtual {p0}, Lbsh/Parser;->Type()V

    new-instance v2, Lbsh/BSHBinaryExpression;

    const/16 v1, 0xf

    invoke-direct {v2, v1}, Lbsh/BSHBinaryExpression;-><init>(I)V

    const/4 v1, 0x1

    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v2}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_0
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v2, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v2, v5}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_1
    throw v0

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_0
    .end packed-switch
.end method

.method public final LabeledStatement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x59

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Statement()V

    return-void
.end method

.method public final Line()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    iget v2, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v2

    :goto_0
    packed-switch v2, :pswitch_data_0

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_1(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbsh/Parser;->BlockStatement()V

    move v0, v1

    :goto_1
    return v0

    :cond_0
    iget v2, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const-string v1, "End of File!"

    invoke-static {v1}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, v3}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final Literal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Lbsh/BSHLiteral;

    const/16 v0, 0x15

    invoke-direct {v4, v0}, Lbsh/BSHLiteral;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v4}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :catch_0
    move-exception v0

    move v1, v2

    :goto_1
    if-eqz v1, :cond_8

    :try_start_1
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v4}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_2
    :try_start_2
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_9

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v3, :cond_0

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v4, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_0
    throw v0

    :cond_1
    :try_start_3
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_0

    :sswitch_0
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget-object v0, v0, Lbsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x6c

    if-eq v1, v5, :cond_2

    const/16 v5, 0x4c

    if-ne v1, v5, :cond_3

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lbsh/Primitive;

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v1, v6, v7}, Lbsh/Primitive;-><init>(J)V

    iput-object v1, v4, Lbsh/BSHLiteral;->value:Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_4
    return-void

    :cond_3
    :try_start_5
    new-instance v1, Lbsh/Primitive;

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v1, v5}, Lbsh/Primitive;-><init>(I)V

    iput-object v1, v4, Lbsh/BSHLiteral;->value:Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v1

    :try_start_6
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Error or number too big for integer type: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/Parser;->createParseException(Ljava/lang/String;)Lbsh/ParseException;

    move-result-object v0

    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_2
    move-exception v0

    move v1, v3

    goto/16 :goto_1

    :sswitch_1
    const/16 v0, 0x40

    :try_start_7
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget-object v0, v0, Lbsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x66

    if-eq v1, v5, :cond_4

    const/16 v5, 0x46

    if-ne v1, v5, :cond_5

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lbsh/Primitive;

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, v0}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {v1, v0}, Lbsh/Primitive;-><init>(F)V

    iput-object v1, v4, Lbsh/BSHLiteral;->value:Ljava/lang/Object;

    goto :goto_4

    :cond_5
    const/16 v5, 0x64

    if-eq v1, v5, :cond_6

    const/16 v5, 0x44

    if-ne v1, v5, :cond_7

    :cond_6
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_7
    new-instance v1, Lbsh/Primitive;

    new-instance v5, Ljava/lang/Double;

    invoke-direct {v5, v0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v1, v6, v7}, Lbsh/Primitive;-><init>(D)V

    iput-object v1, v4, Lbsh/BSHLiteral;->value:Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_4

    :sswitch_2
    const/16 v0, 0x42

    :try_start_9
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    iget-object v1, v0, Lbsh/Token;->image:Ljava/lang/String;

    const/4 v5, 0x1

    iget-object v6, v0, Lbsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lbsh/BSHLiteral;->charSetup(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_4

    :catch_3
    move-exception v1

    :try_start_c
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Error parsing character: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, v0, Lbsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/Parser;->createParseException(Ljava/lang/String;)Lbsh/ParseException;

    move-result-object v0

    throw v0
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :sswitch_3
    const/16 v0, 0x43

    :try_start_d
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    iget-object v1, v0, Lbsh/Token;->image:Ljava/lang/String;

    const/4 v5, 0x1

    iget-object v6, v0, Lbsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lbsh/BSHLiteral;->stringSetup(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_4

    :catch_4
    move-exception v1

    :try_start_10
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Error parsing string: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, v0, Lbsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/Parser;->createParseException(Ljava/lang/String;)Lbsh/ParseException;

    move-result-object v0

    throw v0
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :sswitch_4
    :try_start_11
    invoke-virtual {p0}, Lbsh/Parser;->BooleanLiteral()Z

    move-result v0

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :try_start_12
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    new-instance v1, Lbsh/Primitive;

    invoke-direct {v1, v0}, Lbsh/Primitive;-><init>(Z)V

    iput-object v1, v4, Lbsh/BSHLiteral;->value:Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_4

    :sswitch_5
    :try_start_13
    invoke-virtual {p0}, Lbsh/Parser;->NullLiteral()V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :try_start_14
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    iput-object v0, v4, Lbsh/BSHLiteral;->value:Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_4

    :sswitch_6
    :try_start_15
    invoke-virtual {p0}, Lbsh/Parser;->VoidLiteral()V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :try_start_16
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    iput-object v0, v4, Lbsh/BSHLiteral;->value:Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_2
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_4

    :cond_8
    :try_start_17
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3}, Lbsh/JJTParserState;->popNode()Lbsh/Node;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    move v3, v1

    goto/16 :goto_2

    :cond_9
    :try_start_18
    instance-of v1, v0, Lbsh/ParseException;

    if-eqz v1, :cond_a

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_a
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    :catchall_1
    move-exception v0

    move v3, v2

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    move v3, v1

    goto/16 :goto_3

    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_4
        0x29 -> :sswitch_5
        0x37 -> :sswitch_4
        0x39 -> :sswitch_6
        0x3c -> :sswitch_0
        0x40 -> :sswitch_1
        0x42 -> :sswitch_2
        0x43 -> :sswitch_3
    .end sparse-switch
.end method

.method public final MethodDeclaration()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v5, -0x1

    new-instance v3, Lbsh/BSHMethodDeclaration;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Lbsh/BSHMethodDeclaration;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/4 v0, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v4}, Lbsh/Parser;->Modifiers(IZ)Lbsh/Modifiers;

    move-result-object v0

    iput-object v0, v3, Lbsh/BSHMethodDeclaration;->modifiers:Lbsh/Modifiers;

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_2(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    iget-object v0, v0, Lbsh/Token;->image:Ljava/lang/String;

    iput-object v0, v3, Lbsh/BSHMethodDeclaration;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0}, Lbsh/Parser;->FormalParameters()V

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_3

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1
    packed-switch v0, :pswitch_data_0

    :goto_2
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_4

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_3
    sparse-switch v0, :sswitch_data_0

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v3}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_5

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_0

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_0
    throw v0

    :cond_1
    :try_start_3
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_2

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_5
    sparse-switch v0, :sswitch_data_1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_4

    :cond_2
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_5

    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->ReturnType()V

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    iget-object v0, v0, Lbsh/Token;->image:Ljava/lang/String;

    iput-object v0, v3, Lbsh/BSHMethodDeclaration;->name:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1

    :pswitch_0
    const/16 v0, 0x36

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->NameList()I

    move-result v0

    iput v0, v3, Lbsh/BSHMethodDeclaration;->numThrows:I

    goto :goto_2

    :cond_4
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_3

    :sswitch_1
    invoke-virtual {p0}, Lbsh/Parser;->Block()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_6
    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    return-void

    :sswitch_2
    const/16 v0, 0x4e

    :try_start_4
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :cond_5
    :try_start_5
    instance-of v4, v0, Lbsh/ParseException;

    if-eqz v4, :cond_6

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_6
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    nop

    :pswitch_data_0
    .packed-switch 0x36
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x4a -> :sswitch_1
        0x4e -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xb -> :sswitch_0
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1d -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x2f -> :sswitch_0
        0x39 -> :sswitch_0
        0x45 -> :sswitch_0
    .end sparse-switch
.end method

.method public final MethodInvocation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v3, Lbsh/BSHMethodInvocation;

    const/16 v0, 0x13

    invoke-direct {v3, v0}, Lbsh/BSHMethodInvocation;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_0
    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V

    invoke-virtual {p0}, Lbsh/Parser;->Arguments()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    :try_start_2
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_1

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :goto_0
    if-eqz v1, :cond_0

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_0
    throw v0

    :cond_1
    :try_start_3
    instance-of v4, v0, Lbsh/ParseException;

    if-eqz v4, :cond_2

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_2
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_0
.end method

.method public final Modifiers(IZ)Lbsh/Modifiers;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, -0x1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :goto_1
    sparse-switch v1, :sswitch_data_0

    return-object v0

    :cond_1
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1

    :sswitch_0
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :goto_2
    sparse-switch v1, :sswitch_data_1

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_2
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_2

    :sswitch_1
    const/16 v1, 0x2b

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    :goto_3
    if-nez p2, :cond_0

    if-nez v0, :cond_3

    :try_start_0
    new-instance v0, Lbsh/Modifiers;

    invoke-direct {v0}, Lbsh/Modifiers;-><init>()V

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lbsh/Parser;->getToken(I)Lbsh/Token;

    move-result-object v1

    iget-object v1, v1, Lbsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lbsh/Modifiers;->addModifier(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/Parser;->createParseException(Ljava/lang/String;)Lbsh/ParseException;

    move-result-object v0

    throw v0

    :sswitch_2
    const/16 v1, 0x2c

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_3

    :sswitch_3
    const/16 v1, 0x2d

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_3

    :sswitch_4
    const/16 v1, 0x33

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_3

    :sswitch_5
    const/16 v1, 0x1b

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_3

    :sswitch_6
    const/16 v1, 0x27

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_3

    :sswitch_7
    const/16 v1, 0x34

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_3

    :sswitch_8
    const/16 v1, 0x3a

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_3

    :sswitch_9
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_3

    :sswitch_a
    const/16 v1, 0x30

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_3

    :sswitch_b
    const/16 v1, 0x31

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x1b -> :sswitch_0
        0x27 -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x2d -> :sswitch_0
        0x30 -> :sswitch_0
        0x31 -> :sswitch_0
        0x33 -> :sswitch_0
        0x34 -> :sswitch_0
        0x3a -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xa -> :sswitch_9
        0x1b -> :sswitch_5
        0x27 -> :sswitch_6
        0x2b -> :sswitch_1
        0x2c -> :sswitch_2
        0x2d -> :sswitch_3
        0x30 -> :sswitch_a
        0x31 -> :sswitch_b
        0x33 -> :sswitch_4
        0x34 -> :sswitch_7
        0x3a -> :sswitch_8
    .end sparse-switch
.end method

.method public final MultiplicativeExpression()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v5, -0x1

    invoke-virtual {p0}, Lbsh/Parser;->UnaryExpression()V

    :goto_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1
    sparse-switch v0, :sswitch_data_0

    return-void

    :cond_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1

    :sswitch_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_2
    sparse-switch v0, :sswitch_data_1

    invoke-direct {p0, v5}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_2

    :sswitch_1
    const/16 v0, 0x68

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    :goto_3
    invoke-virtual {p0}, Lbsh/Parser;->UnaryExpression()V

    new-instance v2, Lbsh/BSHBinaryExpression;

    const/16 v1, 0xf

    invoke-direct {v2, v1}, Lbsh/BSHBinaryExpression;-><init>(I)V

    const/4 v1, 0x1

    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v2}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_0
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v2, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v2, v6}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_2
    throw v0

    :sswitch_2
    const/16 v0, 0x69

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_3

    :sswitch_3
    const/16 v0, 0x6f

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x68 -> :sswitch_0
        0x69 -> :sswitch_0
        0x6f -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x68 -> :sswitch_1
        0x69 -> :sswitch_2
        0x6f -> :sswitch_3
    .end sparse-switch
.end method

.method public final NameList()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :goto_1
    packed-switch v1, :pswitch_data_0

    return v0

    :cond_0
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1

    :pswitch_0
    const/16 v1, 0x4f

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_0
    .end packed-switch
.end method

.method public final NullLiteral()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/16 v0, 0x29

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    return-void
.end method

.method public final PackageDeclaration()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v3, Lbsh/BSHPackageDeclaration;

    const/4 v0, 0x3

    invoke-direct {v3, v0}, Lbsh/BSHPackageDeclaration;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/16 v0, 0x2a

    :try_start_0
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    :try_start_2
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_1

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :goto_0
    if-eqz v1, :cond_0

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_0
    throw v0

    :cond_1
    :try_start_3
    instance-of v4, v0, Lbsh/ParseException;

    if-eqz v4, :cond_2

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_2
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_0
.end method

.method public final PostfixExpression()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, -0x1

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_12(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lbsh/Parser;->PrimaryExpression()V

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    :goto_1
    new-instance v3, Lbsh/BSHUnaryExpression;

    const/16 v1, 0x10

    invoke-direct {v3, v1}, Lbsh/BSHUnaryExpression;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_0
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v3, Lbsh/BSHUnaryExpression;->kind:I

    const/4 v0, 0x1

    iput-boolean v0, v3, Lbsh/BSHUnaryExpression;->postfix:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    return-void

    :pswitch_1
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move v1, v2

    :goto_3
    if-eqz v1, :cond_1

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_1
    throw v0

    :cond_2
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_4
    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_3
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_4

    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->PrimaryExpression()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1d -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2f -> :sswitch_0
        0x37 -> :sswitch_0
        0x39 -> :sswitch_0
        0x3c -> :sswitch_0
        0x40 -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x45 -> :sswitch_0
        0x48 -> :sswitch_0
    .end sparse-switch
.end method

.method public final PreDecrementExpression()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    invoke-virtual {p0}, Lbsh/Parser;->PrimaryExpression()V

    new-instance v3, Lbsh/BSHUnaryExpression;

    const/16 v1, 0x10

    invoke-direct {v3, v1}, Lbsh/BSHUnaryExpression;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_0
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v3, Lbsh/BSHUnaryExpression;->kind:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    move v1, v2

    :goto_0
    if-eqz v1, :cond_0

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_0
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public final PreIncrementExpression()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    invoke-virtual {p0}, Lbsh/Parser;->PrimaryExpression()V

    new-instance v3, Lbsh/BSHUnaryExpression;

    const/16 v1, 0x10

    invoke-direct {v3, v1}, Lbsh/BSHUnaryExpression;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_0
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v3, Lbsh/BSHUnaryExpression;->kind:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    move v1, v2

    :goto_0
    if-eqz v1, :cond_0

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_0
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public final PrimaryExpression()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v3, Lbsh/BSHPrimaryExpression;

    const/16 v0, 0x12

    invoke-direct {v3, v0}, Lbsh/BSHPrimaryExpression;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_0
    invoke-virtual {p0}, Lbsh/Parser;->PrimaryPrefix()V

    :goto_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    :goto_1
    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1

    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->PrimarySuffix()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v1, 0x0

    :try_start_3
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_2

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_1

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_1
    throw v0

    :cond_2
    :try_start_4
    instance-of v4, v0, Lbsh/ParseException;

    if-eqz v4, :cond_3

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_3
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x4a -> :sswitch_0
        0x4c -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public final PrimaryPrefix()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const v2, 0x7fffffff

    const/4 v1, -0x1

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_2_14(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbsh/Parser;->MethodInvocation()V

    :goto_1
    return-void

    :cond_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->Literal()V

    goto :goto_1

    :sswitch_1
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0}, Lbsh/Parser;->AllocationExpression()V

    goto :goto_1

    :cond_1
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_2_15(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lbsh/Parser;->Type()V

    goto :goto_1

    :cond_2
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_2
    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_3
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_2

    :pswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_0
        0x28 -> :sswitch_2
        0x29 -> :sswitch_0
        0x37 -> :sswitch_0
        0x39 -> :sswitch_0
        0x3c -> :sswitch_0
        0x40 -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x48 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x45
        :pswitch_0
    .end packed-switch
.end method

.method public final PrimarySuffix()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v4, Lbsh/BSHPrimarySuffix;

    const/16 v0, 0x14

    invoke-direct {v4, v0}, Lbsh/BSHPrimarySuffix;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v4}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/4 v0, 0x2

    :try_start_0
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_16(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    const/4 v0, 0x0

    iput v0, v4, Lbsh/BSHPrimarySuffix;->operation:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_2
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_2

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1
    sparse-switch v0, :sswitch_data_0

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    move-exception v0

    move v1, v3

    :goto_2
    if-eqz v1, :cond_4

    :try_start_3
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v4}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_3
    :try_start_4
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_5

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v2, :cond_1

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v4, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_1
    throw v0

    :cond_2
    :try_start_5
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1

    :sswitch_0
    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    const/16 v0, 0x4d

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    const/4 v0, 0x1

    iput v0, v4, Lbsh/BSHPrimarySuffix;->operation:I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    move v1, v2

    goto :goto_2

    :sswitch_1
    const/16 v0, 0x50

    :try_start_7
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v1

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_3

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_5
    packed-switch v0, :pswitch_data_0

    :goto_6
    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    const/4 v0, 0x2

    iput v0, v4, Lbsh/BSHPrimarySuffix;->operation:I

    iget-object v0, v1, Lbsh/Token;->image:Ljava/lang/String;

    iput-object v0, v4, Lbsh/BSHPrimarySuffix;->field:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    :cond_3
    :try_start_9
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_5

    :pswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->Arguments()V

    goto :goto_6

    :catchall_1
    move-exception v0

    move v2, v3

    goto :goto_4

    :sswitch_2
    const/16 v0, 0x4a

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    const/16 v0, 0x4b

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    const/4 v0, 0x3

    iput v0, v4, Lbsh/BSHPrimarySuffix;->operation:I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    :cond_4
    :try_start_b
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2}, Lbsh/JJTParserState;->popNode()Lbsh/Node;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move v2, v1

    goto/16 :goto_3

    :cond_5
    :try_start_c
    instance-of v1, v0, Lbsh/ParseException;

    if-eqz v1, :cond_6

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_6
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :catchall_2
    move-exception v0

    move v2, v1

    goto/16 :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0x4a -> :sswitch_2
        0x4c -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
    .end packed-switch
.end method

.method public final PrimitiveType()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/16 v0, 0xb

    const/4 v4, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-instance v3, Lbsh/BSHPrimitiveType;

    invoke-direct {v3, v0}, Lbsh/BSHPrimitiveType;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v4, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    move v1, v2

    :goto_1
    if-eqz v1, :cond_0

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_0
    throw v0

    :cond_1
    :try_start_1
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_0

    :sswitch_0
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    iput-object v0, v3, Lbsh/BSHPrimitiveType;->type:Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    return-void

    :sswitch_1
    const/16 v0, 0x11

    :try_start_3
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    iput-object v0, v3, Lbsh/BSHPrimitiveType;->type:Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1

    :sswitch_2
    const/16 v0, 0xe

    :try_start_5
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    iput-object v0, v3, Lbsh/BSHPrimitiveType;->type:Ljava/lang/Class;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :sswitch_3
    const/16 v0, 0x2f

    :try_start_7
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    iput-object v0, v3, Lbsh/BSHPrimitiveType;->type:Ljava/lang/Class;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    :sswitch_4
    const/16 v0, 0x24

    :try_start_9
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, v3, Lbsh/BSHPrimitiveType;->type:Ljava/lang/Class;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_2

    :sswitch_5
    const/16 v0, 0x26

    :try_start_b
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    iput-object v0, v3, Lbsh/BSHPrimitiveType;->type:Ljava/lang/Class;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_2

    :sswitch_6
    const/16 v0, 0x1d

    :try_start_d
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :try_start_e
    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, v3, Lbsh/BSHPrimitiveType;->type:Ljava/lang/Class;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_2

    :sswitch_7
    const/16 v0, 0x16

    :try_start_f
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    iput-object v0, v3, Lbsh/BSHPrimitiveType;->type:Ljava/lang/Class;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xe -> :sswitch_2
        0x11 -> :sswitch_1
        0x16 -> :sswitch_7
        0x1d -> :sswitch_6
        0x24 -> :sswitch_4
        0x26 -> :sswitch_5
        0x2f -> :sswitch_3
    .end sparse-switch
.end method

.method public ReInit(Lbsh/ParserTokenManager;)V
    .locals 1

    iput-object p1, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    new-instance v0, Lbsh/Token;

    invoke-direct {v0}, Lbsh/Token;-><init>()V

    iput-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    const/4 v0, -0x1

    iput v0, p0, Lbsh/Parser;->jj_ntk:I

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0}, Lbsh/JJTParserState;->reset()V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lbsh/Parser;->jj_input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0, p1, v1, v1}, Lbsh/JavaCharStream;->ReInit(Ljava/io/InputStream;II)V

    iget-object v0, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    iget-object v1, p0, Lbsh/Parser;->jj_input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0, v1}, Lbsh/ParserTokenManager;->ReInit(Lbsh/JavaCharStream;)V

    new-instance v0, Lbsh/Token;

    invoke-direct {v0}, Lbsh/Token;-><init>()V

    iput-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    const/4 v0, -0x1

    iput v0, p0, Lbsh/Parser;->jj_ntk:I

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0}, Lbsh/JJTParserState;->reset()V

    return-void
.end method

.method public ReInit(Ljava/io/Reader;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lbsh/Parser;->jj_input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0, p1, v1, v1}, Lbsh/JavaCharStream;->ReInit(Ljava/io/Reader;II)V

    iget-object v0, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    iget-object v1, p0, Lbsh/Parser;->jj_input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0, v1}, Lbsh/ParserTokenManager;->ReInit(Lbsh/JavaCharStream;)V

    new-instance v0, Lbsh/Token;

    invoke-direct {v0}, Lbsh/Token;-><init>()V

    iput-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    const/4 v0, -0x1

    iput v0, p0, Lbsh/Parser;->jj_ntk:I

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0}, Lbsh/JJTParserState;->reset()V

    return-void
.end method

.method public final RelationalExpression()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v5, -0x1

    invoke-virtual {p0}, Lbsh/Parser;->ShiftExpression()V

    :goto_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-void

    :cond_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1

    :pswitch_1
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_2
    packed-switch v0, :pswitch_data_1

    :pswitch_2
    invoke-direct {p0, v5}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_2

    :pswitch_3
    const/16 v0, 0x54

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    :goto_3
    invoke-virtual {p0}, Lbsh/Parser;->ShiftExpression()V

    new-instance v2, Lbsh/BSHBinaryExpression;

    const/16 v1, 0xf

    invoke-direct {v2, v1}, Lbsh/BSHBinaryExpression;-><init>(I)V

    const/4 v1, 0x1

    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v2}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_0
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v2, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v2, v6}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_2
    throw v0

    :pswitch_4
    const/16 v0, 0x55

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_3

    :pswitch_5
    const/16 v0, 0x52

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_3

    :pswitch_6
    const/16 v0, 0x53

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_3

    :pswitch_7
    const/16 v0, 0x5b

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_3

    :pswitch_8
    const/16 v0, 0x5c

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_3

    :pswitch_9
    const/16 v0, 0x5d

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_3

    :pswitch_a
    const/16 v0, 0x5e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x52
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public final ReturnStatement()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v4, Lbsh/BSHReturnStatement;

    const/16 v0, 0x23

    invoke-direct {v4, v0}, Lbsh/BSHReturnStatement;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v4}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/16 v0, 0x2e

    :try_start_0
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    :goto_1
    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    const/16 v0, 0x2e

    iput v0, v4, Lbsh/BSHReturnStatement;->kind:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    return-void

    :cond_0
    :try_start_2
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->Expression()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    move v1, v2

    :goto_2
    if-eqz v1, :cond_2

    :try_start_3
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v4}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    move v1, v3

    :goto_3
    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_3

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_1

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v4, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_1
    throw v0

    :cond_2
    :try_start_4
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    goto :goto_3

    :cond_3
    instance-of v3, v0, Lbsh/ParseException;

    if-eqz v3, :cond_4

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_4
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_4

    :catchall_2
    move-exception v0

    move v1, v3

    goto :goto_4

    :catch_1
    move-exception v0

    move v1, v3

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1d -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2f -> :sswitch_0
        0x37 -> :sswitch_0
        0x39 -> :sswitch_0
        0x3c -> :sswitch_0
        0x40 -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x45 -> :sswitch_0
        0x48 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ReturnType()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    new-instance v4, Lbsh/BSHReturnType;

    const/16 v0, 0xa

    invoke-direct {v4, v0}, Lbsh/BSHReturnType;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v4}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :catch_0
    move-exception v0

    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    :try_start_1
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v4}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    move v1, v3

    :goto_2
    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_4

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_0

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v4, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_0
    throw v0

    :cond_1
    :try_start_2
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_0

    :sswitch_0
    const/16 v0, 0x39

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    const/4 v0, 0x1

    iput-boolean v0, v4, Lbsh/BSHReturnType;->isVoid:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_4
    if-eqz v3, :cond_2

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v4, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_2
    return-void

    :sswitch_1
    :try_start_4
    invoke-virtual {p0}, Lbsh/Parser;->Type()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v3, v2

    goto :goto_4

    :cond_3
    :try_start_5
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    goto :goto_2

    :cond_4
    instance-of v3, v0, Lbsh/ParseException;

    if-eqz v3, :cond_5

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_5
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    move v1, v3

    goto :goto_3

    :catch_1
    move-exception v0

    move v1, v3

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_1
        0xe -> :sswitch_1
        0x11 -> :sswitch_1
        0x16 -> :sswitch_1
        0x1d -> :sswitch_1
        0x24 -> :sswitch_1
        0x26 -> :sswitch_1
        0x2f -> :sswitch_1
        0x39 -> :sswitch_0
        0x45 -> :sswitch_1
    .end sparse-switch
.end method

.method public final ShiftExpression()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v5, -0x1

    invoke-virtual {p0}, Lbsh/Parser;->AdditiveExpression()V

    :goto_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1
    packed-switch v0, :pswitch_data_0

    return-void

    :cond_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_2
    packed-switch v0, :pswitch_data_1

    invoke-direct {p0, v5}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_2

    :pswitch_1
    const/16 v0, 0x70

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    :goto_3
    invoke-virtual {p0}, Lbsh/Parser;->AdditiveExpression()V

    new-instance v2, Lbsh/BSHBinaryExpression;

    const/16 v1, 0xf

    invoke-direct {v2, v1}, Lbsh/BSHBinaryExpression;-><init>(I)V

    const/4 v1, 0x1

    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v2}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_0
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v2, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v2, v6}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_2
    throw v0

    :pswitch_2
    const/16 v0, 0x71

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_3

    :pswitch_3
    const/16 v0, 0x72

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_3

    :pswitch_4
    const/16 v0, 0x73

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_3

    :pswitch_5
    const/16 v0, 0x74

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_3

    :pswitch_6
    const/16 v0, 0x75

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x70
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x70
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final Statement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v1, -0x1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_22(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbsh/Parser;->LabeledStatement()V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1
    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0}, Lbsh/Parser;->isRegularForStatement()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lbsh/Parser;->ForStatement()V

    goto :goto_0

    :cond_1
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1

    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->Block()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lbsh/Parser;->EmptyStatement()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lbsh/Parser;->StatementExpression()V

    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lbsh/Parser;->SwitchStatement()V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lbsh/Parser;->IfStatement()V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lbsh/Parser;->WhileStatement()V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0}, Lbsh/Parser;->DoStatement()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_2
    sparse-switch v0, :sswitch_data_1

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_3
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_2

    :sswitch_7
    invoke-virtual {p0}, Lbsh/Parser;->EnhancedForStatement()V

    goto :goto_0

    :sswitch_8
    invoke-virtual {p0}, Lbsh/Parser;->BreakStatement()V

    goto :goto_0

    :sswitch_9
    invoke-virtual {p0}, Lbsh/Parser;->ContinueStatement()V

    goto :goto_0

    :sswitch_a
    invoke-virtual {p0}, Lbsh/Parser;->ReturnStatement()V

    goto :goto_0

    :sswitch_b
    invoke-virtual {p0}, Lbsh/Parser;->SynchronizedStatement()V

    goto :goto_0

    :sswitch_c
    invoke-virtual {p0}, Lbsh/Parser;->ThrowStatement()V

    goto :goto_0

    :sswitch_d
    invoke-virtual {p0}, Lbsh/Parser;->TryStatement()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_2
        0xe -> :sswitch_2
        0x11 -> :sswitch_2
        0x15 -> :sswitch_6
        0x16 -> :sswitch_2
        0x1a -> :sswitch_2
        0x1d -> :sswitch_2
        0x20 -> :sswitch_4
        0x24 -> :sswitch_2
        0x26 -> :sswitch_2
        0x28 -> :sswitch_2
        0x29 -> :sswitch_2
        0x2f -> :sswitch_2
        0x32 -> :sswitch_3
        0x37 -> :sswitch_2
        0x39 -> :sswitch_2
        0x3b -> :sswitch_5
        0x3c -> :sswitch_2
        0x40 -> :sswitch_2
        0x42 -> :sswitch_2
        0x43 -> :sswitch_2
        0x45 -> :sswitch_2
        0x48 -> :sswitch_2
        0x4a -> :sswitch_0
        0x4e -> :sswitch_1
        0x56 -> :sswitch_2
        0x57 -> :sswitch_2
        0x64 -> :sswitch_2
        0x65 -> :sswitch_2
        0x66 -> :sswitch_2
        0x67 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xc -> :sswitch_8
        0x13 -> :sswitch_9
        0x1e -> :sswitch_7
        0x2e -> :sswitch_a
        0x33 -> :sswitch_b
        0x35 -> :sswitch_c
        0x38 -> :sswitch_d
    .end sparse-switch
.end method

.method public final StatementExpression()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    return-void
.end method

.method public final StatementExpressionList()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v3, Lbsh/BSHStatementExpressionList;

    const/16 v0, 0x22

    invoke-direct {v3, v0}, Lbsh/BSHStatementExpressionList;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_0
    invoke-virtual {p0}, Lbsh/Parser;->StatementExpression()V

    :goto_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    :goto_1
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1

    :pswitch_0
    const/16 v0, 0x4f

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->StatementExpression()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v1, 0x0

    :try_start_3
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_2

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_1

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_1
    throw v0

    :cond_2
    :try_start_4
    instance-of v4, v0, Lbsh/ParseException;

    if-eqz v4, :cond_3

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_3
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_0
    .end packed-switch
.end method

.method public final SwitchLabel()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    new-instance v4, Lbsh/BSHSwitchLabel;

    const/16 v0, 0x1c

    invoke-direct {v4, v0}, Lbsh/BSHSwitchLabel;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v4}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :catch_0
    move-exception v0

    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    :try_start_1
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v4}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    move v1, v3

    :goto_2
    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_4

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_0

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v4, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_0
    throw v0

    :cond_1
    :try_start_2
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_0

    :sswitch_0
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    const/16 v0, 0x59

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v3, v2

    :goto_4
    if-eqz v3, :cond_2

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v4, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_2
    return-void

    :sswitch_1
    const/16 v0, 0x14

    :try_start_3
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x59

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    const/4 v0, 0x1

    iput-boolean v0, v4, Lbsh/BSHSwitchLabel;->isDefault:Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catch_1
    move-exception v0

    move v1, v3

    goto :goto_1

    :cond_3
    :try_start_5
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    goto :goto_2

    :cond_4
    instance-of v3, v0, Lbsh/ParseException;

    if-eqz v3, :cond_5

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_5
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    move v1, v3

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method public final SwitchStatement()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v3, Lbsh/BSHSwitchStatement;

    const/16 v0, 0x1b

    invoke-direct {v3, v0}, Lbsh/BSHSwitchStatement;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/16 v0, 0x32

    :try_start_0
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x4a

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    :cond_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    const/16 v0, 0x4b

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    return-void

    :cond_1
    :try_start_1
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->SwitchLabel()V

    :goto_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_29(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbsh/Parser;->BlockStatement()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v1, 0x0

    :try_start_3
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_3

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_2
    throw v0

    :cond_3
    :try_start_4
    instance-of v4, v0, Lbsh/ParseException;

    if-eqz v4, :cond_4

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_4
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method public final SynchronizedStatement()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v4, Lbsh/BSHBlock;

    const/16 v0, 0x19

    invoke-direct {v4, v0}, Lbsh/BSHBlock;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v4}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/16 v0, 0x33

    :try_start_0
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Block()V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    const/4 v0, 0x1

    iput-boolean v0, v4, Lbsh/BSHBlock;->isSynchronized:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    return-void

    :catch_0
    move-exception v0

    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    :try_start_2
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v4}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    move v1, v2

    :goto_1
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_0

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v4, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_0
    throw v0

    :cond_1
    :try_start_3
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    goto :goto_1

    :cond_2
    instance-of v2, v0, Lbsh/ParseException;

    if-eqz v2, :cond_3

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_3
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_1
    move-exception v0

    move v1, v3

    goto :goto_2

    :catchall_2
    move-exception v0

    move v1, v2

    goto :goto_2

    :catch_1
    move-exception v0

    move v1, v2

    goto :goto_0
.end method

.method public final ThrowStatement()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v3, Lbsh/BSHThrowStatement;

    const/16 v0, 0x24

    invoke-direct {v3, v0}, Lbsh/BSHThrowStatement;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/16 v0, 0x35

    :try_start_0
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    :try_start_2
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_1

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :goto_0
    if-eqz v1, :cond_0

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_0
    throw v0

    :cond_1
    :try_start_3
    instance-of v4, v0, Lbsh/ParseException;

    if-eqz v4, :cond_2

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_2
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_0
.end method

.method public final TryStatement()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v5, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v4, Lbsh/BSHTryStatement;

    const/16 v0, 0x25

    invoke-direct {v4, v0}, Lbsh/BSHTryStatement;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v4}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/16 v0, 0x38

    :try_start_0
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Block()V

    move v0, v3

    :goto_0
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v1, v5, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :goto_1
    packed-switch v1, :pswitch_data_0

    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v1, v5, :cond_2

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :goto_2
    packed-switch v1, :pswitch_data_1

    :goto_3
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lbsh/Parser;->generateParseException()Lbsh/ParseException;

    move-result-object v0

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :catch_0
    move-exception v0

    move v1, v3

    :goto_4
    if-eqz v1, :cond_3

    :try_start_2
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v4}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    move v1, v3

    :goto_5
    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_4

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :goto_6
    if-eqz v1, :cond_0

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v4, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_0
    throw v0

    :cond_1
    :try_start_3
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1

    :pswitch_0
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->FormalParameter()V

    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Block()V

    move v0, v2

    goto :goto_0

    :cond_2
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_2

    :pswitch_1
    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Block()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v0, v2

    goto :goto_3

    :cond_3
    :try_start_4
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    goto :goto_5

    :cond_4
    instance-of v3, v0, Lbsh/ParseException;

    if-eqz v3, :cond_5

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_5
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    return-void

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_6

    :catchall_2
    move-exception v0

    move v1, v3

    goto :goto_6

    :catch_1
    move-exception v0

    move v1, v2

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1c
        :pswitch_1
    .end packed-switch
.end method

.method public final Type()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v1, -0x1

    const/4 v2, 0x1

    new-instance v3, Lbsh/BSHType;

    const/16 v0, 0x9

    invoke-direct {v3, v0}, Lbsh/BSHType;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    :try_start_2
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_2

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_0

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_0
    throw v0

    :cond_1
    :try_start_3
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->PrimitiveType()V

    :goto_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_6(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x4d

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {v3}, Lbsh/BSHType;->addArrayDimension()V

    goto :goto_2

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :cond_2
    :try_start_4
    instance-of v4, v0, Lbsh/ParseException;

    if-eqz v4, :cond_3

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_3
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1d -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x2f -> :sswitch_0
        0x45 -> :sswitch_1
    .end sparse-switch
.end method

.method public final TypedVariableDeclaration()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Lbsh/BSHTypedVariableDeclaration;

    const/16 v0, 0x21

    invoke-direct {v4, v0}, Lbsh/BSHTypedVariableDeclaration;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v4}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lbsh/Parser;->Modifiers(IZ)Lbsh/Modifiers;

    move-result-object v1

    invoke-virtual {p0}, Lbsh/Parser;->Type()V

    invoke-virtual {p0}, Lbsh/Parser;->VariableDeclarator()V

    :goto_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iput-object v1, v4, Lbsh/BSHTypedVariableDeclaration;->modifiers:Lbsh/Modifiers;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    return-void

    :cond_0
    :try_start_2
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1

    :pswitch_0
    const/16 v0, 0x4f

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->VariableDeclarator()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    move v1, v2

    :goto_2
    if-eqz v1, :cond_2

    :try_start_3
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v4}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    move v1, v3

    :goto_3
    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_3

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_1

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v4, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_1
    throw v0

    :cond_2
    :try_start_4
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    goto :goto_3

    :cond_3
    instance-of v3, v0, Lbsh/ParseException;

    if-eqz v3, :cond_4

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_4
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_4

    :catchall_2
    move-exception v0

    move v1, v3

    goto :goto_4

    :catch_1
    move-exception v0

    move v1, v3

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_0
    .end packed-switch
.end method

.method public final UnaryExpression()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_0

    :sswitch_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1
    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1

    :pswitch_0
    const/16 v0, 0x66

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    :goto_2
    invoke-virtual {p0}, Lbsh/Parser;->UnaryExpression()V

    new-instance v3, Lbsh/BSHUnaryExpression;

    const/16 v1, 0x10

    invoke-direct {v3, v1}, Lbsh/BSHUnaryExpression;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_0
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v3, Lbsh/BSHUnaryExpression;->kind:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_3
    return-void

    :pswitch_1
    const/16 v0, 0x67

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move v1, v2

    :goto_4
    if-eqz v1, :cond_2

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_2
    throw v0

    :sswitch_1
    invoke-virtual {p0}, Lbsh/Parser;->PreIncrementExpression()V

    goto :goto_3

    :sswitch_2
    invoke-virtual {p0}, Lbsh/Parser;->PreDecrementExpression()V

    goto :goto_3

    :sswitch_3
    invoke-virtual {p0}, Lbsh/Parser;->UnaryExpressionNotPlusMinus()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_3
        0xe -> :sswitch_3
        0x11 -> :sswitch_3
        0x16 -> :sswitch_3
        0x1a -> :sswitch_3
        0x1d -> :sswitch_3
        0x24 -> :sswitch_3
        0x26 -> :sswitch_3
        0x28 -> :sswitch_3
        0x29 -> :sswitch_3
        0x2f -> :sswitch_3
        0x37 -> :sswitch_3
        0x39 -> :sswitch_3
        0x3c -> :sswitch_3
        0x40 -> :sswitch_3
        0x42 -> :sswitch_3
        0x43 -> :sswitch_3
        0x45 -> :sswitch_3
        0x48 -> :sswitch_3
        0x56 -> :sswitch_3
        0x57 -> :sswitch_3
        0x64 -> :sswitch_1
        0x65 -> :sswitch_2
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final UnaryExpressionNotPlusMinus()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_9(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lbsh/Parser;->CastExpression()V

    :goto_1
    return-void

    :cond_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_2
    packed-switch v0, :pswitch_data_1

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_2

    :pswitch_1
    const/16 v0, 0x57

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    :goto_3
    invoke-virtual {p0}, Lbsh/Parser;->UnaryExpression()V

    new-instance v3, Lbsh/BSHUnaryExpression;

    const/16 v1, 0x10

    invoke-direct {v3, v1}, Lbsh/BSHUnaryExpression;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_0
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v3, Lbsh/BSHUnaryExpression;->kind:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_2

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_2
    throw v0

    :pswitch_2
    const/16 v0, 0x56

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_3

    :cond_3
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_5
    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_4
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_5

    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->PostfixExpression()V

    goto :goto_1

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x56
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x56
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1d -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2f -> :sswitch_0
        0x37 -> :sswitch_0
        0x39 -> :sswitch_0
        0x3c -> :sswitch_0
        0x40 -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x45 -> :sswitch_0
        0x48 -> :sswitch_0
    .end sparse-switch
.end method

.method public final VariableDeclarator()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v4, Lbsh/BSHVariableDeclarator;

    const/4 v0, 0x5

    invoke-direct {v4, v0}, Lbsh/BSHVariableDeclarator;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v4}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/16 v0, 0x45

    :try_start_0
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v1

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget-object v0, v1, Lbsh/Token;->image:Ljava/lang/String;

    iput-object v0, v4, Lbsh/BSHVariableDeclarator;->name:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    return-void

    :cond_0
    :try_start_2
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x51

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->VariableInitializer()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    move v1, v2

    :goto_2
    if-eqz v1, :cond_2

    :try_start_3
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v4}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    move v1, v3

    :goto_3
    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_3

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_1

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v4, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_1
    throw v0

    :cond_2
    :try_start_4
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    goto :goto_3

    :cond_3
    instance-of v3, v0, Lbsh/ParseException;

    if-eqz v3, :cond_4

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_4
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_4

    :catchall_2
    move-exception v0

    move v1, v3

    goto :goto_4

    :catch_1
    move-exception v0

    move v1, v3

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x51
        :pswitch_0
    .end packed-switch
.end method

.method public final VariableInitializer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v1, -0x1

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->ArrayInitializer()V

    :goto_1
    return-void

    :sswitch_1
    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_1
        0xe -> :sswitch_1
        0x11 -> :sswitch_1
        0x16 -> :sswitch_1
        0x1a -> :sswitch_1
        0x1d -> :sswitch_1
        0x24 -> :sswitch_1
        0x26 -> :sswitch_1
        0x28 -> :sswitch_1
        0x29 -> :sswitch_1
        0x2f -> :sswitch_1
        0x37 -> :sswitch_1
        0x39 -> :sswitch_1
        0x3c -> :sswitch_1
        0x40 -> :sswitch_1
        0x42 -> :sswitch_1
        0x43 -> :sswitch_1
        0x45 -> :sswitch_1
        0x48 -> :sswitch_1
        0x4a -> :sswitch_0
        0x56 -> :sswitch_1
        0x57 -> :sswitch_1
        0x64 -> :sswitch_1
        0x65 -> :sswitch_1
        0x66 -> :sswitch_1
        0x67 -> :sswitch_1
    .end sparse-switch
.end method

.method public final VoidLiteral()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/16 v0, 0x39

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    return-void
.end method

.method public final WhileStatement()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v3, Lbsh/BSHWhileStatement;

    const/16 v0, 0x1e

    invoke-direct {v3, v0}, Lbsh/BSHWhileStatement;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/16 v0, 0x3b

    :try_start_0
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Statement()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    :try_start_2
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_1

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :goto_0
    if-eqz v1, :cond_0

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_0
    throw v0

    :cond_1
    :try_start_3
    instance-of v4, v0, Lbsh/ParseException;

    if-eqz v4, :cond_2

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_2
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_0
.end method

.method createParseException(Ljava/lang/String;)Lbsh/ParseException;
    .locals 5

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iget v1, v0, Lbsh/Token;->beginLine:I

    iget v2, v0, Lbsh/Token;->beginColumn:I

    iget v3, v0, Lbsh/Token;->kind:I

    if-nez v3, :cond_0

    sget-object v0, Lbsh/ParserConstants;->tokenImage:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    :goto_0
    new-instance v0, Lbsh/ParseException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Parse error at line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, ", column "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/ParseException;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    iget-object v0, v0, Lbsh/Token;->image:Ljava/lang/String;

    goto :goto_0
.end method

.method public final disable_tracing()V
    .locals 0

    return-void
.end method

.method public final enable_tracing()V
    .locals 0

    return-void
.end method

.method public generateParseException()Lbsh/ParseException;
    .locals 6

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iget-object v0, v0, Lbsh/Token;->next:Lbsh/Token;

    iget v1, v0, Lbsh/Token;->beginLine:I

    iget v2, v0, Lbsh/Token;->beginColumn:I

    iget v3, v0, Lbsh/Token;->kind:I

    if-nez v3, :cond_0

    sget-object v0, Lbsh/ParserConstants;->tokenImage:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    :goto_0
    new-instance v3, Lbsh/ParseException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Parse error at line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, ", column "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".  Encountered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lbsh/ParseException;-><init>(Ljava/lang/String;)V

    return-object v3

    :cond_0
    iget-object v0, v0, Lbsh/Token;->image:Ljava/lang/String;

    goto :goto_0
.end method

.method public final getNextToken()Lbsh/Token;
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iget-object v0, v0, Lbsh/Token;->next:Lbsh/Token;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iget-object v0, v0, Lbsh/Token;->next:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lbsh/Parser;->jj_ntk:I

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    return-object v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iget-object v1, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    invoke-virtual {v1}, Lbsh/ParserTokenManager;->getNextToken()Lbsh/Token;

    move-result-object v1

    iput-object v1, v0, Lbsh/Token;->next:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    goto :goto_0
.end method

.method public final getToken(I)Lbsh/Token;
    .locals 3

    iget-boolean v0, p0, Lbsh/Parser;->lookingAhead:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :goto_0
    const/4 v1, 0x0

    move-object v2, v0

    :goto_1
    if-ge v1, p1, :cond_2

    iget-object v0, v2, Lbsh/Token;->next:Lbsh/Token;

    if-eqz v0, :cond_1

    iget-object v0, v2, Lbsh/Token;->next:Lbsh/Token;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    invoke-virtual {v0}, Lbsh/ParserTokenManager;->getNextToken()Lbsh/Token;

    move-result-object v0

    iput-object v0, v2, Lbsh/Token;->next:Lbsh/Token;

    goto :goto_2

    :cond_2
    return-object v2
.end method

.method isRegularForStatement()Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v3}, Lbsh/Parser;->getToken(I)Lbsh/Token;

    move-result-object v0

    iget v0, v0, Lbsh/Token;->kind:I

    const/16 v4, 0x1e

    if-eq v0, v4, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v1}, Lbsh/Parser;->getToken(I)Lbsh/Token;

    move-result-object v1

    iget v1, v1, Lbsh/Token;->kind:I

    const/16 v4, 0x48

    if-eq v1, v4, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Lbsh/Parser;->getToken(I)Lbsh/Token;

    move-result-object v0

    iget v0, v0, Lbsh/Token;->kind:I

    sparse-switch v0, :sswitch_data_0

    move v0, v1

    goto :goto_1

    :sswitch_0
    move v0, v2

    goto :goto_0

    :sswitch_1
    move v0, v3

    goto :goto_0

    :sswitch_2
    move v0, v2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x4e -> :sswitch_1
        0x59 -> :sswitch_0
    .end sparse-switch
.end method

.method jjtreeCloseNodeScope(Lbsh/Node;)V
    .locals 1

    check-cast p1, Lbsh/SimpleNode;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/Parser;->getToken(I)Lbsh/Token;

    move-result-object v0

    iput-object v0, p1, Lbsh/SimpleNode;->lastToken:Lbsh/Token;

    return-void
.end method

.method jjtreeOpenNodeScope(Lbsh/Node;)V
    .locals 1

    check-cast p1, Lbsh/SimpleNode;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbsh/Parser;->getToken(I)Lbsh/Token;

    move-result-object v0

    iput-object v0, p1, Lbsh/SimpleNode;->firstToken:Lbsh/Token;

    return-void
.end method

.method public popNode()Lbsh/SimpleNode;
    .locals 1

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0}, Lbsh/JJTParserState;->nodeArity()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method reInitInput(Ljava/io/Reader;)V
    .locals 0

    invoke-virtual {p0, p1}, Lbsh/Parser;->ReInit(Ljava/io/Reader;)V

    return-void
.end method

.method reInitTokenInput(Ljava/io/Reader;)V
    .locals 3

    iget-object v0, p0, Lbsh/Parser;->jj_input_stream:Lbsh/JavaCharStream;

    iget-object v1, p0, Lbsh/Parser;->jj_input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v1}, Lbsh/JavaCharStream;->getEndLine()I

    move-result v1

    iget-object v2, p0, Lbsh/Parser;->jj_input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v2}, Lbsh/JavaCharStream;->getEndColumn()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lbsh/JavaCharStream;->ReInit(Ljava/io/Reader;II)V

    return-void
.end method

.method public setRetainComments(Z)V
    .locals 0

    iput-boolean p1, p0, Lbsh/Parser;->retainComments:Z

    return-void
.end method
