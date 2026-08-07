.class public final synthetic LOi/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LOi/r;

.field public final synthetic c:LOi/u;


# direct methods
.method public synthetic constructor <init>(LOi/r;LOi/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOi/d;->b:LOi/r;

    iput-object p2, p0, LOi/d;->c:LOi/u;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOi/d;->b:LOi/r;

    iget-object v1, p0, LOi/d;->c:LOi/u;

    invoke-static {v0, v1}, LOi/r;->b(LOi/r;LOi/u;)V

    return-void
.end method
