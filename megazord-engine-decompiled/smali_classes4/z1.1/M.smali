.class public final synthetic Lz1/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lz1/O;


# direct methods
.method public synthetic constructor <init>(Lz1/O;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/M;->b:Lz1/O;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lz1/M;->b:Lz1/O;

    invoke-virtual {v0}, Lz1/O;->b()V

    return-void
.end method
