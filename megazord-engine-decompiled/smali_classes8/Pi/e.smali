.class public final synthetic LPi/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:LRi/h;

.field public final synthetic c:LRi/N;


# direct methods
.method public synthetic constructor <init>(LRi/h;LRi/N;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LPi/e;->b:LRi/h;

    iput-object p2, p0, LPi/e;->c:LRi/N;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LPi/e;->b:LRi/h;

    iget-object v1, p0, LPi/e;->c:LRi/N;

    check-cast p1, LPi/d;

    invoke-static {v0, v1, p1}, LPi/f;->c(LRi/h;LRi/N;LPi/d;)V

    return-void
.end method
