.class public Lbsh/util/JConsole;
.super Ljavax/swing/JScrollPane;

# interfaces
.implements Lbsh/util/GUIConsoleInterface;
.implements Ljava/lang/Runnable;
.implements Ljava/awt/event/KeyListener;
.implements Ljava/awt/event/MouseListener;
.implements Ljava/awt/event/ActionListener;
.implements Ljava/beans/PropertyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsh/util/JConsole$BlockingPipedInputStream;
    }
.end annotation


# static fields
.field private static final COPY:Ljava/lang/String; = "Copy"

.field private static final CUT:Ljava/lang/String; = "Cut"

.field private static final PASTE:Ljava/lang/String; = "Paste"


# instance fields
.field final SHOW_AMBIG_MAX:I

.field ZEROS:Ljava/lang/String;

.field private cmdStart:I

.field private doc:Ljavax/swing/text/DefaultStyledDocument;

.field private gotUp:Z

.field private histLine:I

.field private history:Ljava/util/Vector;

.field private in:Ljava/io/InputStream;

.field private inPipe:Ljava/io/InputStream;

.field private menu:Ljavax/swing/JPopupMenu;

.field nameCompletion:Lbsh/util/NameCompletion;

.field private out:Ljava/io/PrintStream;

.field private outPipe:Ljava/io/OutputStream;

.field private startedLine:Ljava/lang/String;

