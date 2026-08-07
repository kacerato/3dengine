.class public final synthetic LMb/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LMb/i;


# direct methods
.method public synthetic constructor <init>(LMb/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LMb/h;->b:LMb/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LMb/h;->b:LMb/i;

    invoke-virtual {v0}, LMb/p;->d0()V

    return-void
.end method
