.class public final Ldf/t0$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LXe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LXe/c<",
        "TS;",
        "LTe/k<",
        "TT;>;TS;>;"
    }
.end annotation


# instance fields
.field public final b:LXe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/g<",
            "LTe/k<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LXe/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/g<",
            "LTe/k<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldf/t0$k;->b:LXe/g;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;LTe/k;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "LTe/k<",
            "TT;>;)TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Ldf/t0$k;->b:LXe/g;

    invoke-interface {v0, p2}, LXe/g;->accept(Ljava/lang/Object;)V

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p2, LTe/k;

    invoke-virtual {p0, p1, p2}, Ldf/t0$k;->a(Ljava/lang/Object;LTe/k;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