.field private text:Ljavax/swing/JTextPane;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lbsh/util/JConsole;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 6

    const/4 v5, 0x7

    const/4 v4, 0x5

    const/4 v3, 0x0

    invoke-direct {p0}, Ljavax/swing/JScrollPane;-><init>()V

    iput v3, p0, Lbsh/util/JConsole;->cmdStart:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lbsh/util/JConsole;->history:Ljava/util/Vector;

    iput v3, p0, Lbsh/util/JConsole;->histLine:I

    const/16 v0, 0xa

    iput v0, p0, Lbsh/util/JConsole;->SHOW_AMBIG_MAX:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbsh/util/JConsole;->gotUp:Z

    const-string v0, "000"

    iput-object v0, p0, Lbsh/util/JConsole;->ZEROS:Ljava/lang/String;

    new-instance v0, Lbsh/util/JConsole$1;

    new-instance v1, Ljavax/swing/text/DefaultStyledDocument;

    invoke-direct {v1}, Ljavax/swing/text/DefaultStyledDocument;-><init>()V

    iput-object v1, p0, Lbsh/util/JConsole;->doc:Ljavax/swing/text/DefaultStyledDocument;

    invoke-direct {v0, p0, v1}, Lbsh/util/JConsole$1;-><init>(Lbsh/util/JConsole;Ljavax/swing/text/StyledDocument;)V

    iput-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    new-instance v0, Ljava/awt/Font;

    const-string v1, "Monospaced"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v3, v2}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    iget-object v1, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljavax/swing/JTextPane;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v1, v0}, Ljavax/swing/JTextPane;->setFont(Ljava/awt/Font;)V

    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    new-instance v1, Ljava/awt/Insets;

    invoke-direct {v1, v5, v4, v5, v4}, Ljava/awt/Insets;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljavax/swing/JTextPane;->setMargin(Ljava/awt/Insets;)V

    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0, p0}, Ljavax/swing/JTextPane;->addKeyListener(Ljava/awt/event/KeyListener;)V

    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {p0, v0}, Lbsh/util/JConsole;->setViewportView(Ljava/awt/Component;)V

    new-instance v0, Ljavax/swing/JPopupMenu;

    const-string v1, "JConsole\tMenu"

    invoke-direct {v0, v1}, Ljavax/swing/JPopupMenu;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbsh/util/JConsole;->menu:Ljavax/swing/JPopupMenu;

    iget-object v0, p0, Lbsh/util/JConsole;->menu:Ljavax/swing/JPopupMenu;

    new-instance v1, Ljavax/swing/JMenuItem;

    const-string v2, "Cut"

    invoke-direct {v1, v2}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JPopupMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    iget-object v0, p0, Lbsh/util/JConsole;->menu:Ljavax/swing/JPopupMenu;

    new-instance v1, Ljavax/swing/JMenuItem;

    const-string v2, "Copy"

    invoke-direct {v1, v2}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JPopupMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    iget-object v0, p0, Lbsh/util/JConsole;->menu:Ljavax/swing/JPopupMenu;

    new-instance v1, Ljavax/swing/JMenuItem;

    const-string v2, "Paste"

    invoke-direct {v1, v2}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JPopupMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0, p0}, Ljavax/swing/JTextPane;->addMouseListener(Ljava/awt/event/MouseListener;)V

    invoke-static {p0}, Ljavax/swing/UIManager;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    iput-object p2, p0, Lbsh/util/JConsole;->outPipe:Ljava/io/OutputStream;

    iget-object v0, p0, Lbsh/util/JConsole;->outPipe:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/PipedOutputStream;

    invoke-direct {v0}, Ljava/io/PipedOutputStream;-><init>()V

    iput-object v0, p0, Lbsh/util/JConsole;->outPipe:Ljava/io/OutputStream;

    :try_start_0
    new-instance v1, Ljava/io/PipedInputStream;

    iget-object v0, p0, Lbsh/util/JConsole;->outPipe:Ljava/io/OutputStream;

    check-cast v0, Ljava/io/PipedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    iput-object v1, p0, Lbsh/util/JConsole;->in:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iput-object p1, p0, Lbsh/util/JConsole;->inPipe:Ljava/io/InputStream;

    iget-object v0, p0, Lbsh/util/JConsole;->inPipe:Ljava/io/InputStream;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/PipedOutputStream;

    invoke-direct {v0}, Ljava/io/PipedOutputStream;-><init>()V

    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lbsh/util/JConsole;->out:Ljava/io/PrintStream;

    :try_start_1
    new-instance v1, Lbsh/util/JConsole$BlockingPipedInputStream;

    invoke-direct {v1, v0}, Lbsh/util/JConsole$BlockingPipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    iput-object v1, p0, Lbsh/util/JConsole;->inPipe:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {p0}, Lbsh/util/JConsole;->requestFocus()V

    return-void

    :catch_0
    move-exception v0

    const-string v0, "Console internal\terror (1)..."

    sget-object v1, Ljava/awt/Color;->red:Ljava/awt/Color;

    invoke-virtual {p0, v0, v1}, Lbsh/util/JConsole;->print(Ljava/lang/Object;Ljava/awt/Color;)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Console internal error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/util/JConsole;->print(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private acceptLine(Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Lbsh/util/JConsole;->ZEROS:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    rsub-int/lit8 v7, v7, 0x4

    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "\\u"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbsh/util/JConsole;->outPipe:Ljava/io/OutputStream;

    if-nez v1, :cond_1

    const-string v0, "Console internal\terror: cannot output ..."

    sget-object v1, Ljava/awt/Color;->red:Ljava/awt/Color;

    invoke-virtual {p0, v0, v1}, Lbsh/util/JConsole;->print(Ljava/lang/Object;Ljava/awt/Color;)V

    :goto_1
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lbsh/util/JConsole;->outPipe:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lbsh/util/JConsole;->outPipe:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/util/JConsole;->outPipe:Ljava/io/OutputStream;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Console pipe broken..."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static access$000(Lbsh/util/JConsole;)Ljavax/swing/JTextPane;
    .locals 1

    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    return-object v0
.end method

.method static access$100(Lbsh/util/JConsole;)I
    .locals 1

    iget v0, p0, Lbsh/util/JConsole;->cmdStart:I

    return v0
.end method

.method static access$200(Lbsh/util/JConsole;)V
    .locals 0

    invoke-direct {p0}, Lbsh/util/JConsole;->forceCaretMoveToEnd()V

    return-void
.end method

.method static access$300(Lbsh/util/JConsole;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lbsh/util/JConsole;->append(Ljava/lang/String;)V

    return-void
.end method

.method static access$400(Lbsh/util/JConsole;)V
    .locals 0

    invoke-direct {p0}, Lbsh/util/JConsole;->resetCommandStart()V

    return-void
.end method

.method static access$500(Lbsh/util/JConsole;)Ljavax/swing/text/AttributeSet;
    .locals 1

    invoke-direct {p0}, Lbsh/util/JConsole;->getStyle()Ljavax/swing/text/AttributeSet;

    move-result-object v0

    return-object v0
.end method

.method static access$600(Lbsh/util/JConsole;Ljava/awt/Font;Ljava/awt/Color;)Ljavax/swing/text/AttributeSet;
    .locals 1

    invoke-direct {p0, p1, p2}, Lbsh/util/JConsole;->setStyle(Ljava/awt/Font;Ljava/awt/Color;)Ljavax/swing/text/AttributeSet;

    move-result-object v0

    return-object v0
.end method

.method static access$700(Lbsh/util/JConsole;Ljavax/swing/text/AttributeSet;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lbsh/util/JConsole;->setStyle(Ljavax/swing/text/AttributeSet;Z)V

    return-void
.end method

.method static access$800(Lbsh/util/JConsole;Ljava/lang/String;ILjava/awt/Color;ZZZ)Ljavax/swing/text/AttributeSet;
    .locals 1

    invoke-direct/range {p0 .. p6}, Lbsh/util/JConsole;->setStyle(Ljava/lang/String;ILjava/awt/Color;ZZZ)Ljavax/swing/text/AttributeSet;

    move-result-object v0

    return-object v0
.end method

.method private append(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lbsh/util/JConsole;->textLength()I

    move-result v0

    iget-object v1, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v1, v0, v0}, Ljavax/swing/JTextPane;->select(II)V

    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0, p1}, Ljavax/swing/JTextPane;->replaceSelection(Ljava/lang/String;)V

    return-void
.end method

.method private doCommandCompletion(Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x0

    const/16 v7, 0xa

    iget-object v0, p0, Lbsh/util/JConsole;->nameCompletion:Lbsh/util/NameCompletion;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_3

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lbsh/util/JConsole;->nameCompletion:Lbsh/util/NameCompletion;

    invoke-interface {v2, v0}, Lbsh/util/NameCompletion;->completeName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-nez v3, :cond_4

    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/Toolkit;->beep()V

    goto :goto_0

    :cond_4
    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    aget-object v1, v2, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbsh/util/JConsole;->append(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0}, Ljavax/swing/JTextPane;->getText()Ljava/lang/String;

    move-result-object v3

    iget v0, p0, Lbsh/util/JConsole;->cmdStart:I

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iget v0, p0, Lbsh/util/JConsole;->cmdStart:I

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_6

    if-lez v0, :cond_6

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    iget v5, p0, Lbsh/util/JConsole;->cmdStart:I

    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v0, "\n"

    invoke-direct {v5, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move v0, v1

    :goto_3
    array-length v1, v2

    if-ge v0, v1, :cond_7

    if-ge v0, v7, :cond_7

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    aget-object v6, v2, v0

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v6, "\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    if-ne v0, v7, :cond_8

    const-string v0, "...\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    sget-object v0, Ljava/awt/Color;->gray:Ljava/awt/Color;

    invoke-virtual {p0, v5, v0}, Lbsh/util/JConsole;->print(Ljava/lang/Object;Ljava/awt/Color;)V

    invoke-virtual {p0, v3}, Lbsh/util/JConsole;->print(Ljava/lang/Object;)V

    invoke-direct {p0, v4}, Lbsh/util/JConsole;->append(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private enter()V
    .locals 2

    invoke-direct {p0}, Lbsh/util/JConsole;->getCmd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, ";\n"

    :goto_0
    const-string v1, "\n"

    invoke-direct {p0, v1}, Lbsh/util/JConsole;->append(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput v1, p0, Lbsh/util/JConsole;->histLine:I

    invoke-direct {p0, v0}, Lbsh/util/JConsole;->acceptLine(Ljava/lang/String;)V

    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0}, Ljavax/swing/JTextPane;->repaint()V

    return-void

    :cond_0
    iget-object v1, p0, Lbsh/util/JConsole;->history:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private forceCaretMoveToEnd()V
    .locals 2

    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0}, Ljavax/swing/JTextPane;->getCaretPosition()I

    move-result v0

    iget v1, p0, Lbsh/util/JConsole;->cmdStart:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-direct {p0}, Lbsh/util/JConsole;->textLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/swing/JTextPane;->setCaretPosition(I)V

    :cond_0
    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0}, Ljavax/swing/JTextPane;->repaint()V

    return-void
.end method

.method private forceCaretMoveToStart()V
    .locals 2

    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0}, Ljavax/swing/JTextPane;->getCaretPosition()I

    move-result v0

    iget v1, p0, Lbsh/util/JConsole;->cmdStart:I

    if-ge v0, v1, :cond_0

    :cond_0
    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0}, Ljavax/swing/JTextPane;->repaint()V

    return-void
.end method

.method private getCmd()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    iget v2, p0, Lbsh/util/JConsole;->cmdStart:I

    invoke-direct {p0}, Lbsh/util/JConsole;->textLength()I

    move-result v3

    iget v4, p0, Lbsh/util/JConsole;->cmdStart:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Ljavax/swing/JTextPane;->getText(II)Ljava/lang/String;
    :try_end_0
    .catch Ljavax/swing/text/BadLocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Internal JConsole Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getStyle()Ljavax/swing/text/AttributeSet;
    .locals 1

    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0}, Ljavax/swing/JTextPane;->getCharacterAttributes()Ljavax/swing/text/AttributeSet;

    move-result-object v0

    return-object v0
.end method

.method private historyDown()V
    .locals 1

    iget v0, p0, Lbsh/util/JConsole;->histLine:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lbsh/util/JConsole;->histLine:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbsh/util/JConsole;->histLine:I

    invoke-direct {p0}, Lbsh/util/JConsole;->showHistoryLine()V

    goto :goto_0
.end method

.method private historyUp()V
    .locals 2

    iget-object v0, p0, Lbsh/util/JConsole;->history:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lbsh/util/JConsole;->histLine:I

    if-nez v0, :cond_2

    invoke-direct {p0}, Lbsh/util/JConsole;->getCmd()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbsh/util/JConsole;->startedLine:Ljava/lang/String;

    :cond_2
    iget v0, p0, Lbsh/util/JConsole;->histLine:I

    iget-object v1, p0, Lbsh/util/JConsole;->history:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lbsh/util/JConsole;->histLine:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/util/JConsole;->histLine:I

    invoke-direct {p0}, Lbsh/util/JConsole;->showHistoryLine()V

    goto :goto_0
.end method

.method private inPipeWatcher()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x100

    new-array v0, v0, [B

    :goto_0
    iget-object v1, p0, Lbsh/util/JConsole;->inPipe:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v2}, Lbsh/util/JConsole;->print(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "Console: Input\tclosed..."

    invoke-virtual {p0, v0}, Lbsh/util/JConsole;->println(Ljava/lang/Object;)V

    return-void
.end method

.method private invokeAndWait(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Ljavax/swing/SwingUtilities;->isEventDispatchThread()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p1}, Ljavax/swing/SwingUtilities;->invokeAndWait(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private replaceRange(Ljava/lang/Object;II)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v1, p2, p3}, Ljavax/swing/JTextPane;->select(II)V

    iget-object v1, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v1, v0}, Ljavax/swing/JTextPane;->replaceSelection(Ljava/lang/String;)V

    return-object v0
.end method

.method private resetCommandStart()V
    .locals 1

    invoke-direct {p0}, Lbsh/util/JConsole;->textLength()I

    move-result v0

    iput v0, p0, Lbsh/util/JConsole;->cmdStart:I

    return-void
.end method

.method private setStyle(Ljava/awt/Color;)Ljavax/swing/text/AttributeSet;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lbsh/util/JConsole;->setStyle(Ljava/awt/Font;Ljava/awt/Color;)Ljavax/swing/text/AttributeSet;

    move-result-object v0

    return-object v0
.end method

.method private setStyle(Ljava/awt/Font;)Ljavax/swing/text/AttributeSet;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbsh/util/JConsole;->setStyle(Ljava/awt/Font;Ljava/awt/Color;)Ljavax/swing/text/AttributeSet;

    move-result-object v0

    return-object v0
.end method

.method private setStyle(Ljava/awt/Font;Ljava/awt/Color;)Ljavax/swing/text/AttributeSet;
    .locals 7

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/awt/Font;->getFamily()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/awt/Font;->getSize()I

    move-result v2

    invoke-virtual {p1}, Ljava/awt/Font;->isBold()Z

    move-result v4

    invoke-virtual {p1}, Ljava/awt/Font;->isItalic()Z

    move-result v5

    invoke-direct {p0}, Lbsh/util/JConsole;->getStyle()Ljavax/swing/text/AttributeSet;

    move-result-object v0

    invoke-static {v0}, Ljavax/swing/text/StyleConstants;->isUnderline(Ljavax/swing/text/AttributeSet;)Z

    move-result v6

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lbsh/util/JConsole;->setStyle(Ljava/lang/String;ILjava/awt/Color;ZZZ)Ljavax/swing/text/AttributeSet;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p2}, Lbsh/util/JConsole;->setStyle(Ljava/lang/String;ILjava/awt/Color;)Ljavax/swing/text/AttributeSet;

    move-result-object v0

    goto :goto_0
