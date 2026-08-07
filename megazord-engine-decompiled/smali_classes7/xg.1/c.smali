.class public final synthetic Lxg/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwg/m0;


# instance fields
.field public final synthetic b:Lxg/d;

.field public final synthetic c:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lxg/d;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxg/c;->b:Lxg/d;

    iput-object p2, p0, Lxg/c;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    iget-object v0, p0, Lxg/c;->b:Lxg/d;

    iget-object v1, p0, Lxg/c;->c:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lxg/d;->A(Lxg/d;Ljava/lang/Runnable;)V

    return-void
.end method
