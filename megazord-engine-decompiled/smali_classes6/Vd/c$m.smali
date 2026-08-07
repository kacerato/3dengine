.class public final LVd/c$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LVd/c;->sendYouTubeIFrameAPIReady()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:LVd/c;


# direct methods
.method public constructor <init>(LVd/c;)V
    .locals 0

    iput-object p1, p0, LVd/c$m;->b:LVd/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LVd/c$m;->b:LVd/c;

    invoke-static {v0}, LVd/c;->a(LVd/c;)LVd/c$b;

    move-result-object v0

    invoke-interface {v0}, LVd/c$b;->b()V

    return-void
.end method
