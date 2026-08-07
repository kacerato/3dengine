.class public LV/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LV/h$b;,
        LV/h$a;
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
.field public final a:LV/k$a;

.field public b:LV/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LV/f<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 2
    new-instance v0, LV/h$b;

    invoke-direct {v0, p1}, LV/h$b;-><init>(I)V

    invoke-direct {p0, v0}, LV/h;-><init>(LV/k$a;)V

    return-void
.end method

.method public constructor <init>(LV/k$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, LV/h;->a:LV/k$a;

    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    new-instance v0, LV/h$a;

    invoke-direct {v0, p1}, LV/h$a;-><init>(Landroid/view/animation/Animation;)V

    invoke-direct {p0, v0}, LV/h;-><init>(LV/k$a;)V

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

    sget-object v0, LB/a;->MEMORY_CACHE:LB/a;

    if-eq p1, v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, LV/h;->b:LV/f;

    if-nez p1, :cond_1

    new-instance p1, LV/k;

    iget-object p2, p0, LV/h;->a:LV/k$a;

    invoke-direct {p1, p2}, LV/k;-><init>(LV/k$a;)V

    iput-object p1, p0, LV/h;->b:LV/f;

    :cond_1
    iget-object p1, p0, LV/h;->b:LV/f;

    return-object p1

    :cond_2
    :goto_0
    invoke-static {}, LV/e;->b()LV/f;

    move-result-object p1

    return-object p1
.end method
