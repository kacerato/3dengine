.class public final synthetic Lq1/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU0/n;


# instance fields
.field public final synthetic a:Lq1/c;


# direct methods
.method public synthetic constructor <init>(Lq1/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq1/s;->a:Lq1/c;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lq1/s;->a:Lq1/c;

    check-cast p1, LA1/W;

    check-cast p2, LQ1/l;

    new-instance v1, Lq1/x;

    invoke-direct {v1, v0, p2}, Lq1/x;-><init>(Lq1/c;LQ1/l;)V

    invoke-virtual {p1}, LX0/f;->M()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, LA1/Z;

    invoke-virtual {p1, v1}, LA1/Z;->M1(LA1/P;)V

    return-void
.end method
