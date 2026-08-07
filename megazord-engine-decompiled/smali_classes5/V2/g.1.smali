.class public abstract LV2/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LV2/t;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Z

.field public b:Z

.field public c:LV2/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LV2/s<",
            "TN;>;"
        }
    .end annotation
.end field

.field public d:LV2/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LV2/s<",
            "TN;>;"
        }
    .end annotation
.end field

.field public e:LR2/C;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LR2/C<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LV2/g;->b:Z

    invoke-static {}, LV2/s;->d()LV2/s;

    move-result-object v0

    iput-object v0, p0, LV2/g;->c:LV2/s;

    invoke-static {}, LV2/s;->i()LV2/s;

    move-result-object v0

    iput-object v0, p0, LV2/g;->d:LV2/s;

    invoke-static {}, LR2/C;->a()LR2/C;

    move-result-object v0

    iput-object v0, p0, LV2/g;->e:LR2/C;

    iput-boolean p1, p0, LV2/g;->a:Z

    return-void
.end method
