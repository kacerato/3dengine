.class public final Lsf/c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsf/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final b:Lsf/c$b;

.field public final synthetic c:Lsf/c$a;


# direct methods
.method public constructor <init>(Lsf/c$a;Lsf/c$b;)V
    .locals 0

    iput-object p1, p0, Lsf/c$a$a;->c:Lsf/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lsf/c$a$a;->b:Lsf/c$b;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lsf/c$a$a;->c:Lsf/c$a;

    iget-object v0, v0, Lsf/c$a;->c:Lsf/c;

    iget-object v0, v0, Lsf/c;->c:Ljava/util/Queue;

    iget-object v1, p0, Lsf/c$a$a;->b:Lsf/c$b;

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method
