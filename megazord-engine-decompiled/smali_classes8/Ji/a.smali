.class public LJi/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LHi/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LHi/a;

    invoke-direct {v0}, LHi/a;-><init>()V

    iput-object v0, p0, LJi/a;->a:LHi/a;

    return-void
.end method


# virtual methods
.method public a(LJi/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphData"
        }
    .end annotation

    iget-object p1, p1, LJi/e;->c:[LEi/q;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, LJi/a;->a:LHi/a;

    invoke-virtual {v3, v2}, LHi/a;->a(LEi/q;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
