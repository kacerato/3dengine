.class public final Lcf/l;
.super LTe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcf/l$a;
    }
.end annotation


# instance fields
.field public final b:LTe/i;

.field public final c:LXe/a;


# direct methods
.method public constructor <init>(LTe/i;LXe/a;)V
    .locals 0

    invoke-direct {p0}, LTe/c;-><init>()V

    iput-object p1, p0, Lcf/l;->b:LTe/i;

    iput-object p2, p0, Lcf/l;->c:LXe/a;

    return-void
.end method


# virtual methods
.method public K0(LTe/f;)V
    .locals 3

    iget-object v0, p0, Lcf/l;->b:LTe/i;

    new-instance v1, Lcf/l$a;

    iget-object v2, p0, Lcf/l;->c:LXe/a;

    invoke-direct {v1, p1, v2}, Lcf/l$a;-><init>(LTe/f;LXe/a;)V

    invoke-interface {v0, v1}, LTe/i;->b(LTe/f;)V

    return-void
.end method
