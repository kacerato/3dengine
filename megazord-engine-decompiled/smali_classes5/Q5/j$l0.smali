.class public LQ5/j$l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LQ5/j;->g(Landroid/app/Activity;Landroid/content/Context;LCd/b;Ljava/lang/String;LQ5/b;Ljava/lang/String;Landroid/view/View;IIZ)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:LQ5/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;LQ5/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$inProjectDirectory",
            "val$context",
            "val$callbacks"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LQ5/j$l0;->a:Ljava/lang/String;

    iput-object p2, p0, LQ5/j$l0;->b:Landroid/content/Context;

    iput-object p3, p0, LQ5/j$l0;->c:LQ5/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    new-instance p1, LQ5/j$l0$a;

    invoke-direct {p1, p0}, LQ5/j$l0$a;-><init>(LQ5/j$l0;)V

    const/4 v0, 0x1

    invoke-static {v0, p1}, LI7/a;->t1(ZLI7/a$d;)V

    return-void
.end method
