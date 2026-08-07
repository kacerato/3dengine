.class public Lrd/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrd/c;->b(Ljava/lang/String;Landroid/app/Activity;Lrd/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lrd/g;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lrd/g;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$eventListener",
            "val$activity",
            "val$pathExample"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lrd/c$b;->a:Lrd/g;

    iput-object p2, p0, Lrd/c$b;->b:Landroid/app/Activity;

    iput-object p3, p0, Lrd/c$b;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lrd/c$b;->c:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmd/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lrd/c$b;->c:Ljava/lang/String;

    invoke-static {v0}, Lmd/b;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lrd/c$b;->c:Ljava/lang/String;

    invoke-static {v0}, Lmd/b;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public onSelected(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "absolutePath"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lrd/c$b;->a:Lrd/g;

    new-instance v1, LCd/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lo8/b;->b:Lcom/itsmagic/engine/Core/Components/ProjectController/a;

    iget-object v3, p0, Lrd/c$b;->b:Landroid/app/Activity;

    invoke-static {v3}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, LCd/b;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lrd/g;->b(LCd/b;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lrd/c$b;->a:Lrd/g;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lrd/g;->b(LCd/b;)V

    :goto_0
    return-void
.end method
