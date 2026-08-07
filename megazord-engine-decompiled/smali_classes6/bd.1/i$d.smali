.class public Lbd/i$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbd/i;->i(Ljava/io/File;Ljava/lang/String;Lbd/i$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lbd/i$e;


# direct methods
.method public constructor <init>(Lbd/i$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$resumeCallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lbd/i$d;->a:Lbd/i$e;

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

    iget-object p1, p0, Lbd/i$d;->a:Lbd/i$e;

    invoke-interface {p1}, Lbd/i$e;->onResume()V

    return-void
.end method
