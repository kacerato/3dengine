.class public final synthetic Lo3/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lo3/D;

.field public final synthetic c:LA3/b;


# direct methods
.method public synthetic constructor <init>(Lo3/D;LA3/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/q;->b:Lo3/D;

    iput-object p2, p0, Lo3/q;->c:LA3/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo3/q;->b:Lo3/D;

    iget-object v1, p0, Lo3/q;->c:LA3/b;

    invoke-static {v0, v1}, Lo3/s;->m(Lo3/D;LA3/b;)V

    return-void
.end method
