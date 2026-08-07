.class public final synthetic LIi/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:LIi/l;


# direct methods
.method public synthetic constructor <init>(LIi/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LIi/k;->b:LIi/l;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LIi/k;->b:LIi/l;

    check-cast p1, LRi/p$b;

    invoke-static {v0, p1}, LIi/l;->a(LIi/l;LRi/p$b;)[LIi/c;

    move-result-object p1

    return-object p1
.end method
