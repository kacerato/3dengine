.class public LV2/e0$a;
.super LV2/e0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LV2/e0;->g(LV2/d0;)LV2/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LV2/e0<",
        "TN;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:LV2/d0;


# direct methods
.method public constructor <init>(LV2/d0;LV2/d0;)V
    .locals 0

    iput-object p2, p0, LV2/e0$a;->b:LV2/d0;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, LV2/e0;-><init>(LV2/d0;LV2/e0$a;)V

    return-void
.end method


# virtual methods
.method public i()LV2/e0$g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LV2/e0$g<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, LV2/e0$a;->b:LV2/d0;

    invoke-static {v0}, LV2/e0$g;->b(LV2/d0;)LV2/e0$g;

    move-result-object v0

    return-object v0
.end method
