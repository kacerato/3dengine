.class public final Lcf/e;
.super LTe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcf/e$a;
    }
.end annotation


# instance fields
.field public final b:[LTe/i;


# direct methods
.method public constructor <init>([LTe/i;)V
    .locals 0

    invoke-direct {p0}, LTe/c;-><init>()V

    iput-object p1, p0, Lcf/e;->b:[LTe/i;

    return-void
.end method


# virtual methods
.method public K0(LTe/f;)V
    .locals 2

    new-instance v0, Lcf/e$a;

    iget-object v1, p0, Lcf/e;->b:[LTe/i;

    invoke-direct {v0, p1, v1}, Lcf/e$a;-><init>(LTe/f;[LTe/i;)V

    iget-object v1, v0, Lcf/e$a;->e:LYe/h;

    invoke-interface {p1, v1}, LTe/f;->e(LVe/c;)V

    invoke-virtual {v0}, Lcf/e$a;->b()V

    return-void
.end method
