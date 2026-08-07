.class public Li8/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li8/a;->p(Ll8/a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lj8/b;

.field public final synthetic c:Li8/a;


# direct methods
.method public constructor <init>(Li8/a;Lj8/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$eElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Li8/a$a;->c:Li8/a;

    iput-object p2, p0, Li8/a$a;->b:Lj8/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object v0, p0, Li8/a$a;->b:Lj8/b;

    invoke-virtual {v0}, LX7/i;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li8/a$a;->c:Li8/a;

    invoke-static {v0}, Li8/a;->g(Li8/a;)Li8/b;

    move-result-object v0

    iget-object v1, p0, Li8/a$a;->b:Lj8/b;

    invoke-interface {v0, v1, p1}, Li8/b;->b(Lj8/b;Landroid/view/View;)V

    :cond_0
    return-void
.end method
