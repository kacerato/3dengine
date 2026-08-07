.class public final synthetic Lyd/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lyd/d;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lyd/d;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyd/c;->b:Lyd/d;

    iput-boolean p2, p0, Lyd/c;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lyd/c;->b:Lyd/d;

    iget-boolean v1, p0, Lyd/c;->c:Z

    invoke-static {v0, v1}, Lyd/d;->a(Lyd/d;Z)V

    return-void
.end method
