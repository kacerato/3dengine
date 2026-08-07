.class public final synthetic LX9/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic b:LX9/d$d;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;LX9/d$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX9/e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, LX9/e;->b:LX9/d$d;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 2

    iget-object v0, p0, LX9/e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, LX9/e;->b:LX9/d$d;

    invoke-static {v0, v1, p1}, LX9/d$b;->a(Ljava/util/concurrent/atomic/AtomicBoolean;LX9/d$d;I)V

    return-void
.end method
