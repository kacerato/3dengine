.class public LQ5/j$M$d$a$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LQ5/j$M$d$a$d;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LQ5/j$M$d$a$d;


# direct methods
.method public constructor <init>(LQ5/j$M$d$a$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$3"
        }
    .end annotation

    iput-object p1, p0, LQ5/j$M$d$a$d$a;->a:LQ5/j$M$d$a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inProjectPath"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->c()V

    iget-object p1, p0, LQ5/j$M$d$a$d$a;->a:LQ5/j$M$d$a$d;

    iget-object p1, p1, LQ5/j$M$d$a$d;->a:LQ5/j$M$d$a;

    iget-object p1, p1, LQ5/j$M$d$a;->b:LQ5/j$M$d;

    iget-object p1, p1, LQ5/j$M$d;->b:LQ5/j$M;

    iget-object p1, p1, LQ5/j$M;->d:LQ5/b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, LQ5/b;->a()V

    :cond_0
    invoke-static {}, Lv8/j;->v0()V

    return-void
.end method
