.class public final synthetic Lo3/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/util/Map$Entry;

.field public final synthetic c:Lx3/a;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map$Entry;Lx3/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/w;->b:Ljava/util/Map$Entry;

    iput-object p2, p0, Lo3/w;->c:Lx3/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo3/w;->b:Ljava/util/Map$Entry;

    iget-object v1, p0, Lo3/w;->c:Lx3/a;

    invoke-static {v0, v1}, Lo3/x;->e(Ljava/util/Map$Entry;Lx3/a;)V

    return-void
.end method
