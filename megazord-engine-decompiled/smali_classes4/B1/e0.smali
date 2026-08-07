.class public final LB1/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB1/I;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LB1/I<",
        "LB1/n;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:LB1/f0;


# direct methods
.method public constructor <init>(LB1/f0;)V
    .locals 0

    iput-object p1, p0, LB1/e0;->a:LB1/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()LB1/n;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    iget-object v0, p0, LB1/e0;->a:LB1/f0;

    invoke-virtual {v0}, LX0/f;->M()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, LB1/n;

    return-object v0
.end method
