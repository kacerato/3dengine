.class public LH6/g;
.super LX7/i;
.source "SourceFile"


# instance fields
.field public m:Ljava/lang/String;

.field public n:LH6/f;


# direct methods
.method public constructor <init>(Ljava/lang/String;LH6/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "profile"
        }
    .end annotation

    new-instance v0, LE7/c;

    invoke-direct {v0}, LE7/c;-><init>()V

    invoke-direct {p0, p1, v0}, LX7/i;-><init>(Ljava/lang/String;LX7/j;)V

    iput-object p1, p0, LH6/g;->m:Ljava/lang/String;

    iput-object p2, p0, LH6/g;->n:LH6/f;

    return-void
.end method


# virtual methods
.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LH6/g;->m:Ljava/lang/String;

    return-object v0
.end method

.method public u()LH6/f;
    .locals 1

    iget-object v0, p0, LH6/g;->n:LH6/f;

    return-object v0
.end method
