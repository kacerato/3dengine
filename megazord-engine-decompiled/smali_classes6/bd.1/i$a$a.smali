.class public Lbd/i$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbd/i$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lbd/i$a;


# direct methods
.method public constructor <init>(Lbd/i$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lbd/i$a$a;->a:Lbd/i$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resultCode",
            "intent"
        }
    .end annotation

    iget-object p1, p0, Lbd/i$a$a;->a:Lbd/i$a;

    iget-object p1, p1, Lbd/i$a;->c:Lbd/i$e;

    invoke-interface {p1}, Lbd/i$e;->onResume()V

    return-void
.end method
