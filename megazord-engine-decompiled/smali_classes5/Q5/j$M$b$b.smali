.class public LQ5/j$M$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LQ5/j$M$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LQ5/j$M$b;


# direct methods
.method public constructor <init>(LQ5/j$M$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LQ5/j$M$b$b;->a:LQ5/j$M$b;

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
            "v"
        }
    .end annotation

    iget-object p1, p0, LQ5/j$M$b$b;->a:LQ5/j$M$b;

    iget-object p1, p1, LQ5/j$M$b;->b:LQ5/j$M;

    iget-object v0, p1, LQ5/j$M;->b:Landroid/content/Context;

    iget-object p1, p1, LQ5/j$M;->c:Ljava/lang/String;

    new-instance v1, LQ5/j$M$b$b$a;

    invoke-direct {v1, p0}, LQ5/j$M$b$b$a;-><init>(LQ5/j$M$b$b;)V

    invoke-static {v0, p1, v1}, LQ5/c;->Q(Landroid/content/Context;Ljava/lang/String;LQ5/l;)V

    return-void
.end method
