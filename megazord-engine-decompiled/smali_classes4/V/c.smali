.class public LV/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LV/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LV/g<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Z

.field public c:LV/d;


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LV/c;->a:I

    iput-boolean p2, p0, LV/c;->b:Z

    return-void
.end method


# virtual methods
.method public a(LB/a;Z)LV/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LB/a;",
            "Z)",
            "LV/f<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    sget-object p2, LB/a;->MEMORY_CACHE:LB/a;

    if-ne p1, p2, :cond_0

    invoke-static {}, LV/e;->b()LV/f;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LV/c;->b()LV/f;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final b()LV/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LV/f<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LV/c;->c:LV/d;

    if-nez v0, :cond_0

    new-instance v0, LV/d;

    iget v1, p0, LV/c;->a:I

    iget-boolean v2, p0, LV/c;->b:Z

    invoke-direct {v0, v1, v2}, LV/d;-><init>(IZ)V

    iput-object v0, p0, LV/c;->c:LV/d;

    :cond_0
    iget-object v0, p0, LV/c;->c:LV/d;

    return-object v0
.end method
