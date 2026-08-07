.class public LQ6/c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ6/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LQ6/c;->u1(LQ6/c$l;LX6/d;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LQ6/c$l;

.field public final synthetic b:LQ6/c;


# direct methods
.method public constructor <init>(LQ6/c;LQ6/c$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$state"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LQ6/c$e;->b:LQ6/c;

    iput-object p2, p0, LQ6/c$e;->a:LQ6/c$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, LQ6/c$e;->b:LQ6/c;

    iget-object v1, p0, LQ6/c$e;->a:LQ6/c$l;

    invoke-static {v0, v1}, LQ6/c;->o1(LQ6/c;LQ6/c$l;)Landroid/view/View;

    return-void
.end method

.method public b(LQ6/c$l;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    iget-object v0, p0, LQ6/c$e;->b:LQ6/c;

    invoke-static {v0, p1}, LQ6/c;->o1(LQ6/c;LQ6/c$l;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getState()LQ6/c$l;
    .locals 1

    iget-object v0, p0, LQ6/c$e;->a:LQ6/c$l;

    return-object v0
.end method
