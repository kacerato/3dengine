.class public Lxd/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LAd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxd/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLandroid/content/Context;Lxd/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lxd/b;


# direct methods
.method public constructor <init>(Lxd/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$fastPostListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lxd/a$a;->a:Lxd/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget-object v0, p0, Lxd/a$a;->a:Lxd/b;

    invoke-interface {v0, p1}, Lxd/b;->onFinish(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget-object v0, p0, Lxd/a$a;->a:Lxd/b;

    invoke-interface {v0, p1}, Lxd/b;->onFinish(Ljava/lang/String;)V

    return-void
.end method