.end method

.method private setStyle(Ljava/lang/String;ILjava/awt/Color;)Ljavax/swing/text/AttributeSet;
    .locals 2

    new-instance v0, Ljavax/swing/text/SimpleAttributeSet;

    invoke-direct {v0}, Ljavax/swing/text/SimpleAttributeSet;-><init>()V

    if-eqz p3, :cond_0

    invoke-static {v0, p3}, Ljavax/swing/text/StyleConstants;->setForeground(Ljavax/swing/text/MutableAttributeSet;Ljava/awt/Color;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {v0, p1}, Ljavax/swing/text/StyleConstants;->setFontFamily(Ljavax/swing/text/MutableAttributeSet;Ljava/lang/String;)V

    :cond_1
    const/4 v1, -0x1

    if-eq p2, v1, :cond_2

    invoke-static {v0, p2}, Ljavax/swing/text/StyleConstants;->setFontSize(Ljavax/swing/text/MutableAttributeSet;I)V

    :cond_2
    invoke-direct {p0, v0}, Lbsh/util/JConsole;->setStyle(Ljavax/swing/text/AttributeSet;)V

    invoke-direct {p0}, Lbsh/util/JConsole;->getStyle()Ljavax/swing/text/AttributeSet;

    move-result-object v0

    return-object v0
.end method

.method private setStyle(Ljava/lang/String;ILjava/awt/Color;ZZZ)Ljavax/swing/text/AttributeSet;
    .locals 2

    new-instance v0, Ljavax/swing/text/SimpleAttributeSet;

    invoke-direct {v0}, Ljavax/swing/text/SimpleAttributeSet;-><init>()V

    if-eqz p3, :cond_0

    invoke-static {v0, p3}, Ljavax/swing/text/StyleConstants;->setForeground(Ljavax/swing/text/MutableAttributeSet;Ljava/awt/Color;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {v0, p1}, Ljavax/swing/text/StyleConstants;->setFontFamily(Ljavax/swing/text/MutableAttributeSet;Ljava/lang/String;)V

    :cond_1
    const/4 v1, -0x1

    if-eq p2, v1, :cond_2

    invoke-static {v0, p2}, Ljavax/swing/text/StyleConstants;->setFontSize(Ljavax/swing/text/MutableAttributeSet;I)V

    :cond_2
    invoke-static {v0, p4}, Ljavax/swing/text/StyleConstants;->setBold(Ljavax/swing/text/MutableAttributeSet;Z)V

    invoke-static {v0, p5}, Ljavax/swing/text/StyleConstants;->setItalic(Ljavax/swing/text/MutableAttributeSet;Z)V

    invoke-static {v0, p6}, Ljavax/swing/text/StyleConstants;->setUnderline(Ljavax/swing/text/MutableAttributeSet;Z)V

    invoke-direct {p0, v0}, Lbsh/util/JConsole;->setStyle(Ljavax/swing/text/AttributeSet;)V

    invoke-direct {p0}, Lbsh/util/JConsole;->getStyle()Ljavax/swing/text/AttributeSet;

    move-result-object v0

    return-object v0
.end method

.method private setStyle(Ljavax/swing/text/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbsh/util/JConsole;->setStyle(Ljavax/swing/text/AttributeSet;Z)V

    return-void
.end method

.method private setStyle(Ljavax/swing/text/AttributeSet;Z)V
    .locals 1

    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0, p1, p2}, Ljavax/swing/JTextPane;->setCharacterAttributes(Ljavax/swing/text/AttributeSet;Z)V

    return-void
.end method

.method private showHistoryLine()V
    .locals 3

    iget v0, p0, Lbsh/util/JConsole;->histLine:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lbsh/util/JConsole;->startedLine:Ljava/lang/String;

    :goto_0
    iget v1, p0, Lbsh/util/JConsole;->cmdStart:I

    invoke-direct {p0}, Lbsh/util/JConsole;->textLength()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lbsh/util/JConsole;->replaceRange(Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-direct {p0}, Lbsh/util/JConsole;->textLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/swing/JTextPane;->setCaretPosition(I)V

    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0}, Ljavax/swing/JTextPane;->repaint()V

    return-void

    :cond_0
    iget-object v0, p0, Lbsh/util/JConsole;->history:Ljava/util/Vector;

    iget-object v1, p0, Lbsh/util/JConsole;->history:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget v2, p0, Lbsh/util/JConsole;->histLine:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private textLength()I
    .locals 1

    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0}, Ljavax/swing/JTextPane;->getDocument()Ljavax/swing/text/Document;

    move-result-object v0

    invoke-interface {v0}, Ljavax/swing/text/Document;->getLength()I

    move-result v0

    return v0
.end method

.method private declared-synchronized type(Ljava/awt/event/KeyEvent;)V
    .locals 3

    const/16 v1, 0x191

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0xe

    if-nez v0, :cond_0

    invoke-direct {p0}, Lbsh/util/JConsole;->forceCaretMoveToEnd()V

    :cond_0
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->paramString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Backspace"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0}, Ljavax/swing/JTextPane;->getCaretPosition()I

    move-result v0

    iget v1, p0, Lbsh/util/JConsole;->cmdStart:I

    if-gt v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->consume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    :sswitch_0
    monitor-exit p0

    return-void

    :sswitch_1
    :try_start_1
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->getID()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lbsh/util/JConsole;->gotUp:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lbsh/util/JConsole;->enter()V

    invoke-direct {p0}, Lbsh/util/JConsole;->resetCommandStart()V

    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    iget v1, p0, Lbsh/util/JConsole;->cmdStart:I

    invoke-virtual {v0, v1}, Ljavax/swing/JTextPane;->setCaretPosition(I)V

    :cond_2
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->consume()V

    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0}, Ljavax/swing/JTextPane;->repaint()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->getID()I

    move-result v0

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lbsh/util/JConsole;->historyUp()V

    :cond_3
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->consume()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->getID()I

    move-result v0

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lbsh/util/JConsole;->historyDown()V

    :cond_4
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->consume()V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0}, Ljavax/swing/JTextPane;->getCaretPosition()I

    move-result v0

    iget v1, p0, Lbsh/util/JConsole;->cmdStart:I

    if-gt v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->consume()V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Lbsh/util/JConsole;->forceCaretMoveToStart()V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    iget v1, p0, Lbsh/util/JConsole;->cmdStart:I

    invoke-virtual {v0, v1}, Ljavax/swing/JTextPane;->setCaretPosition(I)V

    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->consume()V

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_1

    const-string v0, ""

    iget v1, p0, Lbsh/util/JConsole;->cmdStart:I

    invoke-direct {p0}, Lbsh/util/JConsole;->textLength()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lbsh/util/JConsole;->replaceRange(Ljava/lang/Object;II)Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lbsh/util/JConsole;->histLine:I

    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->consume()V

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0}, Ljavax/swing/JTextPane;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_5

    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->getID()I

    move-result v0

    if-ne v0, v1, :cond_5

    const-string v0, "^C"

    invoke-direct {p0, v0}, Lbsh/util/JConsole;->append(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->consume()V

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->getID()I

    move-result v0

    const/16 v1, 0x192

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0}, Ljavax/swing/JTextPane;->getText()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lbsh/util/JConsole;->cmdStart:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbsh/util/JConsole;->doCommandCompletion(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->consume()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_4
        0x9 -> :sswitch_9
        0xa -> :sswitch_1
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x1b -> :sswitch_0
        0x24 -> :sswitch_6
        0x25 -> :sswitch_4
        0x26 -> :sswitch_2
        0x27 -> :sswitch_5
        0x28 -> :sswitch_3
        0x43 -> :sswitch_8
        0x55 -> :sswitch_7
        0x70 -> :sswitch_0
        0x71 -> :sswitch_0
        0x72 -> :sswitch_0
        0x73 -> :sswitch_0
        0x74 -> :sswitch_0
        0x75 -> :sswitch_0
        0x76 -> :sswitch_0
        0x77 -> :sswitch_0
        0x78 -> :sswitch_0
        0x79 -> :sswitch_0
        0x7a -> :sswitch_0
        0x7b -> :sswitch_0
        0x7f -> :sswitch_4
        0x91 -> :sswitch_0
        0x9a -> :sswitch_0
        0x9b -> :sswitch_0
        0x9d -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 2

    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getActionCommand()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0}, Ljavax/swing/JTextPane;->cut()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "Copy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0}, Ljavax/swing/JTextPane;->copy()V

    goto :goto_0

    :cond_2
    const-string v1, "Paste"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0}, Ljavax/swing/JTextPane;->paste()V

    goto :goto_0
