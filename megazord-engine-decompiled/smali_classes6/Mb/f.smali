.class public final synthetic LMb/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LMb/g;


# direct methods
.method public synthetic constructor <init>(LMb/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LMb/f;->b:LMb/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LMb/f;->b:LMb/g;

    invoke-virtual {v0}, LMb/p;->d0()V

    return-void
.end method
