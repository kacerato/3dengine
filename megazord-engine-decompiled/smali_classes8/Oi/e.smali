.class public final synthetic LOi/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:LEi/v;


# direct methods
.method public synthetic constructor <init>(LEi/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOi/e;->b:LEi/v;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOi/e;->b:LEi/v;

    check-cast p1, LOi/u;

    invoke-static {v0, p1}, LOi/r;->g(LEi/v;LOi/u;)V

    return-void
.end method
