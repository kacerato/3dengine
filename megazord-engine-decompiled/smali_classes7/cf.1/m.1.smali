.class public final Lcf/m;
.super LTe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcf/m$a;
    }
.end annotation


# instance fields
.field public final b:LTe/i;

.field public final c:LXe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/i;LXe/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/i;",
            "LXe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/c;-><init>()V

    iput-object p1, p0, Lcf/m;->b:LTe/i;

    iput-object p2, p0, Lcf/m;->c:LXe/g;

    return-void
.end method


# virtual methods
.method public K0(LTe/f;)V
    .locals 2

    iget-object v0, p0, Lcf/m;->b:LTe/i;

    new-instance v1, Lcf/m$a;

    invoke-direct {v1, p0, p1}, Lcf/m$a;-><init>(Lcf/m;LTe/f;)V

    invoke-interface {v0, v1}, LTe/i;->b(LTe/f;)V

    return-void
.end method
