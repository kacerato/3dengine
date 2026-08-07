.class public LR5/c;
.super LR5/d;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, LR5/d;-><init>(Ljava/lang/String;)V

    new-instance v0, LR5/c$a;

    invoke-direct {v0, p0}, LR5/c$a;-><init>(LR5/c;)V

    iput-object v0, p0, LX7/i;->b:LX7/j;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LX7/i;->r(Z)V

    return-void
.end method


# virtual methods
.method public D(Ljava/util/List;LR5/d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "listInterface"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LB7/b;",
            ">;",
            "LR5/d$a;",
            ")V"
        }
    .end annotation

    return-void
.end method
