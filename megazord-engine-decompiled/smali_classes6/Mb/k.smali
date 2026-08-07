.class public final synthetic LMb/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LMb/l;


# direct methods
.method public synthetic constructor <init>(LMb/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LMb/k;->b:LMb/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LMb/k;->b:LMb/l;

    invoke-virtual {v0}, LMb/p;->d0()V

    return-void
.end method
