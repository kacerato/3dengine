.class public final synthetic Ld1/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU0/n;


# instance fields
.field public final synthetic a:Ld1/B;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic c:Lc1/a;

.field public final synthetic d:Ld1/a;

.field public final synthetic e:Ld1/d;


# direct methods
.method public synthetic constructor <init>(Ld1/B;Ljava/util/concurrent/atomic/AtomicReference;Lc1/a;Ld1/a;Ld1/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld1/l;->a:Ld1/B;

    iput-object p2, p0, Ld1/l;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Ld1/l;->c:Lc1/a;

    iput-object p4, p0, Ld1/l;->d:Ld1/a;

    iput-object p5, p0, Ld1/l;->e:Ld1/d;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ld1/C;

    check-cast p2, LQ1/l;

    new-instance v0, Ld1/x;

    iget-object v1, p0, Ld1/l;->a:Ld1/B;

    iget-object v2, p0, Ld1/l;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Ld1/l;->c:Lc1/a;

    invoke-direct {v0, v1, v2, p2, v3}, Ld1/x;-><init>(Ld1/B;Ljava/util/concurrent/atomic/AtomicReference;LQ1/l;Lc1/a;)V

    invoke-virtual {p1}, LX0/f;->M()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Ld1/i;

    iget-object p2, p0, Ld1/l;->d:Ld1/a;

    iget-object v1, p0, Ld1/l;->e:Ld1/d;

    invoke-virtual {p1, v0, p2, v1}, Ld1/i;->j2(Ld1/h;Ld1/a;Ld1/k;)V

    return-void
.end method
