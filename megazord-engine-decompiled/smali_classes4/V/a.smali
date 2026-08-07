.class public abstract LV/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LV/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LV/g<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final a:LV/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LV/g<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LV/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LV/g<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LV/a;->a:LV/g;

    return-void
.end method


# virtual methods
.method public a(LB/a;Z)LV/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LB/a;",
            "Z)",
            "LV/f<",
            "TR;>;"
        }
    .end annotation

    iget-object v0, p0, LV/a;->a:LV/g;

    invoke-interface {v0, p1, p2}, LV/g;->a(LB/a;Z)LV/f;

    move-result-object p1

    new-instance p2, LV/a$a;

    invoke-direct {p2, p0, p1}, LV/a$a;-><init>(LV/a;LV/f;)V

    return-object p2
.end method

.method public abstract b(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation
.end method
