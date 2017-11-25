.class public Lbsh/util/JDemoApplet;
.super Ljavax/swing/JApplet;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljavax/swing/JApplet;-><init>()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    invoke-virtual {p0}, Lbsh/util/JDemoApplet;->getContentPane()Ljava/awt/Container;

    move-result-object v0

    new-instance v1, Ljava/awt/BorderLayout;

    invoke-direct {v1}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v0, v1}, Ljava/awt/Container;->setLayout(Ljava/awt/LayoutManager;)V

    new-instance v1, Lbsh/util/JConsole;

    invoke-direct {v1}, Lbsh/util/JConsole;-><init>()V

    invoke-virtual {p0}, Lbsh/util/JDemoApplet;->getContentPane()Ljava/awt/Container;

    move-result-object v2

    const-string v3, "Center"

    move-object v0, v1

    check-cast v0, Ljava/awt/Component;

    invoke-virtual {v2, v3, v0}, Ljava/awt/Container;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    new-instance v0, Lbsh/Interpreter;

    invoke-direct {v0, v1}, Lbsh/Interpreter;-><init>(Lbsh/ConsoleInterface;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method
