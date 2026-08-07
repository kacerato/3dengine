.class public final synthetic Lz7/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lbd/a;


# direct methods
.method public synthetic constructor <init>(Lbd/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz7/c;->b:Lbd/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lz7/c;->b:Lbd/a;

    invoke-virtual {v0}, Lbd/a;->e()V

    return-void
.end method
