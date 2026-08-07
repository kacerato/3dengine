.class public final synthetic LQ5/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LI7/a;


# direct methods
.method public synthetic constructor <init>(LI7/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQ5/e;->b:LI7/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LQ5/e;->b:LI7/a;

    invoke-virtual {v0}, LI7/a;->o1()V

    return-void
.end method
