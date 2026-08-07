.class public Lv2/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv2/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv2/j;-><init>(Lv2/j$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lv2/j;


# direct methods
.method public constructor <init>(Lv2/j;)V
    .locals 0

    iput-object p1, p0, Lv2/j$a;->a:Lv2/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lv2/q;Landroid/graphics/Matrix;I)V
    .locals 2
    .param p1    # Lv2/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lv2/j$a;->a:Lv2/j;

    invoke-static {v0}, Lv2/j;->b(Lv2/j;)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {p1}, Lv2/q;->e()Z

    move-result v1

    invoke-virtual {v0, p3, v1}, Ljava/util/BitSet;->set(IZ)V

    iget-object v0, p0, Lv2/j$a;->a:Lv2/j;

    invoke-static {v0}, Lv2/j;->c(Lv2/j;)[Lv2/q$i;

    move-result-object v0

    invoke-virtual {p1, p2}, Lv2/q;->f(Landroid/graphics/Matrix;)Lv2/q$i;

    move-result-object p1

    aput-object p1, v0, p3

    return-void
.end method

.method public b(Lv2/q;Landroid/graphics/Matrix;I)V
    .locals 3
    .param p1    # Lv2/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lv2/j$a;->a:Lv2/j;

    invoke-static {v0}, Lv2/j;->b(Lv2/j;)Ljava/util/BitSet;

    move-result-object v0

    add-int/lit8 v1, p3, 0x4

    invoke-virtual {p1}, Lv2/q;->e()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    iget-object v0, p0, Lv2/j$a;->a:Lv2/j;

    invoke-static {v0}, Lv2/j;->d(Lv2/j;)[Lv2/q$i;

    move-result-object v0

    invoke-virtual {p1, p2}, Lv2/q;->f(Landroid/graphics/Matrix;)Lv2/q$i;

    move-result-object p1

    aput-object p1, v0, p3

    return-void
.end method
