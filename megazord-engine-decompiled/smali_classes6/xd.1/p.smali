.class public final synthetic Lxd/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxd/s$a;


# instance fields
.field public final synthetic a:LAd/b;


# direct methods
.method public synthetic constructor <init>(LAd/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxd/p;->a:LAd/b;

    return-void
.end method


# virtual methods
.method public final a(JJD)V
    .locals 7

    iget-object v0, p0, Lxd/p;->a:LAd/b;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, Lxd/r;->b(LAd/b;JJD)V

    return-void
.end method
