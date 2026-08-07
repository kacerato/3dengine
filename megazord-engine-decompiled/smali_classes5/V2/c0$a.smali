.class public LV2/c0$a;
.super LV2/L;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LV2/c0;->l(Ljava/lang/Object;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LV2/L<",
        "TN;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:LV2/B;


# direct methods
.method public constructor <init>(LV2/c0;LV2/k;Ljava/lang/Object;LV2/B;)V
    .locals 0

    iput-object p4, p0, LV2/c0$a;->d:LV2/B;

    invoke-direct {p0, p2, p3}, LV2/L;-><init>(LV2/k;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "LV2/u<",
            "TN;>;>;"
        }
    .end annotation

    iget-object v0, p0, LV2/c0$a;->d:LV2/B;

    iget-object v1, p0, LV2/L;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, LV2/B;->f(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
