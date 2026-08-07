.class public final synthetic Lag/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/q;


# instance fields
.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lag/u;->b:Z

    return-void
.end method


# virtual methods
.method public final E(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lag/u;->b:Z

    check-cast p1, Lag/a;

    check-cast p2, Ljava/nio/file/Path;

    check-cast p3, Ljava/nio/file/Path;

    invoke-static {v0, p1, p2, p3}, Lag/z;->H(ZLag/a;Ljava/nio/file/Path;Ljava/nio/file/Path;)Lag/b;

    move-result-object p1

    return-object p1
.end method
