.class public Lcom/google/android/filament/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation
.end field

.field public d:I
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/filament/v;->a:I

    iput p2, p0, Lcom/google/android/filament/v;->b:I

    iput p3, p0, Lcom/google/android/filament/v;->c:I

    iput p4, p0, Lcom/google/android/filament/v;->d:I

    return-void
.end method
