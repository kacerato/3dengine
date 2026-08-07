.class public Lm8/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX7/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/ImageView;LX7/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "imageView",
            "subIconImageView",
            "eElement"
        }
    .end annotation

    const p3, 0x7f07024d

    invoke-static {p2, p3, p1}, Lod/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    return-void
.end method
