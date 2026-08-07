.class public final Lgf/S0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LXe/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/S0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LXe/g<",
        "LVe/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lgf/O1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgf/O1<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgf/O1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgf/O1<",
            "TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgf/S0$c;->b:Lgf/O1;

    return-void
.end method


# virtual methods
.method public a(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lgf/S0$c;->b:Lgf/O1;

    invoke-virtual {v0, p1}, Lgf/O1;->b(LVe/c;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, LVe/c;

    invoke-virtual {p0, p1}, Lgf/S0$c;->a(LVe/c;)V

    return-void
.end method
