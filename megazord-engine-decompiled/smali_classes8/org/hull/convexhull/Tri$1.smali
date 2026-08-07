.class Lorg/hull/convexhull/Tri$1;
.super Lorg/hull/convexhull/IntRef;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hull/convexhull/Tri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/hull/convexhull/IntRef;-><init>()V

    return-void
.end method


# virtual methods
.method public get()I
    .locals 1

    invoke-static {}, Lorg/hull/convexhull/Tri;->access$000()I

    move-result v0

    return v0
.end method

.method public set(I)V
    .locals 0

    invoke-static {p1}, Lorg/hull/convexhull/Tri;->access$002(I)I

    return-void
.end method
