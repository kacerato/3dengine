.class public final synthetic LMb/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LMb/n;


# direct methods
.method public synthetic constructor <init>(LMb/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LMb/m;->b:LMb/n;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LMb/m;->b:LMb/n;

    invoke-virtual {v0}, LMb/p;->d0()V

    return-void
.end method
