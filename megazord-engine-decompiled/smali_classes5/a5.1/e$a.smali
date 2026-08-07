.class public La5/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW5/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La5/e;->v1(Ljava/util/List;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Landroid/widget/LinearLayout;

.field public final synthetic c:La5/e;


# direct methods
.method public constructor <init>(La5/e;Ljava/util/List;Landroid/widget/LinearLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$entries",
            "val$content"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, La5/e$a;->c:La5/e;

    iput-object p2, p0, La5/e$a;->a:Ljava/util/List;

    iput-object p3, p0, La5/e$a;->b:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refresh(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object p1, p0, La5/e$a;->c:La5/e;

    iget-object v0, p0, La5/e$a;->a:Ljava/util/List;

    iget-object v1, p0, La5/e$a;->b:Landroid/widget/LinearLayout;

    invoke-static {p1, v0, v1}, La5/e;->o1(La5/e;Ljava/util/List;Landroid/widget/LinearLayout;)V

    iget-object p1, p0, La5/e$a;->c:La5/e;

    invoke-static {p1}, La5/e;->p1(La5/e;)La5/f;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, La5/e$a;->c:La5/e;

    invoke-static {p1}, La5/e;->p1(La5/e;)La5/f;

    move-result-object p1

    iget-object v0, p0, La5/e$a;->c:La5/e;

    invoke-interface {p1, v0}, La5/f;->e(La5/e;)V

    :cond_0
    return-void
.end method
