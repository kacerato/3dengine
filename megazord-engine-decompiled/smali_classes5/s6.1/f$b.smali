.class public Ls6/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc8/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls6/f;->B0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc8/b;

.field public final synthetic b:Ls6/f;


# direct methods
.method public constructor <init>(Ls6/f;Lc8/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$searchView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ls6/f$b;->b:Ls6/f;

    iput-object p2, p0, Ls6/f$b;->a:Lc8/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, Ls6/f$b;->a:Lc8/b;

    invoke-virtual {p1}, Lc8/b;->e()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Ls6/f$b;->b:Ls6/f;

    invoke-static {v0}, Ls6/f;->q1(Ls6/f;)Lo6/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo6/a;->t(Ljava/lang/String;)V

    iget-object p1, p0, Ls6/f$b;->b:Ls6/f;

    invoke-static {p1}, Ls6/f;->x1(Ls6/f;)V

    return-void
.end method
