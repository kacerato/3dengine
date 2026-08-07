.class public final Lp/b$d;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public final synthetic b:Lp/b;


# direct methods
.method public constructor <init>(Lp/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp/b$d;->b:Lp/b;

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lp/b;Lp/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lp/b$d;-><init>(Lp/b;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lp/b$d;->b:Lp/b;

    invoke-static {p1}, Lp/b;->c(Lp/b;)I

    move-result p1

    return p1
.end method
