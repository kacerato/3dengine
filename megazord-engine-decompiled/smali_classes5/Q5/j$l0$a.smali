.class public LQ5/j$l0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI7/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LQ5/j$l0;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LQ5/j$l0;


# direct methods
.method public constructor <init>(LQ5/j$l0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LQ5/j$l0$a;->a:LQ5/j$l0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LI7/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadingBarPanel"
        }
    .end annotation

    new-instance v0, LQ5/j$l0$a$a;

    invoke-direct {v0, p0, p1}, LQ5/j$l0$a$a;-><init>(LQ5/j$l0$a;LI7/a;)V

    invoke-static {v0}, Lga/b;->d(Ljava/lang/Runnable;)V

    return-void
.end method
