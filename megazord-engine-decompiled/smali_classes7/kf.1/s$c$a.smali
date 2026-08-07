.class public final Lkf/s$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkf/s$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final b:Lkf/s$b;

.field public final synthetic c:Lkf/s$c;


# direct methods
.method public constructor <init>(Lkf/s$c;Lkf/s$b;)V
    .locals 0

    iput-object p1, p0, Lkf/s$c$a;->c:Lkf/s$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkf/s$c$a;->b:Lkf/s$b;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lkf/s$c$a;->b:Lkf/s$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkf/s$b;->e:Z

    iget-object v0, p0, Lkf/s$c$a;->c:Lkf/s$c;

    iget-object v0, v0, Lkf/s$c;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v1, p0, Lkf/s$c$a;->b:Lkf/s$b;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    return-void
.end method
