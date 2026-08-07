.class public final synthetic Lxg/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic a:Lwg/p;


# direct methods
.method public synthetic constructor <init>(Lwg/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxg/f;->a:Lwg/p;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 1

    iget-object v0, p0, Lxg/f;->a:Lwg/p;

    invoke-static {v0, p1, p2}, Lxg/g;->a(Lwg/p;J)V

    return-void
.end method
