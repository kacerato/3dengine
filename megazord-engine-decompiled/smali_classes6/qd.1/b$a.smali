.class public Lqd/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR7/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqd/b;->v(Landroid/app/Activity;Lqd/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:LR7/b;

.field public final synthetic c:Lqd/a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;LR7/b;Lqd/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$activity",
            "val$popupWindow",
            "val$exporterListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lqd/b$a;->a:Landroid/app/Activity;

    iput-object p2, p0, Lqd/b$a;->b:LR7/b;

    iput-object p3, p0, Lqd/b$a;->c:Lqd/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "throwable"
        }
    .end annotation

    return-void
.end method

.method public b(Landroid/view/View;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "context"
        }
    .end annotation

    new-instance p2, Lqd/b;

    iget-object v0, p0, Lqd/b$a;->a:Landroid/app/Activity;

    new-instance v1, Lqd/b$a$a;

    invoke-direct {v1, p0}, Lqd/b$a$a;-><init>(Lqd/b$a;)V

    iget-object v2, p0, Lqd/b$a;->c:Lqd/a;

    invoke-direct {p2, p1, v0, v1, v2}, Lqd/b;-><init>(Landroid/view/View;Landroid/app/Activity;Lrd/b;Lqd/a;)V

    return-void
.end method

.method public onDismiss()V
    .locals 0

    return-void
.end method
