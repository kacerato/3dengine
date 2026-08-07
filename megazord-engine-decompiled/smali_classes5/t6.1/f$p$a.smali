.class public Lt6/f$p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX7/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt6/f$p;->e(Ljava/io/File;Ljava/lang/String;Z)LX7/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lt6/f$p;


# direct methods
.method public constructor <init>(Lt6/f$p;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$finalUrl"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lt6/f$p$a;->b:Lt6/f$p;

    iput-object p2, p0, Lt6/f$p$a;->a:Ljava/lang/String;

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

    iget-object p3, p0, Lt6/f$p$a;->a:Ljava/lang/String;

    const p4, 0x7f0701cc

    invoke-static {p2, p3, p4, p4, p1}, Lod/e;->a0(Landroid/widget/ImageView;Ljava/lang/String;IILandroid/content/Context;)V

    return-void
.end method
