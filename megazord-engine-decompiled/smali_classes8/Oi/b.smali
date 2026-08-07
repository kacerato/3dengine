.class public final synthetic LOi/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:LOi/r;


# direct methods
.method public synthetic constructor <init>(LOi/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOi/b;->b:LOi/r;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOi/b;->b:LOi/r;

    check-cast p1, LOi/x;

    invoke-static {v0, p1}, LOi/r;->m(LOi/r;LOi/x;)V

    return-void
.end method
