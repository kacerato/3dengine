.class public final synthetic Lqc/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# instance fields
.field public final synthetic b:LMb/g;


# direct methods
.method public synthetic constructor <init>(LMb/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqc/q;->b:LMb/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lqc/q;->b:LMb/g;

    invoke-virtual {v0}, LMb/g;->P0()V

    return-void
.end method
