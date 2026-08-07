.class public final synthetic Lq1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU0/n;


# instance fields
.field public final synthetic a:Lq1/a;

.field public final synthetic b:Lr1/r;


# direct methods
.method public synthetic constructor <init>(Lq1/a;Lr1/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq1/h;->a:Lq1/a;

    iput-object p2, p0, Lq1/h;->b:Lr1/r;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lq1/h;->a:Lq1/a;

    iget-object v1, p0, Lq1/h;->b:Lr1/r;

    check-cast p1, LA1/b0;

    check-cast p2, LQ1/l;

    new-instance v2, Lq1/j;

    invoke-direct {v2, v0, p2}, Lq1/j;-><init>(Lq1/a;LQ1/l;)V

    invoke-virtual {p1}, LX0/f;->M()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, LA1/e0;

    invoke-virtual {p1, v2, v1}, LA1/e0;->f1(LA1/d0;Lr1/r;)V

    return-void
.end method
