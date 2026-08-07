.class public LH8/f;
.super Ld5/e;
.source "SourceFile"


# instance fields
.field public final b:LJAVARuntime/TerminalCLIExtension;


# direct methods
.method public constructor <init>(LJAVARuntime/TerminalCLIExtension;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cliExtension"
        }
    .end annotation

    invoke-direct {p0}, Ld5/e;-><init>()V

    invoke-virtual {p1, p0}, LJAVARuntime/TerminalCLIExtension;->setInstance(LH8/f;)V

    iput-object p1, p0, LH8/f;->b:LJAVARuntime/TerminalCLIExtension;

    return-void
.end method

.method public static synthetic o(LH8/f;)LJAVARuntime/TerminalCLIExtension;
    .locals 0

    iget-object p0, p0, LH8/f;->b:LJAVARuntime/TerminalCLIExtension;

    return-object p0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, LH8/f$d;

    invoke-direct {v1, p0, v0}, LH8/f$d;-><init>(LH8/f;[Ljava/lang/String;)V

    invoke-static {v1}, Lv8/m;->b(LG8/d;)Z

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, LH8/f$c;

    invoke-direct {v1, p0, v0}, LH8/f$c;-><init>(LH8/f;[Ljava/lang/String;)V

    invoke-static {v1}, Lv8/m;->b(LG8/d;)Z

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "command"
        }
    .end annotation

    invoke-super {p0, p1}, Ld5/e;->m(Ljava/lang/String;)V

    new-instance v0, LH8/f$b;

    invoke-direct {v0, p0, p1}, LH8/f$b;-><init>(LH8/f;Ljava/lang/String;)V

    invoke-static {v0}, Lv8/m;->b(LG8/d;)Z

    return-void
.end method

.method public n([Ljava/lang/String;Ld5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "args",
            "terminal"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Ld5/e;->n([Ljava/lang/String;Ld5/d;)V

    new-instance p2, LH8/f$a;

    invoke-direct {p2, p0, p1}, LH8/f$a;-><init>(LH8/f;[Ljava/lang/String;)V

    invoke-static {p2}, Lv8/m;->b(LG8/d;)Z

    return-void
.end method
