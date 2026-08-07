.class public LQ5/j$M$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LQ5/j$M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LQ5/j$M;


# direct methods
.method public constructor <init>(LQ5/j$M;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LQ5/j$M$k;->a:LQ5/j$M;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, LQ5/j$M$k;->a:LQ5/j$M;

    iget-object v0, p1, LQ5/j$M;->b:Landroid/content/Context;

    iget-object p1, p1, LQ5/j$M;->c:Ljava/lang/String;

    new-instance v1, LQ5/j$M$k$a;

    invoke-direct {v1, p0}, LQ5/j$M$k$a;-><init>(LQ5/j$M$k;)V

    invoke-static {v0, p1, v1}, LQ5/c;->d(Landroid/content/Context;Ljava/lang/String;LQ5/l;)V

    return-void
.end method
