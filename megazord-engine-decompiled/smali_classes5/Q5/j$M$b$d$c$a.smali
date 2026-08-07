.class public LQ5/j$M$b$d$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LQ5/j$M$b$d$c;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LQ5/j$M$b$d$c;


# direct methods
.method public constructor <init>(LQ5/j$M$b$d$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$3"
        }
    .end annotation

    iput-object p1, p0, LQ5/j$M$b$d$c$a;->a:LQ5/j$M$b$d$c;

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

    iget-object p1, p0, LQ5/j$M$b$d$c$a;->a:LQ5/j$M$b$d$c;

    iget-object p1, p1, LQ5/j$M$b$d$c;->a:LQ5/j$M$b$d;

    iget-object p1, p1, LQ5/j$M$b$d;->b:LQ5/j$M$b;

    iget-object p1, p1, LQ5/j$M$b;->b:LQ5/j$M;

    iget-object p1, p1, LQ5/j$M;->d:LQ5/b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, LQ5/b;->a()V

    :cond_0
    return-void
.end method
