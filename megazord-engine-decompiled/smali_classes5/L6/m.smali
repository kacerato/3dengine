.class public LL6/m;
.super LX7/i;
.source "SourceFile"


# instance fields
.field public m:Ljava/lang/String;

.field public n:LL6/l;

.field public o:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;LL6/l;)V
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
    iput-boolean v0, p0, LL6/m;->o:Z

    .line 3
    iput-object p1, p0, LL6/m;->m:Ljava/lang/String;

    .line 4
    iput-object p2, p0, LL6/m;->n:LL6/l;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LL6/l;Z)V
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
    iput-object p1, p0, LL6/m;->m:Ljava/lang/String;

    .line 7
    iput-object p2, p0, LL6/m;->n:LL6/l;

    .line 8
    iput-boolean p3, p0, LL6/m;->o:Z

    if-eqz p3, :cond_0

    .line 9
    new-instance p1, LL6/m$a;

    invoke-direct {p1, p0}, LL6/m$a;-><init>(LL6/m;)V

    iput-object p1, p0, LX7/i;->j:LX7/c;

    :cond_0
    return-void
.end method


# virtual methods
.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LL6/m;->m:Ljava/lang/String;

    return-object v0
.end method

.method public u()LL6/l;
    .locals 1

    iget-object v0, p0, LL6/m;->n:LL6/l;

    return-object v0
.end method
