.class public final synthetic Lqh/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lqh/v;

.field public final synthetic c:Lth/b;


# direct methods
.method public synthetic constructor <init>(Lqh/v;Lth/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqh/s;->b:Lqh/v;

    iput-object p2, p0, Lqh/s;->c:Lth/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lqh/s;->b:Lqh/v;

    iget-object v1, p0, Lqh/s;->c:Lth/b;

    invoke-static {v0, v1}, Lqh/v;->h0(Lqh/v;Lth/b;)V

    return-void
.end method
