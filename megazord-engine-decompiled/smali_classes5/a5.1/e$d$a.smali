.class public La5/e$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La5/e$d;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:La5/e$d;


# direct methods
.method public constructor <init>(La5/e$d;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$v"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, La5/e$d$a;->c:La5/e$d;

    iput-object p2, p0, La5/e$d$a;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, La5/e$d$a;->c:La5/e$d;

    iget-object v0, v0, La5/e$d;->b:La5/e;

    invoke-static {v0}, La5/e;->p1(La5/e;)La5/f;

    move-result-object v0

    iget-object v1, p0, La5/e$d$a;->b:Landroid/view/View;

    iget-object v2, p0, La5/e$d$a;->c:La5/e$d;

    iget-object v2, v2, La5/e$d;->b:La5/e;

    invoke-interface {v0, v1, v2}, La5/f;->c(Landroid/view/View;La5/e;)V

    return-void
.end method
