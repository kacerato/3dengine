.class public LW5/h$M$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LW5/h$M$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LW5/h$M$a;


# direct methods
.method public constructor <init>(LW5/h$M$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LW5/h$M$a$b;->a:LW5/h$M$a;

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

    iget-object p1, p0, LW5/h$M$a$b;->a:LW5/h$M$a;

    iget-object p1, p1, LW5/h$M$a;->b:LW5/h$M;

    iget-object p1, p1, LW5/h$M;->d:Landroid/widget/ImageView;

    sget-object v0, LL4/a$e;->Left:LL4/a$e;

    new-instance v1, LW5/h$M$a$b$a;

    invoke-direct {v1, p0}, LW5/h$M$a$b$a;-><init>(LW5/h$M$a$b;)V

    invoke-static {p1, v0, v1}, Lg4/a;->F1(Landroid/view/View;LL4/a$e;Lg4/e;)V

    return-void
.end method
