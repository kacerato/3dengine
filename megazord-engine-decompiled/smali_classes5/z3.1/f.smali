.class public final synthetic Lz3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lz3/g;


# direct methods
.method public synthetic constructor <init>(Lz3/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz3/f;->b:Lz3/g;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lz3/f;->b:Lz3/g;

    invoke-static {v0}, Lz3/g;->f(Lz3/g;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
