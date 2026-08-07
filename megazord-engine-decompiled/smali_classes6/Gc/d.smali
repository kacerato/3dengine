.class public final synthetic LGc/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LGc/h;


# direct methods
.method public synthetic constructor <init>(LGc/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LGc/d;->b:LGc/h;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LGc/d;->b:LGc/h;

    invoke-static {v0}, LGc/h;->h(LGc/h;)V

    return-void
.end method
