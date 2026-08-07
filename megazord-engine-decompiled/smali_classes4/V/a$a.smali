.class public final LV/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LV/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LV/f<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final a:LV/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LV/f<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:LV/a;


# direct methods
.method public constructor <init>(LV/a;LV/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LV/f<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LV/a$a;->b:LV/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LV/a$a;->a:LV/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;LV/f$a;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "LV/f$a;",
            ")Z"
        }
    .end annotation

    invoke-interface {p2}, LV/f$a;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, LV/a$a;->b:LV/a;

    invoke-virtual {v2, p1}, LV/a;->b(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, LV/a$a;->a:LV/f;

    invoke-interface {p1, v1, p2}, LV/f;->a(Ljava/lang/Object;LV/f$a;)Z

    move-result p1

    return p1
.end method
