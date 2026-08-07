.class public LR5/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX7/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LR5/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LR5/a;


# direct methods
.method public constructor <init>(LR5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LR5/a$a;->a:LR5/a;

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

    iget-object p3, p0, LR5/a$a;->a:LR5/a;

    invoke-static {p3}, LR5/a;->F(LR5/a;)I

    move-result p3

    invoke-static {p2, p3, p1}, Lod/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    return-void
.end method
