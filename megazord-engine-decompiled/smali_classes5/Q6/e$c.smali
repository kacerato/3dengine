.class public LQ6/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ6/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LQ6/e;->v1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LQ6/e;


# direct methods
.method public constructor <init>(LQ6/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LQ6/e$c;->a:LQ6/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LQ6/e$c;->a:LQ6/e;

    invoke-static {v0}, LQ6/e;->p1(LQ6/e;)V

    return-void
.end method

.method public b(LQ6/c$l;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getState()LQ6/c$l;
    .locals 1

    sget-object v0, LQ6/c$l;->Welcome:LQ6/c$l;

    return-object v0
.end method
