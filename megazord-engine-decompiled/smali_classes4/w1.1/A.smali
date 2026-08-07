.class public final synthetic Lw1/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU0/n;


# instance fields
.field public final synthetic a:Lw1/c;


# direct methods
.method public synthetic constructor <init>(Lw1/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw1/A;->a:Lw1/c;

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

    new-instance v0, Lw1/C;

    iget-object v1, p0, Lw1/A;->a:Lw1/c;

    invoke-direct {v0, v1, p2}, Lw1/C;-><init>(Lw1/c;LQ1/l;)V

    invoke-virtual {p1, v0}, Lw1/k;->j2(Lw1/m;)V

    return-void
.end method
