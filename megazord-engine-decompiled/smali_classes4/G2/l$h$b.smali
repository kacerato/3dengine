.class public LG2/l$h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG2/v$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LG2/l$h;->k(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LG2/l$h;


# direct methods
.method public constructor <init>(LG2/l$h;)V
    .locals 0

    iput-object p1, p0, LG2/l$h$b;->a:LG2/l$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, LG2/l$h$b;->a:LG2/l$h;

    invoke-static {v0}, LG2/l$h;->c(LG2/l$h;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
