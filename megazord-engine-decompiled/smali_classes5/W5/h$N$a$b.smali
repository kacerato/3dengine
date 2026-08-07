.class public LW5/h$N$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LW5/h$N$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LW5/h$N$a;


# direct methods
.method public constructor <init>(LW5/h$N$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LW5/h$N$a$b;->a:LW5/h$N$a;

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

    iget-object p1, p0, LW5/h$N$a$b;->a:LW5/h$N$a;

    iget-object p1, p1, LW5/h$N$a;->b:LW5/h$N;

    iget-object v0, p1, LW5/h$N;->b:LW5/b;

    iget-object v1, p1, LW5/h$N;->c:Landroid/content/Context;

    iget-object p1, p1, LW5/h$N;->d:Landroid/widget/ImageView;

    invoke-static {v0, v1, p1}, LW5/h;->h(LW5/b;Landroid/content/Context;Landroid/widget/ImageView;)V

    return-void
.end method
