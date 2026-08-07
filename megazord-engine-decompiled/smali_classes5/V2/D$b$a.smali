.class public LV2/D$b$a;
.super LV2/L;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LV2/D$b;->l(Ljava/lang/Object;)Ljava/util/Set;
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
.field public final synthetic d:LV2/D$b;


# direct methods
.method public constructor <init>(LV2/D$b;LV2/k;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, LV2/D$b$a;->d:LV2/D$b;

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

    iget-object v0, p0, LV2/D$b$a;->d:LV2/D$b;

    invoke-virtual {v0}, LV2/D$b;->S()LV2/z;

    move-result-object v0

    iget-object v1, p0, LV2/L;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, LV2/z;->l(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, LV2/D$b$a$a;

    invoke-direct {v1, p0}, LV2/D$b$a$a;-><init>(LV2/D$b$a;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/E1;->c0(Ljava/util/Iterator;LR2/t;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
