.class public LV2/p$a;
.super LV2/O;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LV2/p;->l(Ljava/lang/Object;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LV2/O<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:LV2/p;


# direct methods
.method public constructor <init>(LV2/p;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, LV2/p$a;->e:LV2/p;

    iput-object p4, p0, LV2/p$a;->d:Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, LV2/O;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public size()I
    .locals 2

    iget-object v0, p0, LV2/p$a;->e:LV2/p;

    invoke-static {v0}, LV2/p;->n(LV2/p;)Lcom/google/common/collect/V1;

    move-result-object v0

    iget-object v1, p0, LV2/p$a;->d:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/common/collect/V1;->kb(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
