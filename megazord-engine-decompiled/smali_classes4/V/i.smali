.class public LV/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV/g;


# annotations
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
.field public final a:LV/j$a;

.field public b:LV/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LV/j<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LV/j$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LV/i;->a:LV/j$a;

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
    iget-object p1, p0, LV/i;->b:LV/j;

    if-nez p1, :cond_1

    new-instance p1, LV/j;

    iget-object p2, p0, LV/i;->a:LV/j$a;

    invoke-direct {p1, p2}, LV/j;-><init>(LV/j$a;)V

    iput-object p1, p0, LV/i;->b:LV/j;

    :cond_1
    iget-object p1, p0, LV/i;->b:LV/j;

    return-object p1

    :cond_2
    :goto_0
    invoke-static {}, LV/e;->b()LV/f;

    move-result-object p1

    return-object p1
.end method
