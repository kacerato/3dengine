.class public final synthetic Lw1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU0/n;


# instance fields
.field public final synthetic a:Lw1/u;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lw1/u;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw1/o;->a:Lw1/u;

    iput-object p2, p0, Lw1/o;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lw1/z;

    check-cast p2, LQ1/l;

    new-instance v0, Lw1/t;

    iget-object v1, p0, Lw1/o;->a:Lw1/u;

    invoke-direct {v0, v1, p2}, Lw1/t;-><init>(Lw1/u;LQ1/l;)V

    invoke-virtual {p1}, LX0/f;->M()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lw1/k;

    iget-object p2, p0, Lw1/o;->b:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lw1/k;->f1(Ljava/lang/String;Lw1/j;)V

    return-void
.end method