.end method

.method public error(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Ljava/awt/Color;->red:Ljava/awt/Color;

    invoke-virtual {p0, p1, v0}, Lbsh/util/JConsole;->print(Ljava/lang/Object;Ljava/awt/Color;)V

    return-void
.end method

.method public getErr()Ljava/io/PrintStream;
    .locals 1

    iget-object v0, p0, Lbsh/util/JConsole;->out:Ljava/io/PrintStream;

    return-object v0
.end method

.method public getIn()Ljava/io/Reader;
    .locals 2

    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lbsh/util/JConsole;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lbsh/util/JConsole;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOut()Ljava/io/PrintStream;
    .locals 1

    iget-object v0, p0, Lbsh/util/JConsole;->out:Ljava/io/PrintStream;

    return-object v0
.end method

.method public keyPressed(Ljava/awt/event/KeyEvent;)V
    .locals 1

    invoke-direct {p0, p1}, Lbsh/util/JConsole;->type(Ljava/awt/event/KeyEvent;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbsh/util/JConsole;->gotUp:Z

    return-void
.end method

.method public keyReleased(Ljava/awt/event/KeyEvent;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbsh/util/JConsole;->gotUp:Z

    invoke-direct {p0, p1}, Lbsh/util/JConsole;->type(Ljava/awt/event/KeyEvent;)V

    return-void
.end method

.method public keyTyped(Ljava/awt/event/KeyEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lbsh/util/JConsole;->type(Ljava/awt/event/KeyEvent;)V

    return-void
.end method

.method public mouseClicked(Ljava/awt/event/MouseEvent;)V
    .locals 0

    return-void
.end method

.method public mouseEntered(Ljava/awt/event/MouseEvent;)V
    .locals 0

    return-void
.end method

.method public mouseExited(Ljava/awt/event/MouseEvent;)V
    .locals 0

    return-void
.end method

.method public mousePressed(Ljava/awt/event/MouseEvent;)V
    .locals 4

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->isPopupTrigger()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lbsh/util/JConsole;->menu:Ljavax/swing/JPopupMenu;

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/Component;

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getX()I

    move-result v2

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getY()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Ljavax/swing/JPopupMenu;->show(Ljava/awt/Component;II)V

    :cond_0
    return-void
.end method

.method public mouseReleased(Ljava/awt/event/MouseEvent;)V
    .locals 4

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->isPopupTrigger()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lbsh/util/JConsole;->menu:Ljavax/swing/JPopupMenu;

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/Component;

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getX()I

    move-result v2

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getY()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Ljavax/swing/JPopupMenu;->show(Ljava/awt/Component;II)V

    :cond_0
    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0}, Ljavax/swing/JTextPane;->repaint()V

    return-void
.end method

.method public print(Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lbsh/util/JConsole$2;

    invoke-direct {v0, p0, p1}, Lbsh/util/JConsole$2;-><init>(Lbsh/util/JConsole;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lbsh/util/JConsole;->invokeAndWait(Ljava/lang/Runnable;)V

    return-void
.end method

.method public print(Ljava/lang/Object;Ljava/awt/Color;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lbsh/util/JConsole;->print(Ljava/lang/Object;Ljava/awt/Font;Ljava/awt/Color;)V

    return-void
.end method

.method public print(Ljava/lang/Object;Ljava/awt/Font;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lbsh/util/JConsole;->print(Ljava/lang/Object;Ljava/awt/Font;Ljava/awt/Color;)V

    return-void
.end method

.method public print(Ljava/lang/Object;Ljava/awt/Font;Ljava/awt/Color;)V
    .locals 1

    new-instance v0, Lbsh/util/JConsole$4;

    invoke-direct {v0, p0, p2, p3, p1}, Lbsh/util/JConsole$4;-><init>(Lbsh/util/JConsole;Ljava/awt/Font;Ljava/awt/Color;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lbsh/util/JConsole;->invokeAndWait(Ljava/lang/Runnable;)V

    return-void
.end method

.method public print(Ljava/lang/Object;Ljava/lang/String;ILjava/awt/Color;)V
    .locals 8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, v5

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lbsh/util/JConsole;->print(Ljava/lang/Object;Ljava/lang/String;ILjava/awt/Color;ZZZ)V

    return-void
.end method

.method public print(Ljava/lang/Object;Ljava/lang/String;ILjava/awt/Color;ZZZ)V
    .locals 9

    new-instance v0, Lbsh/util/JConsole$5;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lbsh/util/JConsole$5;-><init>(Lbsh/util/JConsole;Ljava/lang/String;ILjava/awt/Color;ZZZLjava/lang/Object;)V

    invoke-direct {p0, v0}, Lbsh/util/JConsole;->invokeAndWait(Ljava/lang/Runnable;)V

    return-void
.end method

.method public print(Ljavax/swing/Icon;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lbsh/util/JConsole$3;

    invoke-direct {v0, p0, p1}, Lbsh/util/JConsole$3;-><init>(Lbsh/util/JConsole;Ljavax/swing/Icon;)V

    invoke-direct {p0, v0}, Lbsh/util/JConsole;->invokeAndWait(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public println()V
    .locals 1

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Lbsh/util/JConsole;->print(Ljava/lang/Object;)V

    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0}, Ljavax/swing/JTextPane;->repaint()V

    return-void
.end method

.method public println(Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/util/JConsole;->print(Ljava/lang/Object;)V

    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0}, Ljavax/swing/JTextPane;->repaint()V

    return-void
.end method

.method public println(Ljavax/swing/Icon;)V
    .locals 1

    invoke-virtual {p0, p1}, Lbsh/util/JConsole;->print(Ljavax/swing/Icon;)V

    invoke-virtual {p0}, Lbsh/util/JConsole;->println()V

    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0}, Ljavax/swing/JTextPane;->repaint()V

    return-void
.end method

.method public propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 2

    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lookAndFeel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/util/JConsole;->menu:Ljavax/swing/JPopupMenu;

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->updateComponentTreeUI(Ljava/awt/Component;)V

    :cond_0
    return-void
.end method

.method public requestFocus()V
    .locals 1

    invoke-super {p0}, Ljavax/swing/JScrollPane;->requestFocus()V

    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0}, Ljavax/swing/JTextPane;->requestFocus()V

    return-void
.end method

.method public run()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lbsh/util/JConsole;->inPipeWatcher()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Console: I/O Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/awt/Color;->red:Ljava/awt/Color;

    invoke-virtual {p0, v0, v1}, Lbsh/util/JConsole;->print(Ljava/lang/Object;Ljava/awt/Color;)V

    goto :goto_0
.end method

.method public setFont(Ljava/awt/Font;)V
    .locals 1

    invoke-super {p0, p1}, Ljavax/swing/JScrollPane;->setFont(Ljava/awt/Font;)V

    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0, p1}, Ljavax/swing/JTextPane;->setFont(Ljava/awt/Font;)V

    :cond_0
    return-void
.end method

.method public setNameCompletion(Lbsh/util/NameCompletion;)V
    .locals 0

    iput-object p1, p0, Lbsh/util/JConsole;->nameCompletion:Lbsh/util/NameCompletion;

    return-void
.end method

.method public setWaitFeedback(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/awt/Cursor;->getPredefinedCursor(I)Ljava/awt/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/util/JConsole;->setCursor(Ljava/awt/Cursor;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/awt/Cursor;->getPredefinedCursor(I)Ljava/awt/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/util/JConsole;->setCursor(Ljava/awt/Cursor;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "BeanShell console"

    return-object v0
.end method
