.class public final synthetic Lw1/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU0/n;


# instance fields
.field public final synthetic a:Lw1/c;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lw1/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw1/B;->a:Lw1/c;

    iput-object p2, p0, Lw1/B;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lw1/z;

    check-cast p2, LQ1/l;

    invoke-virtual {p1}, LX0/f;->M()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lw1/k;

    new-instance v0, Lw1/b;

    iget-object v1, p0, Lw1/B;->a:Lw1/c;

    invoke-direct {v0, v1, p2}, Lw1/b;-><init>(Lw1/c;LQ1/l;)V

    iget-object p2, p0, Lw1/B;->b:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lw1/k;->k2(Ljava/lang/String;Lw1/m;)V

    return-void
.end method
