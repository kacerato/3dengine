.class public final Ldf/u$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LXe/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LXe/o<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ldf/u;


# direct methods
.method public constructor <init>(Ldf/u;)V
    .locals 0

    iput-object p1, p0, Ldf/u$c;->b:Ldf/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Ldf/u$c;->b:Ldf/u;

    iget-object v0, v0, Ldf/u;->e:LXe/o;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
