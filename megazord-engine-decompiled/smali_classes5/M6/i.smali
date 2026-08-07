.class public LM6/i;
.super LX7/i;
.source "SourceFile"


# instance fields
.field public m:Ljava/lang/String;

.field public n:LM6/h;

.field public o:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;LM6/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "stack"
        }
    .end annotation

    .line 1
    new-instance v0, LE7/c;

    invoke-direct {v0}, LE7/c;-><init>()V

    invoke-direct {p0, p1, v0}, LX7/i;-><init>(Ljava/lang/String;LX7/j;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LM6/i;->o:Z

    .line 3
    iput-object p1, p0, LM6/i;->m:Ljava/lang/String;

    .line 4
    iput-object p2, p0, LM6/i;->n:LM6/h;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LM6/h;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "text",
            "stack",
            "isEditor"
        }
    .end annotation

    .line 5
    new-instance v0, LE7/c;

    invoke-direct {v0}, LE7/c;-><init>()V

    invoke-direct {p0, p1, v0}, LX7/i;-><init>(Ljava/lang/String;LX7/j;)V

    .line 6
    iput-object p1, p0, LM6/i;->m:Ljava/lang/String;

    .line 7
    iput-object p2, p0, LM6/i;->n:LM6/h;

    .line 8
    iput-boolean p3, p0, LM6/i;->o:Z

    if-eqz p3, :cond_0

    .line 9
    new-instance p1, LM6/i$a;

    invoke-direct {p1, p0}, LM6/i$a;-><init>(LM6/i;)V

    iput-object p1, p0, LX7/i;->j:LX7/c;

    :cond_0
    return-void
.end method


# virtual methods
.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LM6/i;->m:Ljava/lang/String;

    return-object v0
.end method

.method public u()LM6/h;
    .locals 1

    iget-object v0, p0, LM6/i;->n:LM6/h;

    return-object v0
.end method
