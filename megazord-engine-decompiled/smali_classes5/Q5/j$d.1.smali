.class public LQ5/j$d;
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
.field public final synthetic a:LCd/b;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(LCd/b;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$o",
            "val$inProjectDirectory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LQ5/j$d;->a:LCd/b;

    iput-object p2, p0, LQ5/j$d;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, LQ5/j$d;->a:LCd/b;

    iget-object p1, p1, LCd/b;->c:LCd/b$a;

    sget-object v0, LCd/b$a;->Object:LCd/b$a;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, LQ5/j$d;->b:Ljava/lang/String;

    new-instance v0, LQ5/j$d$a;

    invoke-direct {v0, p0}, LQ5/j$d$a;-><init>(LQ5/j$d;)V

    invoke-static {p1, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/World/b;->i(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/World/b$g;)V

    goto :goto_0

    :cond_0
    sget-object v0, LCd/b$a;->Mesh:LCd/b$a;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, LQ5/j$d;->b:Ljava/lang/String;

    invoke-static {p1, v1}, Lmd/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, LQ5/j$d;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lec/k;->q(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, LCd/b$a;->Sound:LCd/b$a;

    if-eq p1, v0, :cond_2

    sget-object v0, LCd/b$a;->ImportedAudio:LCd/b$a;

    if-ne p1, v0, :cond_3

    :cond_2
    new-instance p1, LQ5/j$d$b;

    invoke-direct {p1, p0}, LQ5/j$d$b;-><init>(LQ5/j$d;)V

    invoke-static {p1}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method
