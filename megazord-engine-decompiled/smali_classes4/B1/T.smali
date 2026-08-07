.class public final LB1/T;
.super LB1/Q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "LB1/Q<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final d:LB1/V;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LB1/V<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LB1/V;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LB1/V<",
            "TE;>;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, LB1/Q;-><init>(II)V

    iput-object p1, p0, LB1/T;->d:LB1/V;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, LB1/T;->d:LB1/V;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
