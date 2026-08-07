.class public LFc/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(ZIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "enableAnimation",
            "idsAttribute",
            "weigthsAttribute",
            "texturesCount"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, LFc/i;->a:Z

    iput p2, p0, LFc/i;->b:I

    iput p3, p0, LFc/i;->c:I

    iput p4, p0, LFc/i;->d:I

    return-void
.end method
