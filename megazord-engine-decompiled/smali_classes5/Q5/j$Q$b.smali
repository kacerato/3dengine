.class public LQ5/j$Q$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LQ5/j$Q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LQ5/j$Q;


# direct methods
.method public constructor <init>(LQ5/j$Q;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LQ5/j$Q$b;->a:LQ5/j$Q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, LQ5/j$Q$b;->a:LQ5/j$Q;

    iget-object v0, p1, LQ5/j$Q;->b:Landroid/app/Activity;

    iget-object p1, p1, LQ5/j$Q;->c:Ljava/lang/String;

    new-instance v1, LQ5/j$Q$b$a;

    invoke-direct {v1, p0}, LQ5/j$Q$b$a;-><init>(LQ5/j$Q$b;)V

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, LQ5/c;->Z(Landroid/app/Activity;Ljava/lang/String;ZLQ5/l;)V

    return-void
.end method
