.class public Lz7/d$c$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz7/d$c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz7/d$c$a;


# direct methods
.method public constructor <init>(Lz7/d$c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lz7/d$c$a$b;->a:Lz7/d$c$a;

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

    iget-object p1, p0, Lz7/d$c$a$b;->a:Lz7/d$c$a;

    iget-object p1, p1, Lz7/d$c$a;->b:Lz7/d$c;

    iget-object p1, p1, Lz7/d$c;->b:Lz7/d;

    invoke-static {p1}, Lz7/d;->a(Lz7/d;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz7/b;

    invoke-virtual {v0}, Lz7/b;->F()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lz7/d$c$a$b;->a:Lz7/d$c$a;

    iget-object v1, v1, Lz7/d$c$a;->b:Lz7/d$c;

    iget-object v1, v1, Lz7/d$c;->b:Lz7/d;

    invoke-static {v1}, Lz7/d;->b(Lz7/d;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lz7/d;->t(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
